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


#include "TTStateManager.h"
#include <libxml/encoding.h>
#include <libxml/xmlwriter.h>
#include <libxml/xmlreader.h>

#define thisTTClass			TTStateManager
#define thisTTClassName		"StateManager"
#define thisTTClassTags		"state, manager"

TT_MODULAR_CONSTRUCTOR,
mCurrent(kTTSymEmpty),
mCurrentPosition(0),
mNamespace(kTTSym_none),
mDefaultNamespace(NULL)
{
	if (arguments.size() == 1)
		mReturnLineCallback = arguments[0];
	
	addAttribute(Names, kTypeLocalValue);
    addAttributeProperty(Names, readOnly, YES);
	
	addAttribute(Current, kTypeSymbol);
	addAttributeProperty(Current, readOnly, YES);
	
	addAttribute(CurrentPosition, kTypeInt32);
	addAttributeProperty(CurrentPosition, readOnly, YES);
	
	addAttribute(Namespace, kTypeSymbol);
	
	registerAttribute(TTSymbol("currentDescription"), kTypeLocalValue, NULL, (TTGetterMethod)&TTStateManager::getCurrentDescription, (TTSetterMethod)&TTStateManager::setCurrentDescription);
	registerAttribute(TTSymbol("currentRamp"), kTypeLocalValue, NULL, (TTGetterMethod)&TTStateManager::getCurrentRamp, (TTSetterMethod)&TTStateManager::setCurrentRamp);
    registerAttribute(TTSymbol("currentAddress"), kTypeLocalValue, NULL, (TTGetterMethod)&TTStateManager::getCurrentAddress, (TTSetterMethod)&TTStateManager::setCurrentAddress);
	
	addAttributeWithGetter(States, kTypePointer);
	addAttributeProperty(States, readOnly, YES);
	addAttributeProperty(States, hidden, YES);
	
	addMessageWithArguments(NamespaceSelect);
	addMessageWithArguments(NamespaceUnselect);
	addMessageWithArguments(NamespaceGrab);
	
	addMessage(Clear);
	
	addMessageWithArguments(New);
    addMessageWithArguments(Update);
	addMessageWithArguments(Recall);
	addMessageWithArguments(Interpolate);
	addMessageWithArguments(Mix);
	addMessageWithArguments(Move);
	addMessageWithArguments(Delete);
    addMessageWithArguments(Order);
	addMessageWithArguments(Rename);
	addMessageWithArguments(Copy);
	addMessageWithArguments(Optimize);
	
	// needed to be handled by a TTXmlHandler
	addMessageWithArguments(WriteAsXml);
	addMessageProperty(WriteAsXml, hidden, YES);
	addMessageWithArguments(ReadFromXml);
	addMessageProperty(ReadFromXml, hidden, YES);
	
	// needed to be handled by a TTTextHandler
	addMessageWithArguments(WriteAsText);
	addMessageProperty(WriteAsText, hidden, YES);
	addMessageWithArguments(ReadFromText);
	addMessageProperty(ReadFromText, hidden, YES);
	
	mDefaultNamespace = new TTAddressItem();
}

TTStateManager::~TTStateManager()
{
	delete mDefaultNamespace;
	mDefaultNamespace = NULL;
}

TTErr TTStateManager::getStates(TTValue& value)
{
    value = TTPtr(&mStates);
    return kTTErrNone;
}

TTErr TTStateManager::getCurrentDescription(TTValue& value)
{
	TTValue v;
	
	// if state exists
	if (!mStates.lookup(mCurrent, v))
    {
		mCurrentState = v[0];
        return mCurrentState.lookup(kTTSym_description, value);
	}
	
	return kTTErrGeneric;
}

TTErr TTStateManager::setCurrentDescription(const TTValue& value)
{
	TTValue v;
	
	// if state exists
	if (!mStates.lookup(mCurrent, v))
    {
		mCurrentState = v[0];
        mCurrentState.append(kTTSym_description, value);
	}
	
	return kTTErrGeneric;
}

TTErr TTStateManager::getCurrentRamp(TTValue& value)
{
	TTValue v;
	
	// if state exists
	if (!mStates.lookup(mCurrent, v))
    {
		mCurrentState = v[0];
        return mCurrentState.lookup(kTTSym_ramp, value);
	}
	
	value = 0;
	return kTTErrGeneric;
}

TTErr TTStateManager::setCurrentRamp(const TTValue& value)
{
	TTValue v;
	
	// if state exists
	if (!mStates.lookup(mCurrent, v))
    {
		mCurrentState = v[0];
        mCurrentState.append(kTTSym_ramp, value);
	}
	
	return kTTErrGeneric;
}

TTErr TTStateManager::getCurrentAddress(TTValue& value)
{
	TTValue v;
	
	// if state exists
	if (!mStates.lookup(mCurrent, v))
    {
		mCurrentState = v[0];
        return mCurrentState.lookup(kTTSym_address, value);
	}
	
	return kTTErrGeneric;
}

TTErr TTStateManager::setCurrentAddress(const TTValue& value)
{
	TTValue v;
	
	// if state exists
	if (!mStates.lookup(mCurrent, v))
    {
		mCurrentState = v[0];
        mCurrentState.append(kTTSym_address, value);
	}
	
	return kTTErrGeneric;
}

TTErr TTStateManager::NamespaceSelect(const TTValue& inputValue, TTValue& outputValue)
{
	TTAddressItemPtr    aSelection, anItem;
	TTAddress           address;
	TTUInt32			i;
	
    aSelection = getNamespace();
	
	for (i = 0; i < inputValue.size(); i++) {
		
		if (inputValue[i].type() == kTypeSymbol) {
			
			address = inputValue[i];
            
            // in relative address case : use the mAddress
            if (address.getType() == kAddressRelative)
                address = mAddress.appendAddress(address);
 /*
            // wildcard case
            TTNodePtr	aNode;
            TTList		aNodeList;
            TTValue		v, none;
            
            mDirectory->Lookup(address, aNodeList, &aNode);
            
            for (aNodeList.begin(); aNodeList.end(); aNodeList.next()) {
                
                aNode = TTNodePtr((TTPtr)aNodeList.current()[0]);
                
            }
*/			
            if (address == kTTAdrsRoot)
                aSelection->setSelection(YES, YES);
            
            else if (!aSelection->find(address, &anItem))
                     anItem->setSelection(YES, YES);
		}
	}
    
    // refresh all namespace handlers (TTExplorer only)
    aSelection->iterateHandlersSendingMessage(kTTSym_SelectionRefresh);
	
	return kTTErrNone;
}

TTErr TTStateManager::NamespaceUnselect(const TTValue& inputValue, TTValue& outputValue)
{
    TTAddressItemPtr    aSelection, anItem;
	TTAddress           address;
	TTUInt32			i;
	
    aSelection = getNamespace();
	
	for (i = 0; i < inputValue.size(); i++) {
		
		if (inputValue[i].type() == kTypeSymbol) {
			
			address = inputValue[i];
            
            // in relative address case : use the mAddress
            if (address.getType() == kAddressRelative)
                address = mAddress.appendAddress(address);
			
            if (address == kTTAdrsRoot)
                aSelection->setSelection(NO, YES);
            
            else if (!aSelection->find(address, &anItem))
				anItem->setSelection(NO, YES);
		}
	}
    
    // refresh all namespace handlers (TTExplorer only)
    aSelection->iterateHandlersSendingMessage(kTTSym_SelectionRefresh);
	
	return kTTErrNone;
}

TTErr TTStateManager::NamespaceGrab(const TTValue& inputValue, TTValue& outputValue)
{
	TTAddressItemPtr    aSelection;
	TTValue             v, none;
	
    if (inputValue.size() == 1) {
    
        // get state name
        if (inputValue[0].type() == kTypeSymbol)
            mCurrent = inputValue[0];
        
        // get state at position
        if (inputValue[0].type() == kTypeInt32) {
            
            mCurrentPosition = inputValue[0];
            
            if (mCurrentPosition > 0 && mCurrentPosition <= mNames.size())
                mCurrent = mNames[mCurrentPosition-1];
            else
                return kTTErrGeneric;
        }
    }
	
	// if state exists
	if (!mStates.lookup(mCurrent, v)) {
		
		mCurrentState = v[0];
		
        // get the namespace
        aSelection = getNamespace();
        
        // TODO : get namespace from state
        //mCurrentState.send("Select", (TTPtr)aSelection, none);
        
        // refresh all namespace handlers (TTExplorer only)
        aSelection->iterateHandlersSendingMessage(kTTSym_SelectionRefresh);
        
        return kTTErrNone;
	}
	else 
		mCurrentPosition = 0;
	
	return kTTErrGeneric;
}

TTErr TTStateManager::Clear()
{
    mStates.clear();
    mCurrentState = TTDictionary();
    mCurrentState.setSchema("snapshot");
    mCurrent = kTTSymEmpty;
    mCurrentPosition = 0;
    mNames.clear();
		
    notifyNamesObservers();

	return kTTErrNone;
}

TTErr TTStateManager::New(const TTValue& inputValue, TTValue& outputValue)
{
	TTValue v, args, out;
    TTErr   err;
        
    // get state name
    if (inputValue.size() == 1)
        if (inputValue[0].type() == kTypeSymbol)
            mCurrent = inputValue[0];
    
    // get state position and name
    if (inputValue.size() == 2)
        if (inputValue[1].type() == kTypeSymbol)
            mCurrent = inputValue[1];
    
    if (mCurrent == kTTSymEmpty)
        return kTTErrGeneric;

	// don't create two states with the same name
	if (mStates.lookup(mCurrent, v))
    {
		// prepare arguments
		args.append(mReturnLineCallback);
		
		// Create a new state
		mCurrentState = TTDictionary();
        mCurrentState.setSchema("snapshot");
        mCurrentState.append(kTTSym_name, mCurrent);
        
        // Handle root by default
        mCurrentState.append(kTTSym_address, kTTAdrsRoot);
		
		// Append the new state
		mStates.append(mCurrent, mCurrentState);
		mNames.append(mCurrent);
		mCurrentPosition = mNames.size();
		
		notifyNamesObservers();
	}
	else
    {
		mCurrentState = v[0];
		mCurrentState.clear();
	}
	
    // select the namespace
    // TODO : prepare state with namespace
	//v = TTValue((TTPtr)getNamespace());
	//err = mCurrentState.send("Store", v, out);
    
    // Move the state at position
    if (inputValue.size() == 2)
    {
        v = mCurrent;
        v.append(inputValue[0]);
        
        err = Move(v, out);
    }
    
    return err;
}

TTErr TTStateManager::Update(const TTValue& inputValue, TTValue& outputValue)
{
    TTValue		v, none;
    TTSymbol    anAddress = kTTAdrsRoot;
	
    if (inputValue.size() >= 1) {
        
        // get state name
        if (inputValue[0].type() == kTypeSymbol) {
            mCurrent = inputValue[0];
            
            TTSymbol name;
            for (TTInt32 i = 0; i < mNames.size(); i++) {
                name = mNames[i];
                if (name == mCurrent) {
                    mCurrentPosition = i+1;
                    break;
                }
            }
        }
        
        // get state at position
        if (inputValue[0].type() == kTypeInt32) {
            
            mCurrentPosition = inputValue[0];
            
            if (mCurrentPosition > 0 && mCurrentPosition <= mNames.size())
                mCurrent = mNames[mCurrentPosition-1];
            else
                return kTTErrGeneric;
        }
    }
    
    // get address from where update starts (default : kAdrsRoot)
    if (inputValue.size() == 2)
        if (inputValue[1].type() == kTypeSymbol)
            anAddress = inputValue[1];
	
	// if state exists
	if (!mStates.lookup(mCurrent, v)) {
		
		mCurrentState = v[0];

        // TODO : update a state
        //return mCurrentState.send(kTTSym_Update, anAddress, none);
	}
	
	return kTTErrGeneric;
}

TTErr TTStateManager::Recall(const TTValue& inputValue, TTValue& outputValue)
{
	TTValue		v, none;
    TTSymbol    anAddress = kTTAdrsRoot;
	
    if (inputValue.size() >= 1) {
        
        // get state name
        if (inputValue[0].type() == kTypeSymbol) {
            mCurrent = inputValue[0];
            
            TTSymbol name;
            for (TTInt32 i = 0; i < mNames.size(); i++) {
                name = mNames[i];
                if (name == mCurrent) {
                    mCurrentPosition = i+1;
                    break;
                }
            }
        }
        
        // get state at position
        if (inputValue[0].type() == kTypeInt32) {
            
            mCurrentPosition = inputValue[0];
            
            if (mCurrentPosition > 0 && mCurrentPosition <= mNames.size())
                mCurrent = mNames[mCurrentPosition-1];
            else
                return kTTErrGeneric;
        }
    }
    
    // get address from where recall starts (default : kAdrsRoot)
    if (inputValue.size() == 2)
	if (inputValue[1].type() == kTypeSymbol)
		anAddress = inputValue[1];
	
	// if state exists
	if (!mStates.lookup(mCurrent, v)) {
		
		mCurrentState = v[0];
		
        // TODO : recall a state
		//return mCurrentState.send(kTTSym_Recall, anAddress, none);
	}
	
	return kTTErrGeneric;
}

TTErr TTStateManager::Interpolate(const TTValue& inputValue, TTValue& outputValue)
{
	TTValue		v1, v2;
    TTInt32     i1, i2;
	TTSymbol    name1, name2;
	TTObject	state1, state2;
	TTFloat32	position;
	
	if (inputValue.size() == 3) {
		
        // get states by name
		if (inputValue[0].type() == kTypeSymbol && inputValue[1].type() == kTypeSymbol && inputValue[2].type() == kTypeFloat64) {
			
			name1 = inputValue[0] ;
			name2 = inputValue[1] ;
			position = inputValue[2] ;
        }
        
        // get states by position
        else if (inputValue[0].type() == kTypeInt32 && inputValue[1].type() == kTypeInt32 && inputValue[2].type() == kTypeFloat64) {
            
            i1 = inputValue[0] ;
            if (i1 >= 0 && i1 < mNames.size())
                name1 = mNames[i1-1];
            else
                return kTTErrGeneric;
            
            i2 = inputValue[1];
            if (i2 >= 0 && i2 < mNames.size())
                name2 = mNames[i2-1];
            else
                return kTTErrGeneric;
            
            position = inputValue[2] ;
        }
			
        // if states exist
        if (!mStates.lookup(name1, v1) && !mStates.lookup(name2, v2)) {
            
            state1 = v1[0];
            state2 = v2[0];
        
            // TODO : interpolate 2 states
            //return TTStateInterpolate(state1, state2, position);
        }
	}
	
	return kTTErrGeneric;
}

TTErr TTStateManager::Mix(const TTValue& inputValue, TTValue& outputValue)
{
	TTInt32     i, id, mixSize;
	TTSymbol    name;
	TTObject	state;
	TTValue		v, states, factors;
	
	mixSize = inputValue.size() / 2;
	if (inputValue.size() != mixSize * 2)
		return kTTErrGeneric;
	
	for (i = 0; i < mixSize * 2; i = i+2) {
		
        if (inputValue[i].type() == kTypeSymbol && inputValue[i+1].type() == kTypeFloat64) {
            
			name = inputValue[i] ;
        }
        else if (inputValue[i].type() == kTypeInt32 && inputValue[i+1].type() == kTypeFloat64) {
            
            id = inputValue[i];
            if (id > 0 && id <= mNames.size())
                name = mNames[id-1];
            else
                return kTTErrGeneric;
        }
        
        // if state exist
        if (!mStates.lookup(name, v)) {
            
            state = v[0];
            
            states.append(state);
            factors.append(TTFloat64(inputValue[i+1]));
        }
	}
	
    // TODO : mix n states
	//return TTStateMix(states, factors);
}

TTErr TTStateManager::Move(const TTValue& inputValue, TTValue& outputValue)
{
	TTList		temp;
	TTSymbol    name;
	TTUInt32	i, newPosition = 0;
	TTValue		v;
	
	if (inputValue.size() >= 1)
    {
        // get state name
        if (inputValue[0].type() == kTypeSymbol)
            mCurrent = inputValue[0];
        
        // get state at position
        if (inputValue[0].type() == kTypeInt32)
        {
            mCurrentPosition = inputValue[0];
            
            if (mCurrentPosition > 0 && mCurrentPosition <= mNames.size())
                mCurrent = mNames[mCurrentPosition-1];
            else
                return kTTErrGeneric;
        }
    }
	
	// get new position
    if (inputValue.size() == 2)
        if (inputValue[1].type() == kTypeInt32)
            newPosition = inputValue[1] ;
	
	if (newPosition < 1 || newPosition > mNames.size())
		return kTTErrGeneric;
	
	// if state exists
	if (!mStates.lookup(mCurrent, v))
    {
		mCurrentState = v[0];
		
		// copy all the mNames names into a TTList
		// except the mCurrent
		for (i = 0; i < mNames.size(); i++)
        {
			name = mNames[i];
			
			if (name == mCurrent)
				continue;
			
			v = TTValue(name);
			temp.append(v);
		}
		
		// insert the mCurrent
		v = TTValue(mCurrent);
		temp.insert(newPosition-1, v);
		mNames.clear();
		
		// copy the TTList names into a newNames
		for (temp.begin(); temp.end(); temp.next())
        {
			name = temp.current()[0];
			mNames.append(name);
		}
		
		mCurrentPosition = newPosition;
		
		notifyNamesObservers();
		
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

TTErr TTStateManager::Delete(const TTValue& inputValue, TTValue& outputValue)
{
	TTSymbol    name;
	TTValue     v, newNames;
	
    if (inputValue.size() == 1)
    {
        // get state name
        if (inputValue[0].type() == kTypeSymbol)
            mCurrent = inputValue[0];
        
        // get state at position
        if (inputValue[0].type() == kTypeInt32)
        {
            mCurrentPosition = inputValue[0];
            
            if (mCurrentPosition > 0 && mCurrentPosition <= mNames.size())
                mCurrent = mNames[mCurrentPosition-1];
            else
                return kTTErrGeneric;
        }
    }
	
	// if state exists
	if (!mStates.lookup(mCurrent, v))
    {
		mStates.remove(mCurrent);
		
		// remove the name without changing the order
		for (TTUInt32 i = 0; i < mNames.size(); i++)
        {
			name = mNames[i];
			
			if (name != mCurrent)
				newNames.append(name);
		}
		
		mCurrentState = TTDictionary();
        mCurrentState.setSchema("snapshot");
		mCurrent = kTTSymEmpty;
		mCurrentPosition = 0;
		mNames = newNames;
		
		notifyNamesObservers();
		
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

TTErr TTStateManager::Order(const TTValue& inputValue, TTValue& outputValue)
{
	TTSymbol    name;
	TTValue		v, newNames;
	
	// check if each name is part of the list
	for (TTUInt32 i = 0; i < inputValue.size(); i++)
    {
		name = inputValue[i];
		
		if (!mStates.lookup(name, v))
			newNames.append(name);
        
        // update current position
        if (name == mCurrent)
            mCurrentPosition = i;
	}
	
	// if the newNames size is not equal to the current name list
	if (newNames.size() != mNames.size())
		return kTTErrGeneric;
	
	mNames = newNames;
    
	return kTTErrNone;
}

TTErr TTStateManager::Rename(const TTValue& inputValue, TTValue& outputValue)
{
	TTSymbol    name, newName;
	TTUInt32	i;
	TTValue		v;
	
	if (inputValue.size() >= 1)
    {
        // get state name
        if (inputValue[0].type() == kTypeSymbol)
            mCurrent = inputValue[0];
        
        // get state at position
        if (inputValue[0].type() == kTypeInt32)
        {
            mCurrentPosition = inputValue[0];
            
            if (mCurrentPosition > 0 && mCurrentPosition <= mNames.size())
                mCurrent = mNames[mCurrentPosition-1];
            else
                return kTTErrGeneric;
        }
    }
	
	// get new name
    if (inputValue.size() == 2)
        if (inputValue[1].type() == kTypeSymbol)
            newName = inputValue[1] ;
	
	if (newName == kTTSymEmpty)
		return kTTErrGeneric;
	
	// if state exists
	if (!mStates.lookup(mCurrent, v))
    {
		
		mCurrentState = v[0];
		
		// replace the name in the hash table
		mStates.remove(mCurrent);
		mStates.append(newName, v);
		
        // TODO : change state name
		//mCurrentState.set(kTTSym_name, newName);
		
		// replace the name in the order
		for (i = 0; i < mNames.size(); i++)
        {
			name = mNames[i];
			
			if (name == mCurrent)
            {
				mNames[i] = newName;
				break;
			}
		}
		
		mCurrent = newName;
		mCurrentPosition = i+1;
		
		notifyNamesObservers();
		
		return kTTErrNone;
	}
	
	return kTTErrGeneric;	
}

TTErr TTStateManager::Copy(const TTValue& inputValue, TTValue& outputValue)
{
	TTDictionary	aStateCopy;
	TTSymbol        nameCopy;
	TTString        s;
    TTInt32         positionCopy;
	TTValue         v, none;
	
    if (inputValue.size() >= 1)
    {
        // get state name
        if (inputValue[0].type() == kTypeSymbol)
            mCurrent = inputValue[0];
        
        // get state at position
        if (inputValue[0].type() == kTypeInt32)
        {
            mCurrentPosition = inputValue[0];

            if (mCurrentPosition > 0 && mCurrentPosition <= mNames.size())
                mCurrent = mNames[mCurrentPosition-1];
            else
                return kTTErrGeneric;
        }
    }
	
	// if state exists
	if (!mStates.lookup(mCurrent, v))
    {
		mCurrentState = v[0];
		
		// TODO : copy state
		//aStateCopy.copy(mCurrentState);
		
        // maybe there is a name for the copy
        if (inputValue.size() >= 2)
        {
            if (inputValue[1].type() == kTypeSymbol)
                nameCopy = inputValue[1] ;
            
        }
        else {
            // edit a name copy : current state name - copy
            s = mCurrent.c_str();
            s += " - copy";
            nameCopy = TTSymbol(s.data());
        }
		
		// TODO : rename state
		//aStateCopy.set(kTTSym_name, nameCopy);
		
		// append the copy
		v = TTValue(aStateCopy);
		mStates.append(nameCopy, v);
		mNames.append(nameCopy);
		mCurrent = nameCopy;
		mCurrentPosition = mNames.size();
		
        // maybe there is a position for the copy
        if (inputValue.size() == 3)
        {
            if (inputValue[2].type() == kTypeInt32)
            {
                positionCopy = inputValue[2] ;

                v = (int)mCurrentPosition;
                v.append((int)positionCopy);
                return Move(v, none);
            }
        }
        else
            return notifyNamesObservers();
	}
	
	return kTTErrGeneric;
}

TTErr TTStateManager::Optimize(const TTValue& inputValue, TTValue& outputValue)
{
	TTUInt32        i;
	TTSymbol        nameToMerge, nameToOptimize;
	TTDictionary	aStateToMerge, aStateToOptimize, stateState, optimizedState;
	TTValue         v;
	TTErr           err;
    
    if (!inputValue.size())
        return kTTErrGeneric;
	
	// merge and optimize each states except the first
	for (i = 1; i < inputValue.size(); i++)
    {
		if (inputValue[i-1].type() == kTypeSymbol && inputValue[i].type() == kTypeSymbol)
        {
			nameToMerge = inputValue[i-1];
			nameToOptimize = inputValue[i];
			
			// if state exists
			if (!mStates.lookup(nameToMerge, v))
				aStateToMerge = v[0];
			
			if (!mStates.lookup(nameToOptimize, v))
				aStateToOptimize = v[0];
			
            // TODO : merge the state before into the current state
            // TTStateMerge(aStateToMerge, stateState);
            
            // create an empty state to store the result of optimization
            optimizedState.append(kTTSym_name, nameToOptimize);
            optimizedState.append(kTTSym_address, mAddress);
            
            // TODO : optimize the state considering the current state
            //err = TTStateOptimize(aStateToOptimize, stateState, optimizedState);
            
            if (!err)
            {
                // replace the state to optimize by the optimized state
                mStates.remove(nameToOptimize);
                mStates.append(nameToOptimize, optimizedState);
            }
		}
	}
	
	return kTTErrNone;
}

TTErr TTStateManager::WriteAsXml(const TTValue& inputValue, TTValue& outputValue)
{
    TTObject o = inputValue[0];
	TTXmlHandlerPtr aXmlHandler = (TTXmlHandlerPtr)o.instance();
    if (!aXmlHandler)
		return kTTErrGeneric;
    
	TTSymbol	stateName;
    TTValue		v;
	TTUInt32	i;
	
	for (i = 0; i < mNames.size(); i++) {
		
		stateName = mNames[i];
		if (!mStates.lookup(stateName, v)) {
            
            TTValue name = stateName;
            name.toString(NO); //no quotes
            TTString s = TTString(name[0]);
			
			// start to write a state
			xmlTextWriterStartElement((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "state");
			xmlTextWriterWriteAttribute((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "name", BAD_CAST s.c_str());
			
			aXmlHandler->setAttributeValue(kTTSym_object, v);
			aXmlHandler->sendMessage(TTSymbol("Write"));
			
			// end to write a state
			xmlTextWriterEndElement((xmlTextWriterPtr)aXmlHandler->mWriter);
		}
	}
	
	return kTTErrNone;
}

TTErr TTStateManager::ReadFromXml(const TTValue& inputValue, TTValue& outputValue)
{
    TTObject o = inputValue[0];
	TTXmlHandlerPtr aXmlHandler = (TTXmlHandlerPtr)o.instance();
    if (!aXmlHandler)
		return kTTErrGeneric;
    
	TTValue	v, args;
	
	// Switch on the name of the XML node
	
	// Starts file reading : clear the state list
	if (aXmlHandler->mXmlNodeName == kTTSym_xmlHandlerReadingStarts) {
		Clear();
		return kTTErrNone;
	}
	
	// Ends file reading : bind on first state
	if (aXmlHandler->mXmlNodeName == kTTSym_xmlHandlerReadingEnds) {
		
        // try to set the former current as current
        mCurrent = mLastCurrent;
        if (!mStates.lookup(mCurrent, v))
            mCurrentState = v[0];
        
        // else bind on the first state
        else if (mNames.size()) {
            
            mCurrent = mNames[0];
            if (!mStates.lookup(mCurrent, v))
                mCurrentState = v[0];
        }
        
        // TODO : read state from xml
        
        // send the end file to the state to process the namespace
        aXmlHandler->setAttributeValue(kTTSym_object, mCurrentState);
        aXmlHandler->sendMessage(TTSymbol("Read"));
        
		notifyNamesObservers();
		
		return kTTErrNone;
	}
	
	// Flag node :
	if (aXmlHandler->mXmlNodeName == TTSymbol("state")) {
		
		if (!aXmlHandler->mXmlNodeStart)
			return kTTErrNone;
		
		// Get state name
		if (!aXmlHandler->getXmlAttribute(kTTSym_name, v, YES)) {
            
            if (v.size() == 1) {
                if (v[0].type() == kTypeSymbol) {
                    
                    mCurrent = v[0];
                    
                    // Create a new state
                    mCurrentState = TTDictionary();
                    mCurrentState.setSchema("snapshot");
                    
                    mCurrentState.append(kTTSym_name, mCurrent);
                    mCurrentState.append(kTTSym_address, mAddress);
                    
                    mStates.append(mCurrent, mCurrentState);
                    mNames.append(mCurrent);
                }
            }
		}
		
		// go back to the element to allow the state to parse it
		xmlTextReaderMoveToElement((xmlTextReaderPtr)aXmlHandler->mReader);
	}
	
	// TODO : edit the current state from the xml file using the XmlHandler
    aXmlHandler->setAttributeValue(kTTSym_object, mCurrentState);
    return aXmlHandler->sendMessage(TTSymbol("Read"));
}

TTErr TTStateManager::WriteAsText(const TTValue& inputValue, TTValue& outputValue)
{
    TTObject o = inputValue[0];
	TTTextHandlerPtr aTextHandler = (TTTextHandlerPtr)o.instance();
    if (!aTextHandler)
		return kTTErrGeneric;
    
	TTString	*buffer;
	TTSymbol    stateName;
	TTValue		v;
	
	buffer = aTextHandler->mWriter;
	
	for (TTUInt32 i = 0; i < mNames.size(); i++) {
		
		stateName = mNames[i];
		if (!mStates.lookup(stateName, v)) {

			aTextHandler->setAttributeValue(kTTSym_object, v);
			aTextHandler->sendMessage(TTSymbol("Write"));
            
			*buffer += "\n";
		}
	}
	
	return kTTErrNone;
}

TTErr TTStateManager::ReadFromText(const TTValue& inputValue, TTValue& outputValue)
{
    TTObject o = inputValue[0];
	TTTextHandlerPtr aTextHandler = (TTTextHandlerPtr)o.instance();
    if (!aTextHandler)
		return kTTErrGeneric;
    
	TTDictionaryBasePtr	line;
	TTSymbol		flagName;
	TTValue			v, args;

	// if it is the first line :
	if (aTextHandler->mFirstLine) {
        
        mLastCurrent = mCurrent;
		Clear();
    }
	
	// TODO : parse the buffer line into TTDictionary
	//line = TTScriptParseLine(*(aTextHandler->mLine));
	
	if (line) {
		
		// replace the buffer line value by the parsed line dictionary
		delete aTextHandler->mLine;
		aTextHandler->mLine = new TTValue((TTPtr)line);
		
		// match state flag line : - state name
		if (line->getSchema() == kTTSym_flag) {
			
			line->lookup(kTTSym_name, v);
			flagName = v[0];
			
			if (flagName == TTSymbol("state")) {
				
				// get state name
				if (!line->getValue(v)) {
					
                    // convert in string in case of int or float name with no quotes for internal symbol
                    v.toString(NO);
					mCurrent = TTSymbol(TTString(v[0]));
					
                    if (mCurrent != kTTSymEmpty) {

                        // Create a new state
                        mCurrentState = TTDictionary();
                        mCurrentState.setSchema("snapshot");
                        
                        mCurrentState.append(kTTSym_name, mCurrent);
                        mCurrentState.append(kTTSym_address, mAddress);
                        
                        mStates.append(mCurrent, mCurrentState);
                        mNames.append(mCurrent);
                    }
				}
			}
		}
        
        // TODO : edit the current state with the line
        aTextHandler->setAttributeValue(kTTSym_object, mCurrentState);
        return aTextHandler->sendMessage(TTSymbol("Read"));
    }
    
    // if it is the last line : bind on the first state
    if (aTextHandler->mLastLine) {
        
        // théo - since the workshop in june 2014 in Albi we decide to force the script to be flattened
        // but we should review all the #TTState and #TTScript architecture to improve this
        for (TTUInt32 i = 0; i < mNames.size(); i++) {
            
            TTSymbol stateName = mNames[i];
            
            if (!mStates.lookup(stateName, v)) {
                
                TTDictionary aState = v[0];
                TTValue none;
                // TODO : read state from text
                //aState.send("ReadFromText", inputValue, none);
            }
        }
        
        // try to set the former current as current
        mCurrent = mLastCurrent;
        if (!mStates.lookup(mCurrent, v))
            mCurrentState = v[0];
        
        // else bind on the first state
        else if (mNames.size()) {
            
            mCurrent = mNames[0];
            if (!mStates.lookup(mCurrent, v))
                mCurrentState = v[0];
        }
        
        notifyNamesObservers();
        
        return kTTErrNone;
    }

	
	return kTTErrGeneric;
}

TTErr TTStateManager::notifyNamesObservers()
{
	TTAttributePtr	anAttribute = NULL;
	TTErr			err;
	
	err = this->findAttribute(kTTSym_names, &anAttribute);
	
	if (!err)
		anAttribute->sendNotification(kTTSym_notify, mNames);	// we use kTTSym_notify because we know that observers are TTCallback
	
	return kTTErrNone;
}

TTAddressItemPtr TTStateManager::getNamespace()
{
    TTValue v;
    TTAddressItemPtr aSelection = TTModularSelectionLookup(mNamespace);
    
	if (!aSelection) {
        
        TTModularApplicationManager->getAttributeValue(TTSymbol("applicationNames"), v);
        
        // fill the default namespace with the local directory
        if (v.size() == 1) {
            
            accessApplicationLocalDirectory->fillAddressItem(mDefaultNamespace);
            
        }
        // fill the default namespace with all directories
        else {
            
            TTSymbol            applicationName;
            TTAddressItemPtr    applicationItem;
            
            for (TTUInt32 i = 0; i < v.size(); i++) {
                
                applicationName = v[i];
                
                mDefaultNamespace->append(TTAddress(applicationName), &applicationItem);
                
                accessApplicationDirectory(applicationName)->fillAddressItem(applicationItem);
            }
        }
        
        aSelection = mDefaultNamespace;
    }
    
    return aSelection;
}

#if 0
#pragma mark -
#pragma mark Some Methods
#endif
