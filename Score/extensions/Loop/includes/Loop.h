/** @file
 *
 * @ingroup scoreExtension
 *
 * @brief Loop class is a time process class to iterate other time processes
 *
 * @details The Loop class allows to ... @n@n
 *
 * @see TimePluginLib, TTTimeProcess, TimeContainer
 *
 * @authors Théo de la Hogue & Clément Bossut
 *
 * @copyright Copyright © 2013, Théo de la Hogue & Clément Bossut @n
 * This code is licensed under the terms of the "CeCILL-C" @n
 * http://www.cecill.info
 */

#ifndef __LOOP_H__
#define __LOOP_H__

#include "TimePluginLib.h"

#include <libxml/encoding.h>
#include <libxml/xmlwriter.h>
#include <libxml/xmlreader.h>

/**	The Loop class allows to ...
 
 @see TimePluginLib, TTTimeProcess
 */
class Loop : public TimeContainerPlugin
{
	TTCLASS_SETUP(Loop)
	
    TTAddressItemPtr            mNamespace;                     ///< the namespace workspace of the loop
    
private :
    
    TTUInt32                    mIteration;                     ///< count how many iteration have been done

    TTList                      mPatternProcesses;              ///< all registered time processes to execute at each iteration
    TTObject                    mPatternStartEvent;             ///< the event object which handles the start of the pattern execution
    TTObject                    mPatternEndEvent;               ///< the event object which handles the end of the pattern execution
    TTObject                    mPatternCondition;              ///< the condition object which handles next pattern iteration or the end of the loop
    
    TTObject                    mCurrentTimeEvent;              ///< an internal pointer to remember the current time event being read
    TTObject                    mCurrentTimeProcess;            ///< an internal pointer to remember the current time process being read
    TTObject                    mCurrentTimeCondition;          ///< an internal pointer to remember the current time condition being read
	TTObject           	 		mCurrentScenario;               ///< an internal pointer to remember the current scenario being read
    TTObject           	 		mCurrentLoop;                   ///< an internal pointer to remember the current loop being read

    /** Get parameters names needed by this time process
     @param	value           the returned parameter names
     @return                kTTErrNone */
	TTErr   getParameterNames(TTValue& value);
    
    /** set start pattern event object
     @param	value           an event object
     @return                kTTErrNone */
    TTErr   setPatternStartEvent(const TTValue& value);
    
    /** set end pattern event object
     @param	value           an event object
     @return                kTTErrNone */
    TTErr   setPatternEndEvent(const TTValue& value);

    
    
    /** To be notified when the scheduler speed changed
     @param inputValue      the new speed value
     @param outputValue     nothing
     @return                kTTErrNone */
    TTErr   SchedulerSpeedChanged(const TTValue& inputValue, TTValue& outputValue);
    
    
    
    /** Get all time processes objects
     @param value           all time processes objects
     @return                kTTErrGeneric if no process */
    TTErr   getPatternProcesses(TTValue& value);
    
    
	
    /** Specific compilation method used to pre-processed data in order to accelarate Process method
     @details the compiled attribute allows to know if the process needs to be compiled or not
     @return                an error code returned by the compile method */
    TTErr   Compile();
    
    /** Specific process method on start
     @details when this method is called the running state is NO which means event status propagation is disabled
     @return                an error code returned by the process end method */
    TTErr   ProcessStart();
    
    /** Specific process method on end
     @details when this method is called the running state is NO which means event status propagation is disabled
     @return                an error code returned by the process end method */
    TTErr   ProcessEnd();
    
    /** Specific process method
     @details when this method is called the running state is YES which means event status propagation is enabled
     @param	inputValue      position of the scheduler
     @param	outputValue     return an error of the processing
     @return                an error code returned by the process method */
    TTErr   Process(const TTValue& inputValue, TTValue& outputValue);
    
    /** Specific process method for pause/resume
     @details when this method is called the running state is YES which means event status propagation is enabled
     @param	inputValue      boolean paused state of the scheduler
     @param	outputValue     return an error of the processing
     @return                an error code returned by the process paused method */
    TTErr   ProcessPaused(const TTValue& inputValue, TTValue& outputValue);
    
    /** Specific go to method to set the process at a date
     @param	inputValue      a date where to go relative to the duration of the time process, an optional boolean to temporary mute the process 
     @param	outputValue     nothing
     @return                an error code if the operation fails */
    TTErr   Goto(const TTValue& inputValue, TTValue& outputValue);
    
    /** needed to be handled by a TTXmlHandler
     @param	inputValue      ..
     @param	outputValue     ..
     @return                .. */
	TTErr	WriteAsXml(const TTValue& inputValue, TTValue& outputValue);
	TTErr	ReadFromXml(const TTValue& inputValue, TTValue& outputValue);
    
    /** Write basic informations of a time process as Xml
     @param aXmlHandler     a xml handler
     @param aTimeProcess    a time process object
     @return                nothing */
    void    writeTimeProcessAsXml(TTXmlHandlerPtr aXmlHandler, TTObject& aTimeProcess);
    
    
    /** To be notified when an event date changed
     @param inputValue      the event which have changed his date
     @param outputValue     nothing
     @return                kTTErrNone */
    TTErr   EventDateChanged(const TTValue& inputValue, TTValue& outputValue);
    
    /** To be notified when an event condition changed
     @param inputValue      the event which have changed his condition, the condition
     @param outputValue     nothing
     @return                kTTErrNone */
    TTErr   EventConditionChanged(const TTValue& inputValue, TTValue& outputValue);
    
    
    
    /** Add a time process to the loop pattern
     @param	inputValue      a time process object
     @param	outputValue     nothing
     @return                an error code if the operation fails */
    TTErr   PatternAttach(const TTValue& inputValue, TTValue& outputValue);
    
    /** Remove a time process from the loop pattern
     @param	inputValue      a time process object
     @param	outputValue     nothing
     @return                an error code if the operation fails */
    TTErr   PatternDetach(const TTValue& inputValue, TTValue& outputValue);
};

typedef Loop* LoopPtr;

#endif // __LOOP_H__
