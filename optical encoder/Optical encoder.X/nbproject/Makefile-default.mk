#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Optical_encoder.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Optical_encoder.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED="C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118 libraries/src/AD.c" "C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118 libraries/src/BOARD.c" "C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118 libraries/src/IO_Ports.c" "C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118 libraries/src/LED.c" "C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118 libraries/src/RC_Servo.c" "C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118 libraries/src/Stepper.c" "C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118 libraries/src/pwm.c" "C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118 libraries/src/serial.c" "C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118 libraries/src/timers.c" "C:/Users/Dmitriy/Documents/GitHub/cubesat/optical encoder/Optical encoder.X/main.c"

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1843181768/AD.o ${OBJECTDIR}/_ext/1843181768/BOARD.o ${OBJECTDIR}/_ext/1843181768/IO_Ports.o ${OBJECTDIR}/_ext/1843181768/LED.o ${OBJECTDIR}/_ext/1843181768/RC_Servo.o ${OBJECTDIR}/_ext/1843181768/Stepper.o ${OBJECTDIR}/_ext/1843181768/pwm.o ${OBJECTDIR}/_ext/1843181768/serial.o ${OBJECTDIR}/_ext/1843181768/timers.o ${OBJECTDIR}/_ext/631192252/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1843181768/AD.o.d ${OBJECTDIR}/_ext/1843181768/BOARD.o.d ${OBJECTDIR}/_ext/1843181768/IO_Ports.o.d ${OBJECTDIR}/_ext/1843181768/LED.o.d ${OBJECTDIR}/_ext/1843181768/RC_Servo.o.d ${OBJECTDIR}/_ext/1843181768/Stepper.o.d ${OBJECTDIR}/_ext/1843181768/pwm.o.d ${OBJECTDIR}/_ext/1843181768/serial.o.d ${OBJECTDIR}/_ext/1843181768/timers.o.d ${OBJECTDIR}/_ext/631192252/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1843181768/AD.o ${OBJECTDIR}/_ext/1843181768/BOARD.o ${OBJECTDIR}/_ext/1843181768/IO_Ports.o ${OBJECTDIR}/_ext/1843181768/LED.o ${OBJECTDIR}/_ext/1843181768/RC_Servo.o ${OBJECTDIR}/_ext/1843181768/Stepper.o ${OBJECTDIR}/_ext/1843181768/pwm.o ${OBJECTDIR}/_ext/1843181768/serial.o ${OBJECTDIR}/_ext/1843181768/timers.o ${OBJECTDIR}/_ext/631192252/main.o

# Source Files
SOURCEFILES=C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118 libraries/src/AD.c C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118 libraries/src/BOARD.c C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118 libraries/src/IO_Ports.c C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118 libraries/src/LED.c C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118 libraries/src/RC_Servo.c C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118 libraries/src/Stepper.c C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118 libraries/src/pwm.c C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118 libraries/src/serial.c C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118 libraries/src/timers.c C:/Users/Dmitriy/Documents/GitHub/cubesat/optical encoder/Optical encoder.X/main.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
	${MAKE} ${MAKE_OPTIONS} -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/Optical_encoder.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX320F128H
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1843181768/AD.o: C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118\ libraries/src/AD.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1843181768 
	@${RM} ${OBJECTDIR}/_ext/1843181768/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/1843181768/AD.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1843181768/AD.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118 libraries/include" -MMD -MF "${OBJECTDIR}/_ext/1843181768/AD.o.d" -o ${OBJECTDIR}/_ext/1843181768/AD.o "C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118 libraries/src/AD.c"   
	
${OBJECTDIR}/_ext/1843181768/BOARD.o: C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118\ libraries/src/BOARD.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1843181768 
	@${RM} ${OBJECTDIR}/_ext/1843181768/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/1843181768/BOARD.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1843181768/BOARD.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118 libraries/include" -MMD -MF "${OBJECTDIR}/_ext/1843181768/BOARD.o.d" -o ${OBJECTDIR}/_ext/1843181768/BOARD.o "C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118 libraries/src/BOARD.c"   
	
${OBJECTDIR}/_ext/1843181768/IO_Ports.o: C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118\ libraries/src/IO_Ports.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1843181768 
	@${RM} ${OBJECTDIR}/_ext/1843181768/IO_Ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/1843181768/IO_Ports.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1843181768/IO_Ports.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118 libraries/include" -MMD -MF "${OBJECTDIR}/_ext/1843181768/IO_Ports.o.d" -o ${OBJECTDIR}/_ext/1843181768/IO_Ports.o "C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118 libraries/src/IO_Ports.c"   
	
${OBJECTDIR}/_ext/1843181768/LED.o: C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118\ libraries/src/LED.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1843181768 
	@${RM} ${OBJECTDIR}/_ext/1843181768/LED.o.d 
	@${RM} ${OBJECTDIR}/_ext/1843181768/LED.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1843181768/LED.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118 libraries/include" -MMD -MF "${OBJECTDIR}/_ext/1843181768/LED.o.d" -o ${OBJECTDIR}/_ext/1843181768/LED.o "C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118 libraries/src/LED.c"   
	
${OBJECTDIR}/_ext/1843181768/RC_Servo.o: C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118\ libraries/src/RC_Servo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1843181768 
	@${RM} ${OBJECTDIR}/_ext/1843181768/RC_Servo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1843181768/RC_Servo.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1843181768/RC_Servo.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118 libraries/include" -MMD -MF "${OBJECTDIR}/_ext/1843181768/RC_Servo.o.d" -o ${OBJECTDIR}/_ext/1843181768/RC_Servo.o "C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118 libraries/src/RC_Servo.c"   
	
${OBJECTDIR}/_ext/1843181768/Stepper.o: C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118\ libraries/src/Stepper.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1843181768 
	@${RM} ${OBJECTDIR}/_ext/1843181768/Stepper.o.d 
	@${RM} ${OBJECTDIR}/_ext/1843181768/Stepper.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1843181768/Stepper.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118 libraries/include" -MMD -MF "${OBJECTDIR}/_ext/1843181768/Stepper.o.d" -o ${OBJECTDIR}/_ext/1843181768/Stepper.o "C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118 libraries/src/Stepper.c"   
	
${OBJECTDIR}/_ext/1843181768/pwm.o: C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118\ libraries/src/pwm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1843181768 
	@${RM} ${OBJECTDIR}/_ext/1843181768/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1843181768/pwm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1843181768/pwm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118 libraries/include" -MMD -MF "${OBJECTDIR}/_ext/1843181768/pwm.o.d" -o ${OBJECTDIR}/_ext/1843181768/pwm.o "C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118 libraries/src/pwm.c"   
	
${OBJECTDIR}/_ext/1843181768/serial.o: C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118\ libraries/src/serial.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1843181768 
	@${RM} ${OBJECTDIR}/_ext/1843181768/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/1843181768/serial.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1843181768/serial.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118 libraries/include" -MMD -MF "${OBJECTDIR}/_ext/1843181768/serial.o.d" -o ${OBJECTDIR}/_ext/1843181768/serial.o "C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118 libraries/src/serial.c"   
	
${OBJECTDIR}/_ext/1843181768/timers.o: C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118\ libraries/src/timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1843181768 
	@${RM} ${OBJECTDIR}/_ext/1843181768/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1843181768/timers.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1843181768/timers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118 libraries/include" -MMD -MF "${OBJECTDIR}/_ext/1843181768/timers.o.d" -o ${OBJECTDIR}/_ext/1843181768/timers.o "C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118 libraries/src/timers.c"   
	
${OBJECTDIR}/_ext/631192252/main.o: C:/Users/Dmitriy/Documents/GitHub/cubesat/optical\ encoder/Optical\ encoder.X/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/631192252 
	@${RM} ${OBJECTDIR}/_ext/631192252/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/631192252/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/631192252/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118 libraries/include" -MMD -MF "${OBJECTDIR}/_ext/631192252/main.o.d" -o ${OBJECTDIR}/_ext/631192252/main.o "C:/Users/Dmitriy/Documents/GitHub/cubesat/optical encoder/Optical encoder.X/main.c"   
	
else
${OBJECTDIR}/_ext/1843181768/AD.o: C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118\ libraries/src/AD.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1843181768 
	@${RM} ${OBJECTDIR}/_ext/1843181768/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/1843181768/AD.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1843181768/AD.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118 libraries/include" -MMD -MF "${OBJECTDIR}/_ext/1843181768/AD.o.d" -o ${OBJECTDIR}/_ext/1843181768/AD.o "C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118 libraries/src/AD.c"   
	
${OBJECTDIR}/_ext/1843181768/BOARD.o: C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118\ libraries/src/BOARD.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1843181768 
	@${RM} ${OBJECTDIR}/_ext/1843181768/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/1843181768/BOARD.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1843181768/BOARD.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118 libraries/include" -MMD -MF "${OBJECTDIR}/_ext/1843181768/BOARD.o.d" -o ${OBJECTDIR}/_ext/1843181768/BOARD.o "C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118 libraries/src/BOARD.c"   
	
${OBJECTDIR}/_ext/1843181768/IO_Ports.o: C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118\ libraries/src/IO_Ports.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1843181768 
	@${RM} ${OBJECTDIR}/_ext/1843181768/IO_Ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/1843181768/IO_Ports.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1843181768/IO_Ports.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118 libraries/include" -MMD -MF "${OBJECTDIR}/_ext/1843181768/IO_Ports.o.d" -o ${OBJECTDIR}/_ext/1843181768/IO_Ports.o "C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118 libraries/src/IO_Ports.c"   
	
${OBJECTDIR}/_ext/1843181768/LED.o: C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118\ libraries/src/LED.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1843181768 
	@${RM} ${OBJECTDIR}/_ext/1843181768/LED.o.d 
	@${RM} ${OBJECTDIR}/_ext/1843181768/LED.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1843181768/LED.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118 libraries/include" -MMD -MF "${OBJECTDIR}/_ext/1843181768/LED.o.d" -o ${OBJECTDIR}/_ext/1843181768/LED.o "C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118 libraries/src/LED.c"   
	
${OBJECTDIR}/_ext/1843181768/RC_Servo.o: C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118\ libraries/src/RC_Servo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1843181768 
	@${RM} ${OBJECTDIR}/_ext/1843181768/RC_Servo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1843181768/RC_Servo.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1843181768/RC_Servo.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118 libraries/include" -MMD -MF "${OBJECTDIR}/_ext/1843181768/RC_Servo.o.d" -o ${OBJECTDIR}/_ext/1843181768/RC_Servo.o "C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118 libraries/src/RC_Servo.c"   
	
${OBJECTDIR}/_ext/1843181768/Stepper.o: C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118\ libraries/src/Stepper.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1843181768 
	@${RM} ${OBJECTDIR}/_ext/1843181768/Stepper.o.d 
	@${RM} ${OBJECTDIR}/_ext/1843181768/Stepper.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1843181768/Stepper.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118 libraries/include" -MMD -MF "${OBJECTDIR}/_ext/1843181768/Stepper.o.d" -o ${OBJECTDIR}/_ext/1843181768/Stepper.o "C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118 libraries/src/Stepper.c"   
	
${OBJECTDIR}/_ext/1843181768/pwm.o: C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118\ libraries/src/pwm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1843181768 
	@${RM} ${OBJECTDIR}/_ext/1843181768/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1843181768/pwm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1843181768/pwm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118 libraries/include" -MMD -MF "${OBJECTDIR}/_ext/1843181768/pwm.o.d" -o ${OBJECTDIR}/_ext/1843181768/pwm.o "C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118 libraries/src/pwm.c"   
	
${OBJECTDIR}/_ext/1843181768/serial.o: C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118\ libraries/src/serial.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1843181768 
	@${RM} ${OBJECTDIR}/_ext/1843181768/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/1843181768/serial.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1843181768/serial.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118 libraries/include" -MMD -MF "${OBJECTDIR}/_ext/1843181768/serial.o.d" -o ${OBJECTDIR}/_ext/1843181768/serial.o "C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118 libraries/src/serial.c"   
	
${OBJECTDIR}/_ext/1843181768/timers.o: C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118\ libraries/src/timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1843181768 
	@${RM} ${OBJECTDIR}/_ext/1843181768/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1843181768/timers.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1843181768/timers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118 libraries/include" -MMD -MF "${OBJECTDIR}/_ext/1843181768/timers.o.d" -o ${OBJECTDIR}/_ext/1843181768/timers.o "C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118 libraries/src/timers.c"   
	
${OBJECTDIR}/_ext/631192252/main.o: C:/Users/Dmitriy/Documents/GitHub/cubesat/optical\ encoder/Optical\ encoder.X/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/631192252 
	@${RM} ${OBJECTDIR}/_ext/631192252/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/631192252/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/631192252/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/Users/Dmitriy/Documents/GitHub/cubesat/cmpe118 libraries/include" -MMD -MF "${OBJECTDIR}/_ext/631192252/main.o.d" -o ${OBJECTDIR}/_ext/631192252/main.o "C:/Users/Dmitriy/Documents/GitHub/cubesat/optical encoder/Optical encoder.X/main.c"   
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/Optical_encoder.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/Optical_encoder.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}           -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC02000:0x1FC02FEF -mreserve=boot@0x1FC02000:0x1FC024FF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/Optical_encoder.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/Optical_encoder.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/Optical_encoder.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
