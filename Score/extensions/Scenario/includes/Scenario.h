/** @file
 *
 * @ingroup scoreExtension
 *
 * @brief Scenario class is a time container class to manage time events and time processes in the time
 *
 * @details The Scenario class allows to ... @n@n
 *
 * @see TimePluginLib, TTTimeContainer
 *
 * @authors Théo de la Hogue & Clément Bossut
 *
 * @copyright Copyright © 2013, Théo de la Hogue & Clément Bossut @n
 * This code is licensed under the terms of the "CeCILL-C" @n
 * http://www.cecill.info
 */

#ifndef __SCENARIO_H__
#define __SCENARIO_H__

#include "TimePluginLib.h"

#include <libxml/encoding.h>
#include <libxml/xmlwriter.h>
#include <libxml/xmlreader.h>

/**	The Scenario class allows to ...
 
 @see TimePluginLib, TTTimeProcess, TTTimeContainer
 */
class Scenario : public TimeContainerPlugin
{
	TTCLASS_SETUP(Scenario)
	
    TTAddressItemPtr            mNamespace;                     ///< the namespace workspace of the scenario
    
    TTList                      mTimeProcesses;                 ///< all registered time processes and their observers
    TTList                      mTimeEvents;                    ///< all registered time events and their observers
    TTList                      mTimeConditions;                ///< all registered time conditions and their observers
    
    TTValue                     mViewZoom;                      ///< the zoom factor (x and y) into the scenario view (useful for gui)
    TTValue                     mViewPosition;                  ///< the position (x and y) of the scenario view (useful for gui)

    TTObject                    mCurrentTimeEvent;              ///< an internal pointer to remember the current time event being read
    TTObject                    mCurrentTimeProcess;            ///< an internal pointer to remember the current time process being read
    TTObject                    mCurrentTimeCondition;          ///< an internal pointer to remember the current time condition being read
	TTObject           	 		mCurrentScenario;               ///< an internal pointer to remember the current scenario being read
    TTObject           	 		mCurrentLoop;                   ///< an internal pointer to remember the current loop being read
    
    TTBoolean                   mLoading;                       ///< a flag true when the scenario is loading (mainly used to mute the edition solver)
    TTBoolean                   mAttributeLoaded;               ///< a flag true when the scenario is loading (mainly used to mute the edition solver)
    
    TTSymbol                    mFileVersion;                   ///< a symbol used to store the score version format of the file being read
	
    /** Get parameters names needed by this time process
     @param	value           the returned parameter names
     @return                kTTErrNone */
	TTErr   getParameterNames(TTValue& value);
    
    
    /** To be notified when the scheduler speed changes
     @param inputValue      the new speed value
     @param outputValue     nothing
     @return                kTTErrNone */
    TTErr   SchedulerSpeedChanged(const TTValue& inputValue, TTValue& outputValue);
    
    
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
    
    /**  needed to be handled by a TTXmlHandler
     @param	inputValue      ..
     @param	outputValue     ..
     @return                .. */
	TTErr	WriteAsXml(const TTValue& inputValue, TTValue& outputValue);
	TTErr	ReadFromXml(const TTValue& inputValue, TTValue& outputValue);
    
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
    
    /** Get all time processes objects
     @param value           all time processes objects
     @return                kTTErrGeneric if no process */
    TTErr   getTimeProcesses(TTValue& value);
    
    /** Get all time events objects
     @param value           all time events objects
     @return                kTTErrGeneric if no event */
    TTErr   getTimeEvents(TTValue& value);
    
    /** Get all time conditions objects
     @param value           all time conditions objects
     @return                kTTErrGeneric if no condition */
    TTErr   getTimeConditions(TTValue& value);
    
    /** Set the view zoom factor
     @param	value           zoomX and zoomY
     @return                kTTErrNone */
    TTErr   setViewZoom(const TTValue& value);
    
    /** Set the view position
     @param	value           zoomX and zoomY
     @return                kTTErrNone */
    TTErr   setViewPosition(const TTValue& value);
    
    /** Trigger next pending time events
     @param inputvalue      nothing or any event pending passing there position in the list of pending event (ex : 1 3 if there is 3 or more pending events and we want to trigger the first and the third events)
     @param outputvalue     the triggered time events
     @return                an error code if there is no next pending time event */
    TTErr   Next(const TTValue& inputValue, TTValue& outputValue);
    
    /** Create a time event
     @param inputvalue      a date
     @param outputvalue     a new time event
     @return                an error code if the creation fails */
    TTErr   TimeEventCreate(const TTValue& inputValue, TTValue& outputValue);
    
    /** Release a time event
     @param inputvalue      a time event object to release
     @param outputvalue     nothing            
     @return                an error code if the destruction fails */
    TTErr   TimeEventRelease(const TTValue& inputValue, TTValue& outputValue);
    
    /** Move a time event
     @param inputvalue      a time event object, new date
     @param outputvalue     nothing            
     @return                an error code if the movement fails */
    TTErr   TimeEventMove(const TTValue& inputValue, TTValue& outputValue);
    
    /** Replace a time event by another one (copying date and active attribute)
     @param inputvalue      a former time event object, a new time event object
     @param outputvalue     nothing            
     @return                an error code if the replacement fails */
    TTErr   TimeEventReplace(const TTValue& inputValue, TTValue& outputValue);
    
    /** Look up the time event list to retreive a time event by name
     @param inputValue      the name as symbol
     @param outputValue     the returned time event object
     @return                kTTErrValueNotFound if there is no event with this name */
    TTErr   TimeEventFind(const TTValue& inputValue, TTValue& outputValue);
    
    /** Write basic informations of a time event as Xml
     @param aXmlHandler     a xml handler
     @param aTimeProcess    a time event object
     @return                nothing */
    void    writeTimeEventAsXml(TTXmlHandlerPtr aXmlHandler, TTObject& aTimeEvent);
    
    /** Read basic informations of a time event from Xml
     @param aXmlHandler     a xml handler
     @param                 a new time event
     @return                #TTErr*/
    TTErr   readTimeEventFromXml(TTXmlHandlerPtr aXmlHandler, TTObject& aNewTimeEvent);
    
    
    
    /** Add an existing time process to the sceanrio (or create it passing a type)
     @param inputvalue      a time process object or type, a start event, a end event
     @param outputvalue     the added time process
     @return                an error code if the creation fails */
    TTErr   TimeProcessAdd(const TTValue& inputValue, TTValue& outputValue);
    
    /** Remove a time process from the scenario
     @param inputvalue      a time process object to remove
     @param outputvalue     its the start and the end event
     @return                an error code if the destruction fails */
    TTErr   TimeProcessRemove(const TTValue& inputValue, TTValue& outputValue);
    
    /** Move a time process into the scenario
     @param inputvalue      a time process object, new start date, new end date
     @param outputvalue     nothing            
     @return                an error code if the movement fails */
    TTErr   TimeProcessMove(const TTValue& inputValue, TTValue& outputValue);
    
    /** Limit a time process duration into the scenario
     @param inputvalue      a time process object, new duration min, new duration max
     @param outputvalue     nothing            
     @return                an error code if the limitation fails */
    TTErr   TimeProcessLimit(const TTValue& inputValue, TTValue& outputValue);
    
    /** Write basic informations of a time process as Xml
     @param aXmlHandler     a xml handler
     @param aTimeProcess    a time process object
     @return                nothing */
    void    writeTimeProcessAsXml(TTXmlHandlerPtr aXmlHandler, TTObject& aTimeProcess);
    
    /** Read basic informations of a time process from Xml
     @param aXmlHandler     a xml handler
     @param                 a new time process object
     @return                #TTErr */
    TTErr   readTimeProcessFromXml(TTXmlHandlerPtr aXmlHandler, TTObject& aNewTimeProcess);
    
    
    
    /** Create a time condition
     @param inputvalue      nothing
     @param outputvalue     a new time condition
     @return                an error code if the creation fails */
    TTErr   TimeConditionCreate(const TTValue& inputValue, TTValue& outputValue);
    
    /** Release a time process
     @param inputvalue      a time condition object to release
     @param outputvalue     nothing            
     @return                an error code if the destruction fails */
    TTErr   TimeConditionRelease(const TTValue& inputValue, TTValue& outputValue);
    
    /** Write basic informations of a time condition as Xml
     @param aXmlHandler     a xml handler
     @param aTimeProcess    a time condition object
     @return                nothing */
    void    writeTimeConditionAsXml(TTXmlHandlerPtr aXmlHandler, TTObject& aTimeCondition);
    
    /** Read basic informations of a time condition from Xml
     @param aXmlHandler     a xml handler
     @param                 a new time condition
     @return                #TTErr */
    TTErr   readTimeConditionFromXml(TTXmlHandlerPtr aXmlHandler, TTObject& aNewTimeCondition);
    
    
    
    /** an internal method used to create all time process attribute observers */
    void    makeTimeProcessCacheElement(TTObject& aTimeProcess, TTValue& newCacheElement);
    
    /** an internal method used to delete all time process attribute observers */
    void    deleteTimeProcessCacheElement(const TTValue& oldCacheElement);
    
    /** an internal method used to create all time event attribute observers */
    void    makeTimeEventCacheElement(TTObject& aTimeEvent, TTValue& newCacheElement);
    
    /** an internal method used to delete all time event attribute observers */
    void    deleteTimeEventCacheElement(const TTValue& oldCacheElement);
    
    /** an internal method used to create all time condition attribute observers */
    void    makeTimeConditionCacheElement(TTObject& aTimeCondition, TTValue& newCacheElement);
    
    /** an internal method used to delete all time condition attribute observers */
    void    deleteTimeConditionCacheElement(const TTValue& oldCacheElement);
};

typedef Scenario* ScenarioPtr;

#endif // __SCENARIO_H__
