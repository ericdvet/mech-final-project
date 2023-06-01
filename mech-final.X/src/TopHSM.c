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
#include "FindGoalSubHSM.h"
#include "LeftGameSubHSM.h"
#include "CollisionLeftSubHSM.h"
#include "LeftToRightSubHSM.h"

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
    LeftGameState,
    FindGoalState,
    Zone1State,
    ShootingState,
    ReturningState,
    CollisionLeftState,
    LeftToRightState,
} TopHSMState_t;

static const char *StateNames[] = {
    "InitPState",
    "LoadingState",
    "LeftGameState",
    "FindGoalState",
    "Zone1State",
    "ShootingState",
    "ReturningState",
    "CollisionLeftState",
    "LeftToRightState",
};

typedef enum {
    Unknown,
    LeftField,
    RightField,
} Position;

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

static Position initialPosition = LeftField;
static Position obstaclePosition = Unknown;

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
                case ES_TIMEOUT:
                    InitFindGoalSubHSM();
                    nextState = FindGoalState;
                    makeTransition = TRUE;
                    ThisEvent.EventType = ES_NO_EVENT;
                    break;
                case ES_NO_EVENT:
                default:
                    break;
            }
            break;

        case FindGoalState:
            ThisEvent = RunFindGoalSubHSM(ThisEvent);
            switch (ThisEvent.EventType) {
                case TWO_KHZ_BEACON_DETECTED:
                    if (initialPosition == LeftField) {
                        InitLeftGameSubHSM();
                        nextState = LeftGameState;
                        makeTransition = TRUE;
                        ThisEvent.EventType = ES_NO_EVENT;
                    }
                    break;
                case ES_NO_EVENT:
                default:
                    break;
            }
            break;

        case LeftGameState:
            ThisEvent = RunLeftGameSubHSM(ThisEvent);
            switch (ThisEvent.EventType) {
                case BUMPER_DOWN:
                    if (ThisEvent.EventParam == 0b0011) {
                        InitLoadingSubHSM();
                        // now put the machine into the actual initial state
                        nextState = LoadingState;
                        makeTransition = TRUE;
                        ThisEvent.EventType = ES_NO_EVENT;
                    }
                    if ((ThisEvent.EventParam & 0b0100) || (ThisEvent.EventParam & 0b1000)) {
                        InitCollisionLeftSubHSM();
                        nextState = CollisionLeftState;
                        makeTransition = TRUE;
                        ThisEvent.EventType = ES_NO_EVENT;
                    }
                    break;
                case ES_NO_EVENT:
                default:
                    break;
            }
            break;

        case CollisionLeftState:
            ThisEvent = RunCollisionLeftSubHSM(ThisEvent);
            switch (ThisEvent.EventType) {
                case BUMPER_DOWN:
                    if (ThisEvent.EventParam == 0b1100) {
                        InitLeftToRightSubHSM();
                        nextState = LeftToRightState;
                        makeTransition = TRUE;
                        ThisEvent.EventType = ES_NO_EVENT;
                    }
                    break;
                case ES_NO_EVENT:
                default:
                    break;
            }
            break;

        case LeftToRightState:
            ThisEvent = RunLeftToRightSubHSM(ThisEvent);
            switch (ThisEvent.EventType) {
                case ES_TIMEOUT:
                    if (ThisEvent.EventParam == TIMER_TWO) {
                        InitLoadingSubHSM();
                        // now put the machine into the actual initial state
                        nextState = LoadingState;
                        makeTransition = TRUE;
                        ThisEvent.EventType = ES_NO_EVENT;
                    }
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
