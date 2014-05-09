/*
 * File: RoachHSM.h
 * Author: Gabriel H Elkaim
 *
 * Simple flat state machine framework for the Roach project for CMPE-118 to get
 * you started on the project. The FSM simply ping pongs between two states on a
 * timer.
 */

/*******************************************************************************
 * MODULE #INCLUDE                                                             *
 ******************************************************************************/

#include "ES_Configure.h"
#include "ES_Framework.h"
#include "ES_TattleTale.h"
#include "BOARD.h"
#include "RoachFrameworkEvents.h"
#include "RoachHSM.h"
// #include in any sub-state machines header files here

/*******************************************************************************
 * MODULE #DEFINES                                                             *
 ******************************************************************************/
#define FullStop() Roach_LeftMtrSpeed(0);Roach_RightMtrSpeed(0)
#define StraightForward(x) Roach_LeftMtrSpeed(x);Roach_RightMtrSpeed(x)

/*******************************************************************************
 * PRIVATE FUNCTION PROTOTYPES                                                 *
 ******************************************************************************/
/* Prototypes for private functions for this machine. They should be functions
   relevant to the behavior of this state machine */

/*******************************************************************************
 * PRIVATE MODULE VARIABLES                                                            *
 ******************************************************************************/
/* You will need MyPriority and the state variable; you may need others as well.
 * The type of state variable should match that of enum in header file. */

static RoachState_t CurrentState = InitPState;
static uint8_t MyPriority;

/* Use the Generate_String_Array_From_Enum program on the desktop to generate the
   StateNames array, this will be used with the code trace function. */
static const char *StateNames[] ={"InitPState",
"Moving",
"Stopped"};

/*******************************************************************************
 * PUBLIC FUNCTIONS                                                            *
 ******************************************************************************/

/**
 * @Function InitRoachHSM(uint8_t Priority)
 * @param Priority - internal variable to track which event queue to use
 * @return TRUE or FALSE
 * @brief This will get called by the framework at the beginning of the code
 *        execution. It will post an ES_INIT event to the appropriate event
 *        queue, which will be handled inside RunRoachHSM function.
 *        Returns TRUE if successful, FALSE otherwise
 * @author Gabriel H Elkaim, 2013.09.26 15:33 */
uint8_t InitRoachHSM(uint8_t Priority)
{
    MyPriority = Priority;
    // put us into the Initial PseudoState
    CurrentState = InitPState;
    // post the initial transition event
    if (ES_PostToService(MyPriority, INIT_EVENT) == TRUE) {
        return TRUE;
    } else {
        return FALSE;
    }
}

/**
 * @Function PostRoachHSM(ES_Event ThisEvent)
 * @param ThisEvent - the event (type and param) to be posted to queue
 * @return TRUE or FALSE
 * @brief This function is a wrapper to the queue posting function, and its name
 *        will be used inside ES_Configure to point to which queue events should
 *        be posted to. Returns TRUE if successful, FALSE otherwise
 * @author Gabriel H Elkaim, 2013.09.26 15:33 */
uint8_t PostRoachHSM(ES_Event ThisEvent)
{
    return ES_PostToService(MyPriority, ThisEvent);
}

/**
 * @Function QueryRoachSM(void)
 * @param none
 * @return Current state of the state machine
 * @brief This function is a wrapper to return the current state of the state
 *        machine. Return will match the ENUM above.
 * @author Gabriel H Elkaim, 2013.09.26 15:33 */
RoachState_t QueryRoachHSM(void)
{
    return (CurrentState);
}

/**
 * @Function RunRoachHSM(ES_Event ThisEvent)
 * @param ThisEvent - the event (type and param) to be responded.
 * @return Event - return event (type and param), in general should be ES_NO_EVENT
 * @brief This is the function that implements the actual state machine; in the
 *        roach case, it is a simple ping pong state machine that will form the
 *        basis of your more complicated exploration. This function will be called
 *        recursively to implement the correct order for a state transition to be:
 *        exit current state -> enter next state using the ES_EXIT and ES_ENTRY
 *        events.
 * @author Gabriel H Elkaim, 2013.09.26 15:33 */
ES_Event RunRoachHSM(ES_Event ThisEvent)
{
    uint8_t makeTransition = FALSE; // use to flag transition
    RoachState_t nextState; // <- need to change enum type here

    ES_Tattle(); // trace call stack

    switch (CurrentState) {
    case InitPState: // If current state is initial Psedudo State
        if (ThisEvent.EventType == ES_INIT)// only respond to ES_Init
        {
            // this is where you would put any actions associated with the
            // transition from the initial pseudo-state into the actual
            // initial state

            // now put the machine into the actual initial state
            CurrentState = Moving;
            StraightForward(5);
            ES_Timer_InitTimer(ROACH_TIMEOUT, 5000);
            ThisEvent.EventType = ES_NO_EVENT;
        }
        break;

    case Moving: // in the first state, replace this with appropriate state
//		ThisEvent = RunMovingSubHSM(ThisEvent);	 	// replace this with your sub state machine call
        if (ThisEvent.EventType != ES_NO_EVENT) {	// An event is active still
			switch (ThisEvent.EventType) {
			case ES_ENTRY:
				StraightForward(5);
				break;

			case ES_EXIT:
				FullStop();
				break;

			case LIGHTLEVEL:
				if (ThisEvent.EventParam == DARK) {
					nextState = Stopped;
					makeTransition = TRUE;
					ThisEvent.EventType = ES_NO_EVENT;
				}
				break;
			case ES_TIMEOUT:
				ES_Timer_InitTimer(ROACH_TIMEOUT, 5000);
				makeTransition = TRUE;
				ThisEvent.EventType = ES_NO_EVENT;
				break;

			default: // all unhandled events pass the event back up to the next level
				break;
			}
		}
        break;


    case Stopped: // If current state is state OtherState
//		ThisEvent = RunStoppedSubHSM(ThisEvent);	// replace this with your sub state machine call
        if (ThisEvent.EventType != ES_NO_EVENT) {	// An event is active still
			switch (ThisEvent.EventType) {
			case ES_ENTRY:
				// this is where you would put any actions associated with the
				// entry to this state
				break;

			case ES_EXIT:
				// this is where you would put any actions associated with the
				// exit from this state
				break;

			case LIGHTLEVEL:
				if (ThisEvent.EventParam == LIGHT) {
					nextState = Moving;
					makeTransition = TRUE;
					ThisEvent.EventType = ES_NO_EVENT;
				}
				break;

			case ES_TIMEOUT:
				ES_Timer_InitTimer(ROACH_TIMEOUT, 5000);
				nextState = Moving;
				makeTransition = TRUE;
				ThisEvent.EventType = ES_NO_EVENT;
				break;

			default: // all unhandled events pass the event back up to the next level
				break;
			}
		}
        break;

    default: // all unhandled states fall into here
        break;
    } // end switch on Current State

    if (makeTransition == TRUE) { // making a state transition, send EXIT and ENTRY
        // recursively call the current state with an exit event
        RunRoachHSM(EXIT_EVENT);
        CurrentState = nextState;
        RunRoachHSM(ENTRY_EVENT);
    }

    ES_Tail(); // trace call stack end
    return ThisEvent;
}


/*******************************************************************************
 * PRIVATE FUNCTIONS                                                           *
 ******************************************************************************/
