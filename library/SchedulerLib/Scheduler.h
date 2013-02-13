/*
 * A Scheduler interface
 * Copyright © 2013, Théo de la Hogue
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __SCHEDULER_H__
#define __SCHEDULER_H__

#include "TTFoundationAPI.h"

#define SCHEDULER_CONSTRUCTOR \
TTObjectBasePtr thisTTClass :: instantiate (TTSymbol& name, TTValue& arguments) {return new thisTTClass (arguments);} \
\
extern "C" void thisTTClass :: registerClass () {TTClassRegister( TTSymbol(thisTTClassName), thisTTClassTags, thisTTClass :: instantiate );} \
\
thisTTClass :: thisTTClass (TTValue& arguments) : Scheduler(arguments)

#define SCHEDULER_INITIALIZE \
mName = TTSymbol(thisTTClassName); \
mVersion = TTSymbol(thisSchedulerVersion); \
mAuthor = TTSymbol(thisSchedulerAuthor); \
mStretchable = TTSymbol(thisSchedulerStretchable); \
registerAttribute(TTSymbol("ParameterNames"), kTypeLocalValue, NULL, (TTGetterMethod)& thisTTClass::getParameterNames); \
/*addAttributeProperty(ParameterNames, readOnly, YES); \ */

typedef void (*SchedulerProgressionCallback)(TTPtr, TTFloat64);

/****************************************************************************************************/
// Class Specification

/**	Scheduler is the base class for all Scheduler Unit.
 It still has knowledge and support for ...
 */
class Scheduler : public TTObjectBase {

public:																															
	TTSymbol                        mName;					///< ATTRIBUTE : the name of the scheduler							
	TTSymbol                        mVersion;				///< ATTRIBUTE : the version of the scheduler								
	TTSymbol                        mAuthor;				///< ATTRIBUTE : the author of the scheduler								
	TTBoolean                       mStretchable;			///< ATTRIBUTE : is the scheduler provide stretch feature ?

protected:
    
    TTBoolean                       mRunning;               ///< ATTRIBUTE : is the scheduler is running right now ?
    TTFloat64                       mProgression;           ///< ATTRIBUTE : the progression of the scheduler [0. :: 1.]
    
    SchedulerProgressionCallback    mCallback;              ///< the callback to use for each step
    TTPtr                           mBaton;                 ///< the baton to use for each step
	
public:
	//** Constructor.	*/
	Scheduler(TTValue& arguments);
	
	/** Destructor. */
	virtual ~Scheduler();
	
	/** Get parameters names needed by this scheduler */
	virtual TTErr getParameterNames(TTValue& value) = 0;
    
    /** Get the progression [0. :: 1.] */
	virtual TTErr getProgression(TTValue& value) = 0;
	
	/** Start the scheduler */
    virtual TTErr Go(const TTValue& inputValue, TTValue& outputValue) = 0;
    
    /** Halt the sheduler */
    virtual void Stop() = 0;
    
    /** Called every time a new step should be processed */
    virtual void Tick() = 0;

};
typedef Scheduler* SchedulerPtr;

#endif	//__SCHEDULER_H__



#ifndef __SCHEDULERLIB_H__
#define __SCHEDULERLIB_H__

class TT_EXTENSION_EXPORT SchedulerLib {
public:
	/** Instantiate a Scheduler by name */
	static TTErr createScheduler(const TTSymbol SchedulerName, SchedulerPtr *returnedScheduler, SchedulerProgressionCallback aCallback, TTPtr aBaton);
	
	/**	Return a list of all available Schedulers. */
	static void getSchedulerNames(TTValue& SchedulerNames);
};

#endif	//__SCHEDULERLIB_H__
