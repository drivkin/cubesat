/* File: getters.c
 * Author: Dmitriy Rivkin
 *
 *
 *
 *
 * Created May 8, 2014


 */

#include "xc.h"
#include "serial.h"
#include "BOARD.h"
#include "AD.h"
#include "getters.h"
#include "AHRS.h"
#include <peripheral/spi.h>
#include <peripheral/incap.h>
#include <peripheral/timer.h>

#define SPISS 0x10000000 // enable proper operation of the SS bit for reading the encoder
#define REQUEST_ANGLE 0XFFFF
#define PI 3.14159

#define WAIT_TIME 1000

// THIS FUNCTION IS BLOCKING (but not for too long)

void wait(int cycles) {
    while (cycles > 0) {
        cycles--;
    }
}

void init_all_getters(void) {
    //init_encoder();
    init_AHRS();
    printf("ahrs inited \n");
    init_battery_voltage_reader();
}

void init_AHRS(void) {
    AHRS_init();
}

float get_AHRS_angle(void) {
    return AHRS_get_yaw();
}

float get_AHRS_rate(void){
    return AHRS_get_yaw_rate();
}

void init_battery_voltage_reader(){
    AD_Init();
    AD_AddPins(BAT_VOLTAGE);
}

float get_battery_voltage(void){
    unsigned int ADC_reading = AD_ReadADPin(BAT_VOLTAGE);
    float voltage = ((float)ADC_reading)/34.5;
    return voltage;
}

#ifdef SPI_ENC

void init_encoder(void) {
    // this part sets up the SPI interface\
    // channel 2 is the one for J8 on the UNO32
    unsigned int config = SPI_CON_MODE16 | SPI_CON_MSTEN | SPI_CON_SMP;
    // the last number is the clock divider
    SpiChnOpen(SPI_CHANNEL2, config, 1024);

    // this is the slave select pin it's controlled in software you need to bring
    // it high when you're not transmitting and low 10ns before you start transmitting
    // you also need to cycle it between characters
    TRISGbits.TRISG9 = 0;
    PORTGbits.RG9 = 1;

    PORTGbits.RG9 = 0;
    wait(WAIT_TIME);
    SpiChnPutC(SPI_CHANNEL2, REQUEST_ANGLE);
    SpiChnGetC(SPI_CHANNEL2);
    PORTGbits.RG9 = 1;
    // TRISGbits.TRISG9 = 0;
    //PORTGbits.RG9 = 1;
}

int get_encoder_angle(void) {
    int angle;
    //request the next angle and read the current angle simultaneously
    PORTGbits.RG9 = 0;
    wait(WAIT_TIME);
    SpiChnPutC(SPI_CHANNEL2, REQUEST_ANGLE);
    angle = SpiChnGetC(SPI_CHANNEL2);
    PORTGbits.RG9 = 1;

    //get rid of bits 15 and 14 of angle, they're transmission details
    angle = angle & 0x00003fff;

    return angle;
}
#endif

#ifndef SPI_ENC

float initial_angle = 0;
int init_flag = 0;

void init_encoder(void) {
    //Clear interrupt flag
    mIC1ClearIntFlag();

    // Setup Timer 3 with long period, no clock scaling
    OpenTimer3(T3_ON | T3_PS_1_4, 0xffff);

    // Enable Input Capture Module 1
    // - Capture Every edge
    // - Enable capture interrupts
    // - Use Timer 3 source
    // - Capture rising edge first
    OpenCapture1(IC_EVERY_EDGE | IC_INT_1CAPTURE | IC_TIMER3_SRC | IC_FEDGE_RISE | IC_ON);

    // Wait for Capture events
    while (!mIC1CaptureReady());

    // get the initial angle against which to do the tare
    get_encoder_angle();
    initial_angle = get_encoder_angle();
}

float format(float raw) {
    raw = raw - initial_angle;
    if (raw >= 0) {
        if (raw > PI) {
            raw = raw-2*PI;
            return raw;
        }
        return raw;
    }else{
        if(raw <=-PI){
            raw=raw+2*PI;
            return raw;
        }
        return raw;
    }
}

float get_encoder_angle(void) {
    // rising and fallind edge times
    int up1, up2, d1;

    // the angle expressed by the pwm
    int angle;

    //reset timer
    WriteTimer3(0);
    //printf("timer 3: %d\n",ReadTimer3());
    //turn on input capture
    OpenCapture1(IC_EVERY_EDGE | IC_INT_1CAPTURE | IC_TIMER3_SRC | IC_FEDGE_RISE | IC_CAP_16BIT | IC_ON);

    //wait for first data to be ready
    while (!mIC1CaptureReady());
    //first rising edge
    up1 = mIC1ReadCapture();

    //wait for falling edge
    while (!mIC1CaptureReady());
    d1 = mIC1ReadCapture();

    // wait for next rising edge
    while (!mIC1CaptureReady());
    up2 = mIC1ReadCapture();

    //turn off input capture
    OpenCapture1(IC_EVERY_EDGE | IC_INT_1CAPTURE | IC_TIMER3_SRC | IC_FEDGE_RISE | IC_CAP_16BIT | IC_OFF);
    //printf("timer 3: %d\n",ReadTimer3());

    // The values come from a 16 bit timer therefore the lower 15 bits (since it's signed)
    // are just noise. Shift them out for the bottom, leave them in for the top of the division.
    int temp = up2 - up1;
    temp = temp >> 15;

    angle = (d1 - up1) / temp;
    printf("encoder raw %d\n",angle);
    // the angle in radians
    float rads = (float) angle / 32767 * 2*PI;

    if (init_flag != 0) {
        //rads = format(rads);
        return rads;
    }

    init_flag = 1;
    return rads;

}


#endif


#ifdef TEST_ENCODER

#define TIMER_VAL 0xFFFF

void timer_init(void) {
    T2CON = 0x0;
    TMR2 = 0x0;
    PR2 = TIMER_VAL;

    IPC2SET = 0x0000000D;
    IFS0CLR = 0x00000100;
    IEC0SET = 0x00000100;
    //turn on timer and set prescaler
    T2CONSET = 0x8070;
}

float angle = 0;
float ahrs_angle = 0;

void __ISR(_TIMER_2_VECTOR, ipl3) Timer2Handler(void) {
    T2CONSET = 0x8000;
    printf("timer overrun \n");

    ahrs_angle = get_AHRS_angle();
    angle = get_encoder_angle();
    printf("encoder angle: %f\n AHRS angle: %f\n ", angle, ahrs_angle);



    // clear timer interrupt
    IFS0CLR = 0x00000100;

}

void main() {
    BOARD_Init();

    init_encoder();
    init_AHRS();
    timer_init();

}

#endif

