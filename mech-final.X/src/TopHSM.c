/*
 * File: TopHSM.c
 * Author: J. Edward Carryer, Gabriel Elkaim, Soja-Marie Morgens, ericdvet,
 */


/*******************************************************************************
 * MODULE #INCLUDE                                                             *
 ******************************************************************************/

#include <stdio.h>
#include "BOARD.h"

#include "ES_Configure.h"
#include "ES_Framework.h"
#include "TopHSM.h"
#include "LoadingSubHSM.h" //#include all sub state machines called
#include "ReturningSubHSM.h"
#include "ShootingSubHSM.h"
#include "Zone1SubHSM.h"
#include "Zone23SubHSM.h"
#include "ZoneLoadingSubHSM.h"

/*******************************************************************************
 * PRIVATE #DEFINES                                                            *
 ******************************************************************************/

//Include any defines you need to do

/*******************************************************************************
 * MODULE #DEFINES                                                             *
 ******************************************************************************/

typedef enum {
    InitPState,
    LoadingState,
    ZoneLoadingState,
    Zone23State,
    Zone1State,
    ShootingState,
    ReturningState,
} TopHSMState_t;

static const char *StateNames[] = {
    "InitPState",
    "LoadingState",
    "ZoneLoadingState",
    "Zone23State",
    "Zone1State",
    "ShootingState",
    "ReturningState",
};

/*******************************************************************************
 * PRIVATE FUNCTION PROTOTYPES                                                 *
 ******************************************************************************/

/* Prototypes for private functions for this machine. They should be functions
   relevant to the behavior of this state machine
   Example: char RunAway(uint_8 seconds);*/

/*******************************************************************************
 * PRIVATE MODULE VARIABLES                                                            *
 ******************************************************************************/

/* You will need MyPriority and the state variable; you may need others as well.
 * The type of state variable should match that of enum in header file. */

static TopHSMState_t CurrentState = InitPState; // <- change enum name to match ENUM
static uint8_t MyPriority;

/*******************************************************************************
 * PUBLIC FUNCTIONS                                                            *
 ******************************************************************************/

/**
 * @Function InitTopHSM(uint8_t Priority)
 * @param Priority - internal variable to track which event queue to use
 * @return TRUE or FALSE
 * @brief This will get called by the framework at the beginning of the code
 * execution. It will post an ES_INIT event to the appropriate event
 * queue, which will be handled inside RunTopHSM function. Returns TRUE if 
 * successful, FALSE otherwise
 * @author J. Edward Carryer, ericdvet */
uint8_t InitTopHSM(uint8_t Priority) {
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
 * @Function PostTopHSM(ES_Event ThisEvent)
 * @param ThisEvent - the event (type and param) to be posted to queue
 * @return TRUE or FALSE
 * @brief This function is a wrapper to the queue posting function, and its name
 * will be used inside ES_Configure to point to which queue events should
 * be posted to. Returns TRUE if successful, FALSE otherwise
 * @author J. Edward Carryer, 2011.10.23 19:25 */
uint8_t PostTopHSM(ES_Event ThisEvent) {
    return ES_PostToService(MyPriority, ThisEvent);
}

/**
 * @Function RunTopHSM(ES_Event ThisEvent)
 * @param ThisEvent - the event (type and param) to be responded.
 * @return Event - return event (type and param), in general should be ES_NO_EVENT
 * @brief This function is where you implement the whole of the heirarchical state
 * machine, as this is called any time a new event is passed to the event
 * queue. This function will be called recursively to implement the correct
 * order for a state transition to be: exit current state -> enter next state
 * using the ES_EXIT and ES_ENTRY events. The lower level state machines are run 
 * first, to see if the event is dealt with there rather than at the current 
 * level. ES_EXIT and ES_ENTRY events are not consumed as these need to pass 
 * pack to the higher level state machine.
 * @author J. Edward Carryer, Gabriel H Elkaim, ericdvet */
ES_Event RunTopHSM(ES_Event ThisEvent) {
    uint8_t makeTransition = FALSE; // use to flag transition
    TopHSMState_t nextState; // <- change type to correct enum

    ES_Tattle(); // trace call stack

    switch (CurrentState) {
        case InitPState: // If current state is initial Pseudo State
            if (ThisEvent.EventType == ES_INIT)// only respond to ES_Init
            {
                // this is where you would put any actions associated with the
                // transition from the initial pseudo-state into the actual
                // initial state
                // Initialize all sub-state machines
                InitLoadingSubHSM();
                // now put the machine into the actual initial state
                nextState = LoadingState;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
            }
            break;

        case LoadingState:
            ThisEvent = RunLoadingSubHSM(ThisEvent);
            switch (ThisEvent.EventType) {
                case LOADED:
                    InitZoneLoadingSubHSM();
                    nextState = ZoneLoadingState;
                    makeTransition = TRUE;
                    ThisEvent.EventType = ES_NO_EVENT;
                    break;
                case ES_NO_EVENT:
                default:
                    break;
            }
            break;

        case ZoneLoadingState:
            ThisEvent = RunZoneLoadingSubHSM(ThisEvent);
            switch (ThisEvent.EventType) {
                case LOAD_TO_23:
                    InitZone23SubHSM();
                    nextState = Zone23State;
                    makeTransition = TRUE;
                    ThisEvent.EventType = ES_NO_EVENT;
                    break;
                case ES_NO_EVENT:
                default:
                    break;
            }
            break;

        case Zone23State:
            ThisEvent = RunZone23SubHSM(ThisEvent);
            switch (ThisEvent.EventType) {
                case ZONE_23_TO_1:
                    InitZone1SubHSM();
                    nextState = Zone1State;
                    makeTransition = TRUE;
                    ThisEvent.EventType = ES_NO_EVENT;
                    break;
                case ES_NO_EVENT:
                default:
                    break;
            }
            break;

        case Zone1State:
            ThisEvent = RunZone1SubHSM(ThisEvent);
            switch (ThisEvent.EventType) {
                case READY_TO_SHOOT:
                    InitShootingSubHSM();
                    nextState = ShootingState;
                    makeTransition = TRUE;
                    ThisEvent.EventType = ES_NO_EVENT;
                    break;
                case ES_NO_EVENT:
                default:
                    break;
            }
            break;

        case ShootingState:
            ThisEvent = RunShootingSubHSM(ThisEvent);
            switch (ThisEvent.EventType) {
                case SHOTS_FIRED:
                    InitReturningSubHSM();
                    nextState = ReturningState;
                    makeTransition = TRUE;
                    ThisEvent.EventType = ES_NO_EVENT;
                    break;
                case ES_NO_EVENT:
                default:
                    break;
            }
            break;

        case ReturningState:
            ThisEvent = RunReturningSubHSM(ThisEvent);
            switch (ThisEvent.EventType) {
                case RETURNED:
                    InitLoadingSubHSM();
                    nextState = LoadingState;
                    makeTransition = TRUE;
                    ThisEvent.EventType = ES_NO_EVENT;
                    break;
                case ES_NO_EVENT:
                default:
                    break;
            }
            break;

        default: // all unhandled states fall into here
            break;
    } // end switch on Current State

    if (makeTransition == TRUE) { // making a state transition, send EXIT and ENTRY
        // recursively call the current state with an exit event
        RunTopHSM(EXIT_EVENT); // <- rename to your own Run function
        CurrentState = nextState;
        RunTopHSM(ENTRY_EVENT); // <- rename to your own Run function
    }

    ES_Tail(); // trace call stack end
    return ThisEvent;
}


/*******************************************************************************
 * PRIVATE FUNCTIONS                                                           *
 ******************************************************************************/
