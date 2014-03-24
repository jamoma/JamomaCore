/** @file
 *
 * @ingroup modularLibrary
 *
 * @brief Handles #TTApplication and #Protocol instances
 *
 * @see TTApplication, ProtocolLib
 *
 * @authors Théo de la Hogue
 *
 * @copyright Copyright © 2010-2014, Théo de la Hogue @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTApplicationManager.h"
#include "Protocol.h"
#include <libxml/encoding.h>
#include <libxml/xmlwriter.h>
#include <libxml/xmlreader.h>

#define thisTTClass			TTApplicationManager
#define thisTTClassName		"ApplicationManager"
#define thisTTClassTags		"application, manager"

TT_MODULAR_CONSTRUCTOR,
mApplicationLocal(NULL),
mApplicationCurrent(NULL),
mApplicationObserversMutex(NULL),
mCurrentProtocol(NULL)
{
    TT_ASSERT("TTModularApplicationManager is NULL", TTModularApplicationManager == NULL);
    
    // application attributes
	addAttribute(Applications, kTypePointer);
	addAttributeProperty(Applications, readOnly, YES);
	addAttributeProperty(Applications, hidden, YES);
	
	addAttribute(ApplicationLocal, kTypeObject);
	
	registerAttribute(TTSymbol("applicationNames"), kTypeLocalValue, NULL, (TTGetterMethod)& TTApplicationManager::getApplicationNames);
    registerAttribute(TTSymbol("applicationLocalName"), kTypeLocalValue, NULL, (TTGetterMethod)& TTApplicationManager::getApplicationLocalName);
    
    // protocol attributes
	registerAttribute(TTSymbol("protocolNames"), kTypeLocalValue, NULL, (TTGetterMethod)& TTApplicationManager::getProtocolNames);
	
    // application messages
	addMessageWithArguments(ApplicationInstantiateLocal);
    addMessageWithArguments(ApplicationInstantiateDistant);
	addMessageWithArguments(ApplicationRelease);
    addMessageWithArguments(ApplicationFind);
	
	addMessageWithArguments(ApplicationDiscover);
	addMessageProperty(ApplicationDiscover, hidden, YES);
    
    addMessageWithArguments(ApplicationDiscoverAll);
	addMessageProperty(ApplicationDiscoverAll, hidden, YES);
	
	addMessageWithArguments(ApplicationGet);
	addMessageProperty(ApplicationGet, hidden, YES);
	
	addMessageWithArguments(ApplicationSet);
	addMessageProperty(ApplicationSet, hidden, YES);
	
	addMessageWithArguments(ApplicationListen);
	addMessageProperty(ApplicationListen, hidden, YES);
	
	addMessageWithArguments(ApplicationListenAnswer);
	addMessageProperty(ApplicationListenAnswer, hidden, YES);
    
    // protocol messages
    addMessageWithArguments(ProtocolInstantiate);
	addMessageWithArguments(ProtocolRelease);
    addMessageWithArguments(ProtocolFind);
	
	addMessageWithArguments(ProtocolScan);
	addMessageWithArguments(ProtocolRun);
	addMessageWithArguments(ProtocolStop);
	
	// needed to be handled by a TTXmlHandler
	addMessageWithArguments(WriteAsXml);
	addMessageProperty(WriteAsXml, hidden, YES);
	
	addMessageWithArguments(ReadFromXml);
	addMessageProperty(ReadFromXml, hidden, YES);
	
	// create a ApplicationObservers table and protect it from multithreading access
	// why ? because observers could disappear when they know an application is destroyed
	mApplicationObservers.setThreadProtection(true);
	mApplicationObserversMutex = new TTMutex(true);
    
    // filled the TTModularApplicationManager pointer
    TTModularApplicationManager = this;
}

#if 0
#pragma mark -
#pragma mark Destructor
#endif

TTApplicationManager::~TTApplicationManager()
{
	TTValue         v, keys;
	TTSymbol        name;
	TTObjectBasePtr	anObject;
	TTErr           err;
	
    // release each application
	mApplications.getKeys(keys);
	for (TTUInt16 i = 0; i < keys.size(); i++) {
		
		name = keys[i];
		err = mApplications.lookup(name, v);
		
		if (!err) {
			anObject = v[0];
			TTObjectBaseRelease(&anObject);
		}
	}
    
    // release each protocol
	mProtocols.getKeys(keys);
	for (TTUInt16 i = 0; i < keys.size(); i++) {
		
		name = keys[i];
		err = mProtocols.lookup(name, v);
		
		if (!err) {
			anObject = v[0];
			TTObjectBaseRelease(&anObject);
		}
	}
    
    delete mApplicationObserversMutex;
    
    // reset the TTModularApplicationManager pointer
    TTModularApplicationManager = NULL;
}

#if 0
#pragma mark -
#pragma mark Application accesors
#endif

TTErr TTApplicationManager::getApplicationNames(TTValue& returnedApplicationNames)
{
	return mApplications.getKeys(returnedApplicationNames);
}

TTErr TTApplicationManager::getApplicationLocalName(TTValue& returnedApplicationLocalName)
{
    if (mApplicationLocal)
        return mApplicationLocal->getAttributeValue(kTTSym_name, returnedApplicationLocalName);
    
    else
        return kTTErrGeneric;
}

TTErr TTApplicationManager::getApplicationLocal(TTValue& returnedApplicationLocal)
{
    if (mApplicationLocal) {
        
        returnedApplicationLocal = TTObjectBasePtr(mApplicationLocal);
        return kTTErrNone;
    }
    else
        return kTTErrGeneric;
}

#if 0
#pragma mark -
#pragma mark Protocol accesors
#endif

TTErr TTApplicationManager::getProtocolNames(TTValue& value)
{
	return mProtocols.getKeys(value);
}

#if 0
#pragma mark -
#pragma mark Application factory
#endif

TTErr TTApplicationManager::ApplicationInstantiateLocal(const TTValue& inputValue, TTValue& outputValue)
{
    TTValue             v, none;
    TTSymbol            applicationName;
    TTObjectBasePtr     anApplication = NULL;
    
    // can't register two local applications
    if (mApplicationLocal != NULL)
        return kTTErrGeneric;
    
    if (inputValue.size() == 1) {
        
        if (inputValue[0].type() == kTypeSymbol) {
            
            applicationName = inputValue[0];
            
            // check if the new application name doesn't exist
            if (!mApplications.lookup(applicationName, v)) {
                
                TTLogError("%s application already exists\n", applicationName.c_str());
                return kTTErrGeneric;
            }
            
            // create an application
            TTObjectBaseInstantiate(kTTSym_Application, &anApplication, none);
            anApplication->setAttributeValue(kTTSym_name, applicationName);
            
            // register the application as any application
            mApplications.append(applicationName, anApplication);
            
            // register it as the local application
            mApplicationLocal = TTApplicationPtr(anApplication);
            
            // return the application back
            outputValue = anApplication;
            
            // notify applications observer that an application has been instantiated
            notifyApplicationObservers(applicationName, anApplication, kApplicationInstantiated);
            
            TTLogMessage("%s application instantiated\n", applicationName.c_str());
            
            return kTTErrNone;
        }
    }
    
    return kTTErrGeneric;
}

TTErr TTApplicationManager::ApplicationInstantiateDistant(const TTValue& inputValue, TTValue& outputValue)
{
    TTValue             v, none;
    TTSymbol            applicationName;
    TTObjectBasePtr     anApplication = NULL;
    
    if (inputValue.size() == 1) {
        
        if (inputValue[0].type() == kTypeSymbol) {
            
            applicationName = inputValue[0];
            
            // check if the new application name doesn't exist
            if (!mApplications.lookup(applicationName, v)) {
                
                TTLogError("%s application already exists\n", applicationName.c_str());
                return kTTErrGeneric;
            }
            
            // create an application
            TTObjectBaseInstantiate(kTTSym_Application, &anApplication, none);
            anApplication->setAttributeValue(kTTSym_name, applicationName);
            
            // register the application as any application
            mApplications.append(applicationName, anApplication);
            
            // return the application back
            outputValue = anApplication;
            
            // notify applications observer that an application has been instantiated
            notifyApplicationObservers(applicationName, anApplication, kApplicationInstantiated);
            
            TTLogMessage("%s application instantiated\n", applicationName.c_str());
            return kTTErrNone;
        }
    }
    
    return kTTErrGeneric;
}

TTErr TTApplicationManager::ApplicationRelease(const TTValue& inputValue, TTValue& outputValue)
{
    TTValue				v;
	TTSymbol			applicationName;
	TTObjectBasePtr     anApplication;
	TTErr				err;
    
    if (inputValue.size() == 1) {
        
        if (inputValue[0].type() == kTypeSymbol) {
            
            applicationName = inputValue[0];
	
            err = mApplications.lookup(applicationName, v);
	
            if (!err) {
                
                anApplication = v[0];
		
                // notify applications observer that an application will be removed
                notifyApplicationObservers(applicationName, anApplication, kApplicationReleased);
                
                // if the application is the local one : forget it
                if (anApplication == mApplicationLocal)
                    mApplicationLocal = NULL;
                
                // unregister the application
                mApplications.remove(applicationName);
                
                // release the application
                TTObjectBaseRelease(&anApplication);
                
                TTLogMessage("%s application released\n", applicationName.c_str());
                return kTTErrNone;
            }
            
            TTLogError("%s application doesn't exist\n", applicationName.c_str());
            return err;
        }
    }
	
	return kTTErrGeneric;
}

TTErr TTApplicationManager::ApplicationRename(const TTValue& inputValue, TTValue& outputValue)
{
    if (inputValue.size() == 2) {
        
        if (inputValue[0].type() == kTypeSymbol && inputValue[1].type() == kTypeSymbol) {
            
            TTValue     v;
            TTSymbol    oldApplicationName = inputValue[0];
            TTSymbol    newApplicationName = inputValue[1];
            
            // check if the new application name doesn't exist
            if (!mApplications.lookup(newApplicationName, v)) {
                
                TTLogError("%s application already exists\n", newApplicationName.c_str());
                return kTTErrGeneric;
            }
            
            if (!mApplications.lookup(oldApplicationName, v)) {
                
                TTObjectBasePtr anApplication = v[0];
                
                anApplication->setAttributeValue(kTTSym_name, newApplicationName);
                
                // notify applications observer that an application will be removed
                notifyApplicationObservers(oldApplicationName, anApplication, kApplicationReleased);
                
                mApplications.remove(oldApplicationName);
                mApplications.append(newApplicationName, v);
                
                // notify applications observer that an application has been instantiated
                notifyApplicationObservers(newApplicationName, anApplication, kApplicationInstantiated);
                
                return kTTErrNone;
            }
        }
    }
    
    return kTTErrGeneric;
}

TTErr TTApplicationManager::ApplicationFind(const TTValue& inputValue, TTValue& outputValue)
{
    if (inputValue.size()) {
        
        if (inputValue[0].type() == kTypeSymbol) {
            
            TTSymbol applicationName = inputValue[0];
            
            return mApplications.lookup(applicationName, outputValue);
        }
    }
    
    return kTTErrGeneric;
}

TTErr TTApplicationManager::notifyApplicationObservers(TTSymbol anApplicationName, TTObjectBasePtr anApplication, TTApplicationNotificationFlag flag)
{
	unsigned int    i;
	TTValue         hk, lk, o, f, data;
	TTSymbol        key;
	TTListPtr       lk_o;
	TTCallbackPtr   anObserver;
	bool            foundObsv = false;
	
	// if there are observers
	if (!mApplicationObservers.isEmpty()) {
		
		// enable observers protection
		mApplicationObserversMutex->lock();
		
		this->mApplicationObservers.getKeys(hk);
		
		// for each key of mObserver tab
		for (i = 0; i < hk.size(); i++) {
			
            key = hk[i];
			
			// compare the key with the applicationName
			if (key == anApplicationName){
				
				// get the Observers list
				mApplicationObservers.lookup(key, lk);
				lk_o = TTListPtr((TTPtr)lk[0]);
				
				if (!lk_o->isEmpty()) {
					for (lk_o->begin(); lk_o->end(); lk_o->next())
					{
						TTValue dummy;
						
						anObserver = NULL;
						anObserver = TTCallbackPtr((TTObjectBasePtr)lk_o->current()[0]);
						TT_ASSERT("TTApplication observer list member is not NULL", anObserver);
						data.append(anApplicationName);
						data.append(anApplication);
						data.append((TTInt8)flag);
						data.append(TTObjectBasePtr(anObserver));
						anObserver->notify(data, dummy);
					}
					
					foundObsv = true;
				}
			}
		}
		
		// disable observers protection
		mApplicationObserversMutex->unlock();
		
		if (foundObsv)
			return kTTErrNone;
		else
			return kTTErrGeneric;
	}
	else
		return kTTErrGeneric;
}

#if 0
#pragma mark -
#pragma mark Protocol factory
#endif

TTErr TTApplicationManager::ProtocolInstantiate(const TTValue& inputValue, TTValue& outputValue)
{
    TTSymbol        protocolName;
    ProtocolPtr     aProtocolObject = NULL;
    TTObjectBasePtr	activityInCallback, activityOutCallback;
    TTValue         args, none;
    TTErr           err;
    
    if (inputValue.size() == 1) {
        
        if (inputValue[0].type() == kTypeSymbol) {
            
            protocolName = inputValue[0];
			
			// create 2 callbacks to get raw protocol messages back
			activityInCallback = NULL;
			TTObjectBaseInstantiate(TTSymbol("callback"), &activityInCallback, none);
			activityInCallback->setAttributeValue(kTTSym_baton, protocolName);
			activityInCallback->setAttributeValue(kTTSym_function, TTPtr(&TTApplicationManagerProtocolActivityInCallback));
			
			activityOutCallback = NULL;
			TTObjectBaseInstantiate(TTSymbol("callback"), &activityOutCallback, none);
			activityOutCallback->setAttributeValue(kTTSym_baton, protocolName);
			activityOutCallback->setAttributeValue(kTTSym_function, TTPtr(&TTApplicationManagerProtocolActivityOutCallback));
			
			// create an instance of a Protocol object
			err = ProtocolLib::createProtocol(protocolName, &aProtocolObject, (TTObjectBasePtr)this, (TTCallbackPtr)activityInCallback, (TTCallbackPtr)activityOutCallback);
			
			if (!err) {
				
				// register the protocol into the application manager
				args = TTObjectBasePtr(aProtocolObject);
				mProtocols.append(protocolName, args);
                
                // return the protocol back
                outputValue = TTObjectBasePtr(aProtocolObject);
				
				TTLogMessage("%s protocol instantiated\n", protocolName.c_str());
                return kTTErrNone;
			}
			
            TTLogMessage("%s protocol can't be instantiated\n", protocolName.c_str());
            return err;
		}
	}
    
    return kTTErrGeneric;
}

TTErr TTApplicationManager::ProtocolRelease(const TTValue& inputValue, TTValue& outputValue)
{
    TTValue				v;
	TTSymbol			protocolName;
	TTObjectBasePtr     aProtocol;
	TTErr				err;
    
    if (inputValue.size()) {
        
        if (inputValue[0].type() == kTypeSymbol) {
		
            protocolName = inputValue[0];

            if (!mProtocols.lookup(protocolName, v)) {
                
                aProtocol = ProtocolPtr((TTObjectBasePtr)v[0]);
                TTObjectBaseRelease(TTObjectBaseHandle(&aProtocol));
                return kTTErrNone;
            }
            
            TTLogError("%s protocol doesn't exist\n", protocolName.c_str());
            return err;
        }
	}
    
    return kTTErrGeneric;
}

TTErr TTApplicationManager::ProtocolFind(const TTValue& inputValue, TTValue& outputValue)
{
    if (inputValue.size()) {
        
        if (inputValue[0].type() == kTypeSymbol) {
            
            TTSymbol protocolName = inputValue[0];
            
            return mProtocols.lookup(protocolName, outputValue);
        }
    }
    
    return kTTErrGeneric;
}

#if 0
#pragma mark -
#pragma mark Application features
#endif

TTErr TTApplicationManager::ApplicationDiscover(const TTValue& inputValue, TTValue& outputValue)
{
	TTNodeDirectoryPtr	directory;
	TTAddress           whereToDiscover;
    TTSymbol            *returnedType = NULL;
	TTValuePtr			returnedChildren;
	TTValuePtr			returnedAttributes;
	
	whereToDiscover = inputValue[0];
	
	returnedType = (TTSymbol*)((TTPtr)outputValue[0]);
	returnedChildren = TTValuePtr((TTPtr)outputValue[1]);
	returnedAttributes = TTValuePtr((TTPtr)outputValue[2]);
	
	TTList				nodeList, childList;
	TTNodePtr			firstNode, aNode;
	TTAddress			nodeAddress;
	TTSymbol			objectType;
	TTObjectBasePtr		anObject;
	TTErr				err;
	
	directory = accessApplicationDirectoryFrom(whereToDiscover);
	if (!directory)
		return kTTErrGeneric;
	
	err = directory->Lookup(whereToDiscover, nodeList, &firstNode);
	
    // if the address to discover exist : fill the answer
	if (!err) {
		
		firstNode->getChildren(S_WILDCARD, S_WILDCARD, childList);
		
        *returnedType = kTTSym_none;
        
        // check if there is an object
		anObject = firstNode->getObject();
		if (anObject) {
            
            // fill returned type
            objectType = anObject->getName();
            
            if (objectType != kTTSymEmpty)
                *returnedType = objectType;
            
            // fill returned attributes
			anObject->getAttributeNames(*returnedAttributes);
        }
        
        // sort children by priority
        childList.sort(&compareNodePriorityThenNameThenInstance);
		
		// fill returned children names
		for (childList.begin(); childList.end(); childList.next()) {
			
			// get the returned node
			aNode = TTNodePtr((TTPtr)childList.current()[0]);
			
			// get the relative address
			aNode->getAddress(nodeAddress, whereToDiscover);
			returnedChildren->append(nodeAddress);
		}
		
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

TTErr TTApplicationManager::ApplicationDiscoverAll(const TTValue& inputValue, TTValue& outputValue)
{
    TTNodeDirectoryPtr	directory;
	TTAddress           whereToDiscover;
	
	whereToDiscover = inputValue[0];
	
	TTNodePtr			aNode;
	TTErr				err;
	
	directory = accessApplicationDirectoryFrom(whereToDiscover);
	if (!directory)
		return kTTErrGeneric;
	
	err = directory->getTTNode(whereToDiscover, &aNode);
	
    // if the address to discover exist : fill the answer
	if (!err)
        outputValue = TTPtr(aNode);
    
    return err;
}

TTErr TTApplicationManager::ApplicationGet(const TTValue& inputValue, TTValue& outputValue)
{
	TTNodeDirectoryPtr	directory;
	TTAddress           whereToGet;
	
	whereToGet = inputValue[0];
	
	TTNodePtr			nodeToGet;
	TTObjectBasePtr		anObject;
	TTErr				err;
	
	directory = accessApplicationDirectoryFrom(whereToGet);
	if (!directory)
		return kTTErrGeneric;
	
	// can't allow to use wilcards here because one value is returned
	err = directory->getTTNode(whereToGet, &nodeToGet);
	
	if (!err) {
		
		anObject = nodeToGet->getObject();
		if (anObject)
			return anObject->getAttributeValue(whereToGet.getAttribute(), outputValue);
	}

	return kTTErrGeneric;
}

TTErr TTApplicationManager::ApplicationSet(const TTValue& inputValue, TTValue& outputValue)
{
	TTNodeDirectoryPtr	directory;
	TTAddress           whereToSet;
	TTValuePtr			newValue;
	
	whereToSet = inputValue[0];
	newValue = TTValuePtr((TTPtr)inputValue[1]);
	
	TTList				aNodeList;
	TTNodePtr			nodeToSet;
	TTSymbol			objectType;
	TTObjectBasePtr		anObject;
    TTValue             none;
	TTErr				err;
	
	directory = accessApplicationDirectoryFrom(whereToSet);
	if (!directory)
		return kTTErrGeneric;
	
	// allow to use wilcards
	err = directory->Lookup(whereToSet, aNodeList, &nodeToSet);
	
	if (!err) {
		
		for (aNodeList.begin(); aNodeList.end(); aNodeList.next())
		{
			// get a node from the selection
			nodeToSet = TTNodePtr((TTPtr)aNodeList.current()[0]);
			
			anObject = nodeToSet->getObject();
			objectType = anObject->getName();
			
			// TTData case : for value attribute use Command message
			if (objectType == kTTSym_Data) {
				
				if (whereToSet.getAttribute() == kTTSym_value)
					return anObject->sendMessage(kTTSym_Command, *newValue, none);
				else
					return anObject->setAttributeValue(whereToSet.getAttribute(), *newValue);
			}
			else 
				return anObject->setAttributeValue(whereToSet.getAttribute(), *newValue);
		}
	}
	
	return kTTErrGeneric; // TODO : return an error notification
}

TTErr TTApplicationManager::ApplicationListen(const TTValue& inputValue, TTValue& outputValue)
{
	TTAddress       whereToListen;
	TTSymbol        appToNotify, protocolName;
	TTBoolean       enableListening;
    TTObjectBasePtr anApplication;
	TTObjectBasePtr aProtocol;
	TTValue         v, args, none;
	
	protocolName = inputValue[0];
	appToNotify = inputValue[1];
	whereToListen = inputValue[2];
	enableListening = inputValue[3];
	
    if (!mApplications.lookup(appToNotify, v)) {
        
        anApplication = v[0];
        
        if (!mProtocols.lookup(protocolName, v)) {
            
            aProtocol = v[0];
            
            TTLogDebug("TTApplicationManager::Listen");
            
            // add observer
            if (enableListening) {
                
                args.append(aProtocol);
                args.append(appToNotify);
                args.append(whereToListen);
                
                // start directory listening
                if (whereToListen.getAttribute() == TTSymbol("life")) // TODO : find a better name
                    return anApplication->sendMessage(TTSymbol("AddDirectoryListener"), args, none);
                
                // start attribute listening
                else
                    return anApplication->sendMessage(TTSymbol("AddAttributeListener"), args, none);
            }
            // remove listener
            else {
                
                args.append(appToNotify);
                args.append(whereToListen);
                
                // stop directory listening
                if (whereToListen.getAttribute() == TTSymbol("life")) // TODO : find a better name
                    return anApplication->sendMessage(TTSymbol("RemoveDirectoryListener"), args, none);
                
                // stop attribute listening
                else
                    return anApplication->sendMessage(TTSymbol("RemoveAttributeListener"), args, none);
            }
        }
    }

	return kTTErrGeneric;
}

TTErr TTApplicationManager::ApplicationListenAnswer(const TTValue& inputValue, TTValue& outputValue)
{
    TTObjectBasePtr     anApplication;
	TTSymbol            appAnswering;
	TTAddress           whereComesFrom;
	TTValuePtr          newValue;
	TTValue             v, args, none;
	
	appAnswering = inputValue[0];
	whereComesFrom = inputValue[1];
	newValue = TTValuePtr((TTPtr)inputValue[2]);
	
    if (!mApplications.lookup(appAnswering, v)) {
        
        TTLogDebug("TTApplicationManager::ListenAnswer");
        
        anApplication = v[0];
        
        args.append(whereComesFrom);
        args.append((TTPtr)newValue);
        
        // notify directory updates
        if (whereComesFrom.getAttribute() == TTSymbol("life")) // TODO : find a better name
            return anApplication->sendMessage(TTSymbol("UpdateDirectory"), args, none);
        
        // notify attribute updates
        else
            return anApplication->sendMessage(TTSymbol("UpdateAttribute"), args, none);
    }
	
	return kTTErrGeneric;
}

#if 0
#pragma mark -
#pragma mark Protocol features
#endif

TTErr TTApplicationManager::ProtocolScan(const TTValue& inputValue, TTValue& outputValue)
{
	TTValue     v, allProtocolNames;
	TTSymbol    protocolName;
	ProtocolPtr aProtocol;
	TTErr       err;
	
	// if no name do it for all protocol
	if (inputValue.size()) {
		
		protocolName = inputValue[0];
		
		if (!mProtocols.lookup(protocolName, v)) {
			aProtocol = ProtocolPtr((TTObjectBasePtr)v[0]);
			aProtocol->sendMessage(TTSymbol("Scan"));
		}
	}
	else {
		// Scan each protocol
		mProtocols.getKeys(allProtocolNames);
		for (TTUInt16 i = 0; i < allProtocolNames.size(); i++) {
			
			protocolName = allProtocolNames[i];
			err = mProtocols.lookup(protocolName, v);
			
			if (!err) {
				aProtocol = ProtocolPtr((TTObjectBasePtr)v[0]);
				aProtocol->sendMessage(TTSymbol("Scan"));
			}
		}
	}
	
	return kTTErrNone;
}

TTErr TTApplicationManager::ProtocolRun(const TTValue& inputValue, TTValue& outputValue)
{
	TTValue				v, protocolNames, applicationNames;
	TTSymbol			protocolName, applicationName;
	ProtocolPtr			aProtocol;
	TTApplicationPtr	anApplication;
	TTBoolean			isRegistered;
	TTErr				start;
	
	// if no name do it for all protocol
	if (inputValue.size()) {
		
		protocolName = inputValue[0];
		
		if (!mProtocols.lookup(protocolName, v)) {
			aProtocol = ProtocolPtr((TTObjectBasePtr)v[0]);
			start = aProtocol->sendMessage(kTTSym_Run);
		}
	}
	else {
		
		// Run each protocol
		mProtocols.getKeys(protocolNames);
		for (TTUInt16 i = 0; i < protocolNames.size(); i++) {
			TTValue dummy;
			protocolName = protocolNames[i];
			this->ProtocolRun(protocolName, dummy);
		}
		
		return kTTErrNone;
	}
	
	// if the protocol starts
	if (start == kTTErrNone) {
		
		// notify application obervers for application that use this protocol
		mApplications.getKeys(applicationNames);
		for (TTUInt16 j = 0; j < applicationNames.size(); j++) {
			
			// get application
			applicationName = applicationNames[j];
			mApplications.lookup(applicationName, v);
			anApplication = TTApplicationPtr((TTObjectBasePtr)v[0]);
			
			// don't notify local application observers
			if (anApplication != mApplicationLocal) {
				
				aProtocol->sendMessage(TTSymbol("isRegistered"), applicationName, v);
				isRegistered = v[0];
				
				if (isRegistered)
					notifyApplicationObservers(applicationName, anApplication, kApplicationProtocolStarted);
				
			}
		}
	}
	
	return kTTErrNone;
}

TTErr TTApplicationManager::ProtocolStop(const TTValue& inputValue, TTValue& outputValue)
{
	TTValue				v, protocolNames, applicationNames;
	TTSymbol			protocolName, applicationName;
	ProtocolPtr			aProtocol;
	TTApplicationPtr	anApplication;
	TTBoolean			isRegistered;
	TTErr				stop = kTTErrGeneric;
	
	// if no name do it for all protocol
	if (inputValue.size()) {
		
		protocolName = inputValue[0];
		
		if (!mProtocols.lookup(protocolName, v)) {
			aProtocol = ProtocolPtr((TTObjectBasePtr)v[0]);
			stop = aProtocol->sendMessage(kTTSym_Stop);
		}
	}
	else {
		
		// Stop each protocol
		mProtocols.getKeys(protocolNames);
		for (TTUInt16 i = 0; i < protocolNames.size(); i++) {
			TTValue dummy;
			
			protocolName = protocolNames[i];
			this->ProtocolStop(protocolName, dummy);
		}
		
		return kTTErrNone;
	}
	
	// if the protocol stops
	if (stop == kTTErrNone) {
		
		// notify application obervers for application that use this protocol
		mApplications.getKeys(applicationNames);
		for (TTUInt16 j = 0; j < applicationNames.size(); j++) {
			
			// get application
			applicationName = applicationNames[j];
			mApplications.lookup(applicationName, v);
			anApplication = TTApplicationPtr((TTObjectBasePtr)v[0]);
			
			// don't notify local application observers
			if (anApplication != mApplicationLocal) {
				
				aProtocol->sendMessage(TTSymbol("isRegistered"), applicationName, v);
				isRegistered = v[0];
				
				if (isRegistered)
					notifyApplicationObservers(applicationName, anApplication, kApplicationProtocolStopped);
				
			}
		}
	}
    
	return kTTErrNone;
}

#if 0
#pragma mark -
#pragma mark Backup
#endif

TTErr TTApplicationManager::WriteAsXml(const TTValue& inputValue, TTValue& outputValue)
{
	TTXmlHandlerPtr		aXmlHandler;
	TTSymbol			name;
	TTApplicationPtr	anApplication;
    ProtocolPtr         aProtocol;
    TTValue				keys, v;
    TTUInt16            i;
	
	aXmlHandler = TTXmlHandlerPtr((TTObjectBasePtr)inputValue[0]);
    
    // Write each protocol
    xmlTextWriterWriteComment((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "protocols setup");
    
	mProtocols.getKeys(keys);
	for (i = 0; i < keys.size(); i++) {
		
		name = keys[i];
		mProtocols.lookup(name, v);
		aProtocol = ProtocolPtr((TTObjectBasePtr)v[0]);
        
        writeProtocolAsXml(aXmlHandler, aProtocol);
	}
	
	// Write each application
    xmlTextWriterWriteComment((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "applications namespace");
    
	mApplications.getKeys(keys);
	for (i = 0; i < keys.size(); i++) {
		
		name = keys[i];
		mApplications.lookup(name, v);
		anApplication = TTApplicationPtr((TTObjectBasePtr)v[0]);
		
		v = TTValue(anApplication);
		aXmlHandler->setAttributeValue(kTTSym_object, v);
		aXmlHandler->sendMessage(TTSymbol("Write"));
	}
	
	return kTTErrNone;
}

TTErr TTApplicationManager::writeProtocolAsXml(TTXmlHandlerPtr aXmlHandler, ProtocolPtr aProtocol)
{
    TTSymbol        name;
    TTValue         v, nameList, parametersNames;
    TTString        aString;
    TTUInt8         i, j;
    TTHashPtr       parametersTable;
    TTErr           err;
    
    // Start "protocol" xml node
    xmlTextWriterStartElement((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "protocol");
    
    // Write protocol name
    name = aProtocol->getName();
    
    xmlTextWriterWriteAttribute((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "name", BAD_CAST name.c_str());
    
    // Start an xml node for each application registered to this protocol
    mApplications.getKeys(nameList);
    
    for (i = 0; i < nameList.size(); i++)
    {
        name = nameList[i];
        
        v = name;
        err = aProtocol->getAttributeValue(TTSymbol("applicationParameters"), v);
        
        // if the application is registered to this protocol
        if (!err) {
            
            // Start an xml node for distant application parameters
            xmlTextWriterStartElement((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST name.c_str());
            
            parametersTable = TTHashPtr((TTPtr)v[0]);
            
            parametersTable->getKeys(parametersNames);
            
            for (j = 0; j < parametersNames.size(); j++)
            {
                name = parametersNames[j];
                
                parametersTable->lookup(name, v);
                
                v.toString();
                aString = TTString(v[0]);
                
                xmlTextWriterWriteAttribute((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST name.c_str(), BAD_CAST aString.data());
            }
            
            // End application parameters xml node
            xmlTextWriterEndElement((xmlTextWriterPtr)aXmlHandler->mWriter);
        }
    }
    
    
    // End "protocol" xml node
    xmlTextWriterEndElement((xmlTextWriterPtr)aXmlHandler->mWriter);
    
    return kTTErrNone;
}

TTErr TTApplicationManager::ReadFromXml(const TTValue& inputValue, TTValue& outputValue)
{
	TTXmlHandlerPtr		aXmlHandler = NULL;	
	TTSymbol			applicationName, currentApplicationName, version, type;
    TTSymbol			protocolName, currentProtocolName, parameterName;
    TTHashPtr           hashParameters;
	TTValue				v, args, applicationNames, protocolNames, parameterValue, out, none;
    TTUInt16            i, j;
    TTErr               err;
	
	aXmlHandler = TTXmlHandlerPtr((TTObjectBasePtr)inputValue[0]);
	if (!aXmlHandler)
		return kTTErrGeneric;
	
	// switch on the name of the XML node
	
	// starts reading
	if (aXmlHandler->mXmlNodeName == kTTSym_xmlHandlerReadingStarts) {
		
		// stop protocol reception threads
		ProtocolStop(v, out);
        
        // unregister all applications from all protocols
        mProtocols.getKeys(protocolNames);
		for (i = 0; i < protocolNames.size(); i++) {
			
			protocolName = protocolNames[i];
			mProtocols.lookup(protocolName, v);
			mCurrentProtocol = ProtocolPtr((TTObjectBasePtr)v[0]);
			
			mApplications.getKeys(applicationNames);
            for (j = 0; j < applicationNames.size(); j++)
                mCurrentProtocol->sendMessage(TTSymbol("UnregisterApplication"), applicationNames[j], none);
            
		}
		
		// remove all applications except the local one
		mApplications.getKeys(applicationNames);
		for (i = 0; i < applicationNames.size(); i++) {
			
			applicationName = applicationNames[i];
			mApplications.lookup(applicationName, v);
			mApplicationCurrent = TTApplicationPtr((TTObjectBasePtr)v[0]);
			
			if (mApplicationCurrent != mApplicationLocal) {
				TTObjectBaseRelease(TTObjectBaseHandle(&mApplicationCurrent));
				mApplications.remove(applicationName);
			}
		}
        
        mApplicationCurrent = NULL;
        mCurrentProtocol = NULL;
		
		return kTTErrNone;
	}
	
	// ends reading
	if (aXmlHandler->mXmlNodeName == kTTSym_xmlHandlerReadingEnds) {
		
		// start protocol reception threads
		ProtocolRun(v, out);
		
		return kTTErrNone;
	}
	
	// comment node
	if (aXmlHandler->mXmlNodeName == TTSymbol("comment"))
		return kTTErrNone;
    
    // protocol node
    if (aXmlHandler->mXmlNodeName == TTSymbol("protocol")) {
        
        // get the protocol name
        xmlTextReaderMoveToAttribute((xmlTextReaderPtr)aXmlHandler->mReader, (const xmlChar*)("name"));
        aXmlHandler->fromXmlChar(xmlTextReaderValue((xmlTextReaderPtr)aXmlHandler->mReader), v);
        
        if (v.size() == 1)
            if (v[0].type() == kTypeSymbol)
                protocolName = v[0];
        
        // if it is the end of a "protocol" xml node
        if (!aXmlHandler->mXmlNodeStart && mCurrentProtocol) {
            
            mCurrentProtocol->getAttributeValue(kTTSym_name, v);
            currentProtocolName = v[0];
            
            if (protocolName == currentProtocolName) {
                mCurrentProtocol = NULL;
                return kTTErrNone;
            }
        }
        
        // if the protocol exists and if the node is not empty : get it and use it
		if (!mProtocols.lookup(protocolName, v) && !aXmlHandler->mXmlNodeIsEmpty)
			mCurrentProtocol = ProtocolPtr((TTObjectBasePtr)v[0]);
        
        return kTTErrNone;
    }
    
    if (mCurrentProtocol) {
        
        // the node name is the name of an application
        
        // register the application to the current protocol
        v = TTValue(aXmlHandler->mXmlNodeName);
        mCurrentProtocol->sendMessage(TTSymbol("RegisterApplication"), v, none);
        
        // get parameters table
        err = mCurrentProtocol->getAttributeValue(TTSymbol("applicationParameters"), v);
        
        if (!err) {
            
            hashParameters = TTHashPtr((TTPtr)v[0]);
            
            // get all protocol attributes and their value for this application
            while (xmlTextReaderMoveToNextAttribute((xmlTextReaderPtr)aXmlHandler->mReader) == 1) {
                
                // get parameter's name
                aXmlHandler->fromXmlChar(xmlTextReaderName((xmlTextReaderPtr)aXmlHandler->mReader), v);
                
                if (v.size() == 1) {
                    
                    if (v[0].type() == kTypeSymbol) {
                        
                        parameterName = v[0];
                        
                        // get parameter's value
                        aXmlHandler->fromXmlChar(xmlTextReaderValue((xmlTextReaderPtr)aXmlHandler->mReader), parameterValue);
                        
                        // check if parameter exists
                        err = hashParameters->lookup(parameterName, v);
                        
                        if (!err) {
                            
                            // set parameter value
                            hashParameters->remove(parameterName);
                            hashParameters->append(parameterName, parameterValue);
                        }
                    }
                }
            }
            
            // set parameters
            v = TTValue(aXmlHandler->mXmlNodeName);
            v.append(TTPtr(hashParameters));
            mCurrentProtocol->setAttributeValue(TTSymbol("applicationParameters"), v);
        }
        
        return kTTErrNone;
    }

	// application node
	if (aXmlHandler->mXmlNodeName == TTSymbol("application")) {
		
		// get the application name 
		xmlTextReaderMoveToAttribute((xmlTextReaderPtr)aXmlHandler->mReader, (const xmlChar*)("name"));
		aXmlHandler->fromXmlChar(xmlTextReaderValue((xmlTextReaderPtr)aXmlHandler->mReader), v);
        
        if (v.size() == 1)
            if (v[0].type() == kTypeSymbol)
                applicationName = v[0];

		// if it is the end of a "application" xml node
		if (!aXmlHandler->mXmlNodeStart && mApplicationCurrent) {
			mApplicationCurrent->getAttributeValue(kTTSym_name, v);
			currentApplicationName = v[0];
			
			if (applicationName == currentApplicationName) {
				mApplicationCurrent = NULL;
				return kTTErrNone;
			}
		}
		
		// get the application version 
		xmlTextReaderMoveToAttribute((xmlTextReaderPtr)aXmlHandler->mReader, (const xmlChar*)("version"));
		aXmlHandler->fromXmlChar(xmlTextReaderValue((xmlTextReaderPtr)aXmlHandler->mReader), v);
        
        if (inputValue.size() == 1)
            if (v[0].type() == kTypeSymbol)
                version = v[0];
        
        // get the application type
		xmlTextReaderMoveToAttribute((xmlTextReaderPtr)aXmlHandler->mReader, (const xmlChar*)("type"));
		aXmlHandler->fromXmlChar(xmlTextReaderValue((xmlTextReaderPtr)aXmlHandler->mReader), v);
        
        if (inputValue.size() == 1)
            if (v[0].type() == kTypeSymbol)
                type = v[0];
		
		// if the application exists : get it
		if (!mApplications.lookup(applicationName, v))
			mApplicationCurrent = TTApplicationPtr((TTObjectBasePtr)v[0]);
		
		// else create one
		else {
			mApplicationCurrent = NULL;
			args = TTValue(applicationName);
			TTObjectBaseInstantiate(kTTSym_Application, TTObjectBaseHandle(&mApplicationCurrent), args);
			
			args = TTValue(version);
			mApplicationCurrent->setAttributeValue(TTSymbol("version"), args);
            
            args = TTValue(type);
			mApplicationCurrent->setAttributeValue(TTSymbol("type"), args);
		}
		
        // if the node is empty : don't use it
        if (aXmlHandler->mXmlNodeIsEmpty)
            mApplicationCurrent = NULL;
		
		return kTTErrNone;
	}
	
	if (mApplicationCurrent) {
        
        // pass the current application to the XmlHandler to build its directory
        v = TTValue(mApplicationCurrent);
        aXmlHandler->setAttributeValue(kTTSym_object, v);
        return aXmlHandler->sendMessage(TTSymbol("Read"));
    }
    
    return kTTErrNone;
}

#if 0
#pragma mark -
#pragma mark Public methods useful to ease access for other Modular classes
#endif

TTApplicationPtr TTApplicationManager::findApplication(TTSymbol applicationName)
{
    TTValue v;
    
    if (!mApplications.lookup(applicationName, v)) {
        
        return TTApplicationPtr(TTObjectBasePtr(v[0]));
    }
    else {
        
        TTLogError("TTApplicationManager::findApplicationFrom : wrong application name");
        return NULL;
    }
}

TTApplicationPtr TTApplicationManager::getApplicationLocal()
{
    return mApplicationLocal;
}

TTApplicationPtr TTApplicationManager::findApplicationFrom(TTAddress anAddress)
{
    TTSymbol applicationName = anAddress.getDirectory();
    
    if (applicationName != NO_DIRECTORY)
        
        return mApplicationLocal;
    
    else
        
        return findApplication(applicationName);
}

TTValue TTApplicationManager::getApplicationProtocolNames(TTSymbol applicationName)
{
    TTValue         v, keys, result;
	TTSymbol        name;
	TTObjectBasePtr	anObject;
    TTBoolean       registered;
	TTErr           err;
	
    // release each protocol
	mProtocols.getKeys(keys);
	for (TTUInt16 i = 0; i < keys.size(); i++) {
		
		name = keys[i];
		err = mProtocols.lookup(name, v);
		
		if (!err) {
            
			anObject = v[0];
			anObject->sendMessage(TTSymbol("isRegistered"), applicationName, v);
            
            registered = v[0];
            if (registered)
                result.append(name);
		}
	}
    
    return result;
}

ProtocolPtr TTApplicationManager::findProtocol(TTSymbol protocolName)
{
    TTValue v;
    
    if (!mProtocols.lookup(protocolName, v)) {
        
        return ProtocolPtr(TTObjectBasePtr(v[0]));
    }
    else {
        
        TTLogError("TTApplicationManager::findProtocol : wrong protocol name");
        return NULL;
    }
}

#if 0
#pragma mark -
#pragma mark Some Functions
#endif

TTErr TTApplicationManagerAddApplicationObserver(TTSymbol anApplicationName, const TTObjectBase& anObserver)
{
	TTErr		err;
	TTValue		lk;
	TTValue		o = anObserver;
	TTListPtr	lk_o;
	
    // enable observers protection
    TTModularApplicationManager->mApplicationObserversMutex->lock();
    
    // is the key already exists ?
    err = TTModularApplicationManager->mApplicationObservers.lookup(anApplicationName, lk);
    
    // create a new observers list for this address
    if(err == kTTErrValueNotFound){
        lk_o = new TTList();
        lk_o->appendUnique(o);
        
        TTModularApplicationManager->mApplicationObservers.append(anApplicationName, TTValue(lk_o));
    }
    // add it to the existing list
    else{
        lk_o = TTListPtr((TTPtr)lk[0]);
        lk_o->appendUnique(o);
    }
    
    // disable observers protection
    TTModularApplicationManager->mApplicationObserversMutex->unlock();
    
    return kTTErrNone;
}

TTErr TTApplicationManagerRemoveApplicationObserver(TTSymbol anApplicationName, const TTObjectBase& anObserver)
{
	TTErr		err;
	TTValue		lk, o, v;
	TTListPtr	lk_o;
	
    // enable observers protection
    TTModularApplicationManager->mApplicationObserversMutex->lock();
    
    // is the key exists ?
    err = TTModularApplicationManager->mApplicationObservers.lookup(anApplicationName, lk);
    
    if(err != kTTErrValueNotFound){
        // get the observers list
        lk_o = TTListPtr((TTPtr)lk[0]);
        
        // is observer exists ?
        o = TTValue(anObserver);
        err = lk_o->findEquals(o, v);
        if(!err)
            lk_o->remove(v);
        
        // was it the last observer ?
        if(lk_o->getSize() == 0) {
            // remove the key
            TTModularApplicationManager->mApplicationObservers.remove(anApplicationName);
        }
    }
    
    // disable observers protection
    TTModularApplicationManager->mApplicationObserversMutex->unlock();
    
    return err;
}

TTErr TTApplicationManagerProtocolActivityInCallback(const TTValue& baton, const TTValue& data)
{
	TTSymbol	aProtocolName;
	TTValue		v;
	
	// unpack baton
	aProtocolName = baton[0];
	
	// set the activityIn attribute of the local application
	v = data;
	v.prepend(aProtocolName);
	TTModularApplicationManager->mApplicationLocal->setAttributeValue(kTTSym_activityIn, v);
	
	return kTTErrNone;
}

TTErr TTApplicationManagerProtocolActivityOutCallback(const TTValue& baton, const TTValue& data)
{
	TTSymbol	aProtocolName;
	TTValue		v;
	
	// unpack baton
	aProtocolName = baton[0];
	
	// set the activityOut attribute of the local application
	v = data;
	v.prepend(aProtocolName);
	TTModularApplicationManager->mApplicationLocal->setAttributeValue(kTTSym_activityOut, v);
	
	return kTTErrNone;
}
