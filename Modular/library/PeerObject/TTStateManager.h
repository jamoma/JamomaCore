/** @file
 *
 * @ingroup modularLibrary
 *
 * @brief A State Manager Object
 *
 * @details
 *
 * @authors Théo de la Hogue
 *
 * @copyright © 2010, Théo de la Hogue @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __TT_STATE_MANAGER_H__
#define __TT_STATE_MANAGER_H__

#include "TTModularIncludes.h"

/**	TTStateManager ... TODO : an explanation
 
 
 */
class TTXmlHandler;
typedef TTXmlHandler* TTXmlHandlerPtr;

// a namespace is a TTList
typedef	TTList* NamespacePtr;

class TTMODULAR_EXPORT TTStateManager : public TTObjectBase
{
	TTCLASS_SETUP(TTStateManager)
	
private:
    
	TTValue				mNames;							///< ATTRIBUTE : states are ordered by name
	TTSymbol			mCurrent;						///< ATTRIBUTE : the current state name
	TTInt32				mCurrentPosition;				///< ATTRIBUTE : the current state position
	TTSymbol			mNamespace;						///< ATTRIBUTE : the name of the namespace selection to use
    TTAddress           mAddress;						///< ATTRIBUTE : an address to make the managment relative to
	TTHash              mStates;						///< ATTRIBUTE : a hash table containing <name, #TTState>
	
	TTDictionary        mCurrentState;					///< the current state
	TTAddressItemPtr    mDefaultNamespace;				///< an internal default namespace
	
	TTObject            mReturnLineCallback;			///< Callback to return back state lines to the owner of this statemanager
    
    TTSymbol			mLastCurrent;                   ///< ATTRIBUTE : remember the current state when parsing a file
	
    /** */
	TTErr	getStates(TTValue& value);
    
	/** */
	TTErr	getCurrentDescription(TTValue& value);
	TTErr	setCurrentDescription(const TTValue& value);
	
	/** */
	TTErr	getCurrentRamp(TTValue& value);
	TTErr	setCurrentRamp(const TTValue& value);
    
    /** */
    TTErr   getCurrentAddress(TTValue& value);
    TTErr   setCurrentAddress(const TTValue& value);    
	
	/** Select a set of absolute addresses
	 @param inputValue      a set of absolute addresses
	 @param outputValue     nothing
     @return                kTTErrNone */
	TTErr	NamespaceSelect(const TTValue& inputValue, TTValue& outputValue);
	
	/** Unselect a set of absolute addresses
	 @param inputValue      a set of absolute addresses
	 @param outputValue     nothing
     @return                kTTErrNone */
	TTErr	NamespaceUnselect(const TTValue& inputValue, TTValue& outputValue);
	
	/** Select only the addresses which are in a state
	 @param inputValue      name of a state or nothing (use the current state)
	 @param outputValue     nothing
     @return                kTTErrNone */
	TTErr	NamespaceGrab(const TTValue& inputValue, TTValue& outputValue);
	
	/** */
	TTErr	Clear();
	
	/** New a state :
		name/id : create a new state.
		nothing : store into the current state */
	TTErr	New(const TTValue& inputValue, TTValue& outputValue);
    
    /** Update a state :
     name/id : update an existing state.
     nothing : update the current state */
	TTErr	Update(const TTValue& inputValue, TTValue& outputValue);

	/** Recall a state : 
		name/id : recall the state.
		nothing : recall the current state */
	TTErr	Recall(const TTValue& inputValue, TTValue& outputValue);
	
	/** Interpolate 2 states : 
		name1, name2, position : interpolate between the 2 given states
		TODO : name1, position : interpolate between the current state and the given state */
	TTErr	Interpolate(const TTValue& inputValue, TTValue& outputValue);
	
	/** Mix several states : 
		name1, factor1, name2, factor2, ... : mix each given states */
	TTErr	Mix(const TTValue& inputValue, TTValue& outputValue);
	
	/** Move a state : 
	 name + position : move the state to the given position. */
	TTErr	Move(const TTValue& inputValue, TTValue& outputValue);
	
	/** Delete a state :
		name : remove the state.
		nothing : remove the current state */
	TTErr	Delete(const TTValue& inputValue, TTValue& outputValue);
    
    /** Reorder the list */
	TTErr	Order(const TTValue& inputValue, TTValue& outputValue);
	
	/** Rename a state : 
	 name + newName: rename the state with the newName */
	TTErr	Rename(const TTValue& inputValue, TTValue& outputValue);
	
	/** Copy a state : 
	 name : copy the state (and optionally give a new name + a position)  */
	TTErr	Copy(const TTValue& inputValue, TTValue& outputValue);
	
	/** Optimize a sub set of states clearing redundant command lines :
		name1, name2, name3, ... : make the optimization between all given states. */
	TTErr	Optimize(const TTValue& inputValue, TTValue& outputValue);
	
	/**  needed to be handled by a TTXmlHandler */
	TTErr	WriteAsXml(const TTValue& inputValue, TTValue& outputValue);
	TTErr	ReadFromXml(const TTValue& inputValue, TTValue& outputValue);
	
	/**  needed to be handled by a TTTextHandler */
	TTErr	WriteAsText(const TTValue& inputValue, TTValue& outputValue);
	TTErr	ReadFromText(const TTValue& inputValue, TTValue& outputValue);
	
	/** */
	TTErr	notifyNamesObservers();
    
    /** */
	TTAddressItemPtr getNamespace();
};

typedef TTStateManager* TTStateManagerPtr;

#endif // __TT_STATE_MANAGER_H__
