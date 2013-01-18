/*
 * TTObject to handle application data structure
 * like a TTNodeDirectory and a hash tables of names
 *
 * Copyright © 2010, Théo de la Hogue
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTApplication.h"
#include <libxml/encoding.h>
#include <libxml/xmlwriter.h>
#include <libxml/xmlreader.h>

#define thisTTClass			TTApplication
#define thisTTClassName		"Application"
#define thisTTClassTags		"application"


TT_MODULAR_CONSTRUCTOR,
mDebug(NO),
mDirectory(NULL),
mName(kTTSymEmpty),
mVersion(kTTSymEmpty),
mAuthor(kTTSymEmpty),
mActivity(NO),
mDirectoryListenersCache(NULL),
mAttributeListenersCache(NULL),
mAppToTT(NULL),
mTTToApp(NULL),
mTempAddress(kTTAdrsEmpty)
{
	mName = arguments[0];
	
	addAttributeWithSetter(Name, kTypeSymbol);
	
	addAttribute(Version, kTypeSymbol);
	addAttributeProperty(Version, readOnly, YES);
	
	addAttribute(Author, kTypeSymbol);
	addAttributeProperty(Author, readOnly, YES);
	
	addAttribute(Debug, kTypeBoolean);
	
	addAttributeWithSetter(Activity, kTypeBoolean);
	
	addAttributeWithSetter(ActivityIn, kTypeLocalValue);
	addAttributeProperty(ActivityIn, hidden, YES);
	
	addAttributeWithSetter(ActivityOut, kTypeLocalValue);
	addAttributeProperty(ActivityOut, hidden, YES);
	
	addAttribute(Directory, kTypePointer);
	addAttributeProperty(Directory, hidden, YES);
	addAttributeProperty(Directory, readOnly, YES);
    
    addMessage(DirectoryBuild);
    addMessageWithArguments(DirectoryObserve);
	
    // relative to directory and attribute listening
	addMessageWithArguments(AddDirectoryListener);
	addMessageProperty(AddDirectoryListener, hidden, YES);
	
	addMessageWithArguments(AddAttributeListener);
	addMessageProperty(AddAttributeListener, hidden, YES);
	
	addMessageWithArguments(RemoveDirectoryListener);
	addMessageProperty(RemoveDirectoryListener, hidden, YES);
	
	addMessageWithArguments(RemoveAttributeListener);
	addMessageProperty(RemoveAttributeListener, hidden, YES);
	
	addMessageWithArguments(UpdateDirectory);
	addMessageProperty(UpdateDirectory, hidden, YES);
	
	addMessageWithArguments(UpdateAttribute);
	addMessageProperty(UpdateAttribute, hidden, YES);
	
	// relative to symbol conversion
	addAttributeWithGetter(AllAppNames, kTypeLocalValue);
	addAttributeProperty(AllAppNames, hidden, YES);
	addAttributeProperty(AllAppNames, readOnly, YES);
	
	addAttributeWithGetter(AllTTNames, kTypeLocalValue);
	addAttributeProperty(AllTTNames, hidden, YES);
	addAttributeProperty(AllTTNames, readOnly, YES);
	
	addMessageWithArguments(ConvertToAppName);
	addMessageProperty(ConvertToAppName, hidden, YES);
	
	addMessageWithArguments(ConvertToTTName);
	addMessageProperty(ConvertToTTName, hidden, YES);
	
	
	// needed to be handled by a TTXmlHandler
	addMessageWithArguments(WriteAsXml);
	addMessageProperty(WriteAsXml, hidden, YES);
	
	addMessageWithArguments(ReadFromXml);
	addMessageProperty(ReadFromXml, hidden, YES);
	
	mDirectory = new TTNodeDirectory(mName);
	mDirectory->getRoot()->setObject(this);
	TT_ASSERT("NodeDirectory created successfully", mDirectory != NULL);
	
	mAppToTT = new TTHash();
	mTTToApp = new TTHash();
	
	mDirectoryListenersCache = new TTHash();
	mAttributeListenersCache = new TTHash();
	
	// add itself to the application manager
	TTValue args = TTValue((TTPtr)this);
	TTModularApplications->sendMessage(TTSymbol("ApplicationAdd"), args, kTTValNONE);
}

TTApplication::~TTApplication()
{
	TTValue hk, v;
	
	// remove itself to the application manager
	TTValue args = TTValue(mName);
	TTModularApplications->sendMessage(TTSymbol("ApplicationRemove"), args, kTTValNONE);
	
	// TODO : delete observers
	
	delete mDirectory;
	delete mTTToApp;
	delete mAppToTT;
}

TTErr TTApplication::setName(const TTValue& value)
{
	// remove itself to the application manager
	TTValue args = TTValue(mName);
	TTModularApplications->sendMessage(TTSymbol("ApplicationRemove"), args, kTTValNONE);
	
	mName = value;
	mDirectory->setName(mName);
	
	// add itself to the application manager
	args = TTValue((TTPtr)this);
	return TTModularApplications->sendMessage(TTSymbol("ApplicationAdd"), args, kTTValNONE);
}

TTErr TTApplication::setActivity(const TTValue& value)
{
	TTValue		protocols = getApplicationProtocols(mName);
	TTSymbol    protocolName;
	
	mActivity = value;
	
	for (TTUInt32 i=0; i<protocols.size(); i++) {
		
		protocolName = protocols[i];
		getProtocol(protocolName)->setAttributeValue(kTTSym_activity, mActivity);
	}
	
	return kTTErrNone;
}

TTErr TTApplication::setActivityIn(const TTValue& value)
{
	TTAttributePtr	anAttribute;
	TTErr			err = kTTErrNone;
	
	mActivityIn = value;
	
	err = this->findAttribute(kTTSym_activityIn, &anAttribute);
	if (!err)
		anAttribute->sendNotification(kTTSym_notify, mActivityIn);	// we use kTTSym_notify because we know that observers are TTCallback
	
	return kTTErrNone;
}

TTErr TTApplication::setActivityOut(const TTValue& value)
{
	TTAttributePtr	anAttribute;
	TTErr			err = kTTErrNone;
	
	mActivityOut = value;
	
	err = this->findAttribute(kTTSym_activityOut, &anAttribute);
	if (!err)
		anAttribute->sendNotification(kTTSym_notify, mActivityOut);	// we use kTTSym_notify because we know that observers are TTCallback
	
	return kTTErrNone;
}

TTErr TTApplication::DirectoryBuild()
{
    TTSymbol		protocolName;
    ProtocolPtr     aProtocol;
	TTValue			v, protocolNames;
    
    // only for distant application
    if (mName == getLocalApplicationName)
        return kTTErrGeneric;
    
    // a distant application should have one protocol
    protocolNames = getApplicationProtocols(mName);
    protocolNames.get(0, protocolName);

    aProtocol = (ProtocolPtr)getProtocol(protocolName);
    if (aProtocol) {
        
        // TODO : clear the directory without deleting observers
        
        return buildNode(aProtocol, kTTAdrsRoot);
    }
    
    return kTTErrGeneric;
}

TTErr TTApplication::buildNode(ProtocolPtr aProtocol, TTAddress anAddress)
{
    TTAddress   nextAddress, childAddress;
    TTSymbol    returnedType;
    TTValue     returnedChildren;
    TTValue     returnedAttributes;
    TTMirrorPtr aMirror;
    TTErr       err;
    
    err = aProtocol->SendDiscoverRequest(mName, anAddress, returnedType, returnedChildren, returnedAttributes); // to - the returnedAttributes field is useless !
    
    if (!err) {
        
        if (anAddress != kTTAdrsRoot)
            aMirror = appendMirror(aProtocol, anAddress, returnedType);
        
        for (TTUInt32 i = 0; i < returnedChildren.getSize(); i++) {
            
            returnedChildren.get(i, childAddress);
            nextAddress = anAddress.appendAddress(childAddress);
            
            buildNode(aProtocol, nextAddress);
        }
    }
    
    return err;
}

TTErr TTApplication::DirectoryObserve(const TTValue& inputValue, TTValue& outputValue)
{
    TTSymbol		protocolName;
    ProtocolPtr     aProtocol;
	TTValue			v, protocolNames;
    TTBoolean       enable;
    
    inputValue.get(0, enable);
    
    // only for distant application
    if (mName == getLocalApplicationName)
        return kTTErrGeneric;
    
    // a distant application should have one protocol
    protocolNames = getApplicationProtocols(mName);
    protocolNames.get(0, protocolName);
    
    aProtocol = (ProtocolPtr)getProtocol(protocolName);
    if (aProtocol)
        return aProtocol->SendListenRequest(mName, kTTAdrsRoot.appendAttribute(TTSymbol("life")), enable);
    
    return kTTErrGeneric;
}

TTErr TTApplication::AddDirectoryListener(const TTValue& inputValue, TTValue& outputValue)
{
	TTString		editKey;
	TTSymbol		appToNotify, key;
	TTAddress		whereToListen;
	TTCallbackPtr	returnValueCallback;
	TTValuePtr		returnValueBaton;
	TTValue			cacheElement;
	TTErr			err;
	
	appToNotify = inputValue[1];
	whereToListen = inputValue[2];
	
	editKey = appToNotify.c_str();
	editKey += "<>";
	editKey	+= whereToListen.c_str();
	key = TTSymbol(editKey);
	
	// if this listener doesn't exist yet
	if (mAttributeListenersCache->lookup(key, cacheElement)) {
		
		// prepare a callback based on ProtocolDirectoryCallback
		returnValueCallback = NULL;			// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
		TTObjectInstantiate(TTSymbol("callback"), TTObjectHandle(&returnValueCallback), kTTValNONE);
		
		returnValueBaton = new TTValue();
		*returnValueBaton = inputValue;
		
		returnValueCallback->setAttributeValue(kTTSym_baton, TTPtr(returnValueBaton));
		returnValueCallback->setAttributeValue(kTTSym_function, TTPtr(&ProtocolDirectoryCallback));
		
		err = mDirectory->addObserverForNotifications(whereToListen, returnValueCallback); // ask to be notified for any address below
		
		if (!err) {
			
			// cache the observer in the directoryListenersCache
			cacheElement.append((TTPtr)returnValueCallback);
			return mDirectoryListenersCache->append(key, cacheElement);
		}
		else
			; // TODO : observe the directory in order to add the listener later
	}
    
	return kTTErrGeneric;
}

TTErr TTApplication::RemoveDirectoryListener(const TTValue& inputValue, TTValue& outputValue)
{
	TTString			editKey;
	TTSymbol			appToNotify, key;
	TTAddress			whereToListen;
	TTCallbackPtr		returnValueCallback;
	TTValue				cacheElement;
	
	appToNotify = inputValue[0];
	whereToListen = inputValue[1];
	
	editKey = appToNotify.c_str();
	editKey += "<>";
	editKey	+= whereToListen.c_str();
	key = TTSymbol(editKey);
	
	// if this listener exists
	if (!mDirectoryListenersCache->lookup(key, cacheElement)) {
        
		returnValueCallback = TTCallbackPtr((TTPtr)cacheElement[0]);
		mDirectory->removeObserverForNotifications(whereToListen, returnValueCallback);
		TTObjectRelease(TTObjectHandle(&returnValueCallback));
		return mDirectoryListenersCache->remove(key);
	}
	
	return kTTErrGeneric;
}

TTErr TTApplication::AddAttributeListener(const TTValue& inputValue, TTValue& outputValue)
{
	TTString			editKey;
	TTSymbol			appToNotify, key;
	TTAddress			whereToListen;
	TTList				aNodeList;
	TTNodePtr			nodeToListen;
	TTObjectPtr			anObject, returnValueCallback;
	TTAttributePtr		anAttribute;
	TTValuePtr			returnValueBaton;
	TTValue				cacheElement;
	TTErr				err;
	
	appToNotify = inputValue[1];
	whereToListen = inputValue[2];
	
	editKey = appToNotify.c_str();
	editKey += "<>";
	editKey	+= whereToListen.c_str();
	key = TTSymbol(editKey);
    
	// if this listener doesn't exist yet
	if (mAttributeListenersCache->lookup(key, cacheElement)) {
		
		err = mDirectory->Lookup(whereToListen, aNodeList, &nodeToListen);
		
		if (!err) {
			
			for (aNodeList.begin(); aNodeList.end(); aNodeList.next())
			{
				// get a node from the selection
				nodeToListen = TTNodePtr((TTptr)aNodeList.current()[0]);
				
				anObject = nodeToListen->getObject();
				if (anObject) {
					
					// create an Attribute observer
					anAttribute = NULL;
					err = anObject->findAttribute(whereToListen.getAttribute(), &anAttribute);
					
					if (!err) {
						// prepare a callback based on ProtocolAttributeCallback
						returnValueCallback = NULL;			// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
						TTObjectInstantiate(TTSymbol("callback"), &returnValueCallback, kTTValNONE);
						
						returnValueBaton = new TTValue();
						*returnValueBaton = inputValue;
						
						returnValueCallback->setAttributeValue(kTTSym_baton, TTPtr(returnValueBaton));
						returnValueCallback->setAttributeValue(kTTSym_function, TTPtr(&ProtocolAttributeCallback));
						
						anAttribute->registerObserverForNotifications(*returnValueCallback);
						
						// cache the listener in the attributeListenersCache
						cacheElement.append((TTPtr)returnValueCallback);
					}
				}
			}
			
			return mAttributeListenersCache->append(key, cacheElement);
		}
		else
			; // TODO : observe the directory in order to add the listener later
	}
	
	return kTTErrGeneric;
}

TTErr TTApplication::RemoveAttributeListener(const TTValue& inputValue, TTValue& outputValue)
{
	TTString			editKey;
	TTSymbol			appToNotify, key;
	TTAddress			whereToListen;
	TTList				aNodeList;
	TTNodePtr			nodeToListen;
	TTObjectPtr			anObject, returnValueCallback;
	TTAttributePtr		anAttribute;
	TTValue				cacheElement;
	TTUInt32			i;
	TTErr				err;
	
	appToNotify = inputValue[0];
	whereToListen = inputValue[1];
	
	editKey = appToNotify.c_str();
	editKey += "<>";
	editKey	+= whereToListen.c_str();
	key = TTSymbol(editKey);
    
	// if this listener exists
	if (!mAttributeListenersCache->lookup(key, cacheElement)) {
		
		err = mDirectory->Lookup(whereToListen, aNodeList, &nodeToListen);
		
		if (!err) {
			
			i = 0;
			for (aNodeList.begin(); aNodeList.end(); aNodeList.next())
			{
				// get a node from the selection
				nodeToListen = TTNodePtr((TTptr)aNodeList.current()[0]);
				
				anObject = nodeToListen->getObject();
				if (anObject) {
					
					// delete Attribute observer
					anAttribute = NULL;
					err = anObject->findAttribute(whereToListen.getAttribute(), &anAttribute);
					
					if (!err) {
						
                        returnValueCallback = TTCallbackPtr((TTPtr)cacheElement[i]);
						anAttribute->unregisterObserverForNotifications(*returnValueCallback);
						TTObjectRelease(TTObjectHandle(&returnValueCallback));
						i++;
					}
				}
			}
			
			return mAttributeListenersCache->remove(key);
		}
	}
    
	return kTTErrGeneric;
}

TTErr TTApplication::UpdateDirectory(const TTValue& inputValue, TTValue& outputValue)
{
	TTAddress	whereComesFrom;
	TTValuePtr	newValue;
    TTValue     protocolNames;
	TTSymbol	type, protocolName;;
    TTList      aNodeList;
    TTNodePtr   aNode;
    TTObjectPtr aMirror;
    ProtocolPtr aProtocol;
    TTErr       err;
	
	whereComesFrom = inputValue[0];
	newValue = TTValuePtr((TTPtr)inputValue[1]);
	
	newValue->get(0, type);
    
    err = mDirectory->Lookup(whereComesFrom, aNodeList, &aNode);
	
    // if the node doesn't exist already
	if (type != TTSymbol("delete") && err) {
        
        // a distant application should have one protocol
        protocolNames = getApplicationProtocols(mName);
        protocolNames.get(0, protocolName);
        
        aProtocol = (ProtocolPtr)getProtocol(protocolName);
        if (aProtocol)
            // instantiate Mirror object for distant application
            appendMirror(aProtocol, whereComesFrom, type);
	}
    
    // if the node exists
	else if (!err) {
       
        aMirror = aNode->getObject();
        
        if (aMirror)
            TTObjectRelease(TTObjectHandle(&aMirror));
        
        mDirectory->TTNodeRemove(whereComesFrom);
    }
	
	return kTTErrGeneric;
}

TTErr TTApplication::UpdateAttribute(const TTValue& inputValue, TTValue& outputValue)
{
	TTNodePtr			nodeToUpdate;
	TTAddress			whereComesFrom;
	TTValuePtr			newValue;
	TTMirrorPtr			aMirror;
	TTErr				err;
	
	inputValue[0] whereComesFrom);
	newValue = TTValuePtr((TTPtr)inputValue[1]);
	
	err = mDirectory->getTTNode(whereComesFrom, &nodeToUpdate);
	
	if (!err) {
		
		aMirror = (TTMirrorPtr)nodeToUpdate->getObject();
		if (aMirror)
			if (aMirror->getName() == kTTSym_Mirror)
				return aMirror->updateAttributeValue(whereComesFrom.getAttribute(), *newValue);
	}
	
	return kTTErrGeneric;
}


TTErr TTApplication::getAllAppNames(TTValue& value)
{
	if (mAppToTT->isEmpty())
		value = kTTSymEmpty;
	else
		mAppToTT->getKeys(value);
	
	return kTTErrNone;
}

TTErr TTApplication::getAllTTNames(TTValue& value)
{
	if (mTTToApp->isEmpty())
		value = kTTSymEmpty;
	else
		mTTToApp->getKeys(value);
	
	return kTTErrNone;
}

TTErr TTApplication::ConvertToAppName(const TTValue& inputValue, TTValue& outputValue)
{
	TTValue		c;
	TTSymbol	ttName;
	TTSymbol	appName;
	
	// if there is only 1 symbol : replace value directly by the found one.
	// because it's possible to have conversion containing several appNames for 1 ttname
	if (inputValue.size() == 1)
		if (inputValue[0].type() == kTypeSymbol){
			
			ttName = inputValue[0];
			return this->mTTToApp->lookup(ttName, outputValue);
		}
	
	// else convert each symbol of the value.
	// !!! in this case 1 to many conversion is not handled
	for (TTUInt8 i=0; i<inputValue.size(); i++)
		if (inputValue[i].type() == kTypeSymbol) {
			ttName = inputValue[i];
			if (!this->mTTToApp->lookup(ttName, c)) {
				appName = c[0];
				outputValue[i] = appName;
			}
		}
	
	return kTTErrNone;
}

TTErr TTApplication::ConvertToTTName(const TTValue& inputValue, TTValue& outputValue)
{
	TTValue		c;
	TTSymbol	appName;
	TTSymbol	ttName;
	
	// if there is only 1 symbol : replace value directly by the founded one.
	// because it's possible to have conversion containing several ttNames for 1 appName
	if (inputValue.size() == 1)
		if (inputValue[0].type() == kTypeSymbol){
			
			appName = inputValue[0];
			return this->mAppToTT->lookup(appName, outputValue);
		}
	
	// else convert each symbol of the value.
	// !!! in this case 1 to many conversion is not handled
	for (TTUInt8 i=0; i<inputValue.size(); i++)
		if (inputValue[i].type() == kTypeSymbol) {
			appName = inputValue[i];
			if (!this->mAppToTT->lookup(appName, c)) {
				ttName = c[0];
				outputValue[i] = ttName;
			}
		}
	
	return kTTErrNone;
}

TTErr TTApplication::WriteAsXml(const TTValue& inputValue, TTValue& outputValue)
{
	TTXmlHandlerPtr aXmlHandler;
	
	aXmlHandler = TTXmlHandlerPtr((TTPtr)inputValue[0]);
	
    // Write all the namespace starting from the root of the directory
	if (mDirectory)
        writeNodeAsXml(aXmlHandler, mDirectory->getRoot());
    
	return kTTErrNone;
}

void TTApplication::writeNodeAsXml(TTXmlHandlerPtr aXmlHandler, TTNodePtr aNode)
{
	TTAddress    nameInstance;
	TTSymbol     objectName, attributeName;
	TTObjectPtr  anObject;
	TTValue      attributeNameList, v, c;
	TTList       nodeList;
	TTNodePtr    aChild;
	TTString     aString;
    
    // Write node's object attributes
    anObject = aNode->getObject();
    if (anObject) {
        
        // Filter object type
        if (anObject->getName() == kTTSym_Application ||
            anObject->getName() == kTTSym_Container ||
            anObject->getName() == kTTSym_Data ||
            anObject->getName() == kTTSym_Viewer) {
            
            // Application node case
            if (anObject->getName() == kTTSym_Application) {
                
                xmlTextWriterStartElement((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "application");
                
                // Write attributes
                anObject->getAttributeNames(attributeNameList);
                
                for(TTUInt8 i = 0; i < attributeNameList.size(); i++)
                {
                    attributeName = attributeNameList[i];
                    
                    // Filter attribute names
                    if (attributeName != kTTSym_debug &&
                        attributeName != kTTSym_bypass &&
                        attributeName != kTTSym_activity &&
                        attributeName != kTTSym_activityIn &&
                        attributeName != kTTSym_activityOut) {
                        
                        anObject->getAttributeValue(attributeName, v);
                        
                        v.toString();
                        aString = v[0];
                        
                        xmlTextWriterWriteAttribute((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST attributeName.c_str(), BAD_CAST aString.data());
                    }
                }
            }
            
            // Other node case
            else {
                
                // Write description attribute as an xml comment
                anObject->getAttributeValue(kTTSym_description, v);
                v.toString();
                aString = v[0];
                xmlTextWriterWriteFormatComment((xmlTextWriterPtr)aXmlHandler->mWriter, "%s", BAD_CAST aString.data());
                
                // Start node
                nameInstance = TTAddress(NO_DIRECTORY, NO_PARENT, aNode->getName(), aNode->getInstance(), NO_ATTRIBUTE);
                xmlTextWriterStartElement((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST nameInstance.c_str());
                
                // Write object name attribute
                objectName = anObject->getName();
                if (objectName != kTTSymEmpty)
                    xmlTextWriterWriteAttribute((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "object", BAD_CAST objectName.c_str());
                else
                    xmlTextWriterWriteAttribute((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "object", BAD_CAST kTTSym_none.c_str());
                
                // Write attributes
                anObject->getAttributeNames(attributeNameList);
                
                for(TTUInt8 i = 0; i < attributeNameList.size(); i++)
                {
                    attributeName = attributeNameList[i];
                    
                    // Filter attribute names
                    if (attributeName != kTTSym_description &&
                        attributeName != kTTSym_value &&
                        attributeName != kTTSym_address &&
                        attributeName != kTTSym_bypass &&
                        attributeName != kTTSym_activityIn &&
                        attributeName != kTTSym_activityOut &&
                        attributeName != kTTSym_rampStatus) {
                        
                        anObject->getAttributeValue(attributeName, v);
                        
                        /* Replace TTName by AppName (because object name can be customized in order to have a specific application's namespace)
                         ToAppNames(v, c);
                         
                         c.toString();
                         c[0] aString);
                         */
                        
                        if (v == kTTValNONE)
                            continue;
                        
                        v.toString();
                        aString = v[0];
                        
                        if (aString.empty())
                            continue;
                        
                        xmlTextWriterWriteAttribute((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST attributeName.c_str(), BAD_CAST aString.data());
                    }
                }
                
                // TODO : Write messages ?
                
            }
            
            // Write nodes below
            aNode->getChildren(S_WILDCARD, S_WILDCARD, nodeList);
            
            for (nodeList.begin(); nodeList.end(); nodeList.next())
            {
                aChild = TTNodePtr((TTPtr)nodeList.current()[0]);
                writeNodeAsXml(aXmlHandler, aChild);
            }
            
            // Close node
            xmlTextWriterEndElement((xmlTextWriterPtr)aXmlHandler->mWriter);
            
        }
    }
}

TTErr TTApplication::ReadFromXml(const TTValue& inputValue, TTValue& outputValue)
{
	TTXmlHandlerPtr	aXmlHandler = NULL;
	TTString		anAppKey, aTTKey;
	TTValue			appValue, ttValue, v, nameValue, parameterValue;
	
	aXmlHandler = TTXmlHandlerPtr((TTPtr)inputValue[0]);
	if (!aXmlHandler)
		return kTTErrGeneric;
	
	// Switch on the name of the XML node
	
	// Starts reading
	if (aXmlHandler->mXmlNodeName == kTTSym_start)
        return kTTErrNone;
	
	// Ends reading
	if (aXmlHandler->mXmlNodeName == kTTSym_stop)
		return kTTErrNone;
	
	// Comment Node
	if (aXmlHandler->mXmlNodeName == kTTSym_comment)
		return kTTErrNone;
    
    // Conversion Table node
    if (aXmlHandler->mXmlNodeName == TTSymbol("conversionTable")) {
        
        if (aXmlHandler->mXmlNodeStart)
            mAppToTT = new TTHash();
        
		return kTTErrNone;
	}
	
	// Entry node
	if (aXmlHandler->mXmlNodeName == TTSymbol("entry")) {
        
		// get App Symbol
		if (xmlTextReaderMoveToAttribute((xmlTextReaderPtr)aXmlHandler->mReader, BAD_CAST "App") == 1) {
			aXmlHandler->fromXmlChar(xmlTextReaderValue((xmlTextReaderPtr)aXmlHandler->mReader), appValue);
			v = appValue;
			v.toString();
			anAppKey = v[0];
		}
		
		// get TT Value
		if (xmlTextReaderMoveToAttribute((xmlTextReaderPtr)aXmlHandler->mReader, BAD_CAST "TT") == 1) {
			aXmlHandler->fromXmlChar(xmlTextReaderValue((xmlTextReaderPtr)aXmlHandler->mReader), ttValue);
			v = ttValue;
			v.toString();
			aTTKey = v[0];
		}
		
		mAppToTT->append(TTSymbol(anAppKey), ttValue);		// here we register the entire value to handle 1 to many conversion
		mTTToApp->append(TTSymbol(aTTKey), appValue);			// here we register the entire value to handle 1 to many conversion
        
        return kTTErrNone;
	}
	
	// Application node
	if (aXmlHandler->mXmlNodeName == TTSymbol("application")) {
		
        if (aXmlHandler->mXmlNodeStart) {
            mDirectory->init();
            mTempAddress = kTTAdrsRoot;
        }
        
        return kTTErrNone;
	}
    
    // Any other node
    readNodeFromXml(aXmlHandler);
	
	return kTTErrNone;
}

void TTApplication::readNodeFromXml(TTXmlHandlerPtr aXmlHandler)
{
	TTSymbol		objectName, protocolName;
    ProtocolPtr     aProtocol;
    TTMirrorPtr     aMirror;
	TTValue			v, protocolNames;
    
    // when a node starts : append address to the current temp address
    if (aXmlHandler->mXmlNodeStart) {
        
        mTempAddress = mTempAddress.appendAddress(TTAddress(aXmlHandler->mXmlNodeName));
        
        // get the object name
        if (xmlTextReaderMoveToAttribute((xmlTextReaderPtr)aXmlHandler->mReader, (const xmlChar*)("object")) == 1) {
            
            aXmlHandler->fromXmlChar(xmlTextReaderValue((xmlTextReaderPtr)aXmlHandler->mReader), v);
            
            if (v[0].type() == kTypeSymbol) {
                objectName = v[0];
                
                // a distant application should have one protocol
                protocolNames = getApplicationProtocols(mName);
                protocolName = protocolNames[0];
                
                aProtocol = (ProtocolPtr)getProtocol(protocolName);
                if (aProtocol) {
                    
                    // instantiate Mirror object for distant application
                    aMirror = appendMirror(aProtocol, mTempAddress, objectName);
                    
                    if (aMirror) {
                        // ?? to -- is it usefull to set attribute value ?
                        // yes : in modul8 case for example...
                        // so it depends of the protocol features : isGetRequestAllowed ?
                        
                        /*
                         // get all object attributes and their value
                         while (xmlTextReaderMoveToNextAttribute(aXmlHandler->mReader) == 1) {
                         
                         // get attribute name
                         aXmlHandler->fromXmlChar(xmlTextReaderName(aXmlHandler->mReader), v);
                         
                         if (v.getType() == kTypeSymbol) {
                         v.get(0, &attributeName);
                         
                         // get attribute value
                         aXmlHandler->fromXmlChar(xmlTextReaderValue(aXmlHandler->mReader), v);
                         
                         
                         aMirror->setAttributeValue(attributeName, v);
                         }
                         }
                         */
                    }
                }
            }
        }
        
        // when a node is empty : keep the parent address for next nodes
        if (aXmlHandler->mXmlNodeIsEmpty)
            mTempAddress = mTempAddress.getParent();
    }
    
    // when a node ends : keep the parent address for next nodes
    else
        mTempAddress = mTempAddress.getParent();
}

TTMirrorPtr TTApplication::appendMirror(ProtocolPtr aProtocol, TTAddress anAddress, TTSymbol objectName)
{
    TTMirrorPtr     aMirror = NULL;
    TTNodePtr		aNode;
	TTBoolean		newInstanceCreated;
	TTObjectPtr		getAttributeCallback, setAttributeCallback, sendMessageCallback, listenAttributeCallback;
	TTValuePtr		getAttributeBaton, setAttributeBaton, sendMessageBaton, listenAttributeBaton;
    
    TTValue         args = objectName;
    
    getAttributeCallback = NULL;
    TTObjectInstantiate(TTSymbol("callback"), &getAttributeCallback, kTTValNONE);
    getAttributeBaton = new TTValue(TTPtr(aProtocol));
    getAttributeBaton->append(mName);
    getAttributeBaton->append(anAddress);
    getAttributeCallback->setAttributeValue(kTTSym_baton, TTPtr(getAttributeBaton));
    getAttributeCallback->setAttributeValue(kTTSym_function, TTPtr(&ProtocolGetAttributeCallback));
    args.append(getAttributeCallback);
    
    setAttributeCallback = NULL;
    TTObjectInstantiate(TTSymbol("callback"), &setAttributeCallback, kTTValNONE);
    setAttributeBaton = new TTValue(TTPtr(aProtocol));
    setAttributeBaton->append(mName);
    setAttributeBaton->append(anAddress);
    setAttributeCallback->setAttributeValue(kTTSym_baton, TTPtr(setAttributeBaton));
    setAttributeCallback->setAttributeValue(kTTSym_function, TTPtr(&ProtocolSetAttributeCallback));
    args.append(setAttributeCallback);
    
    sendMessageCallback = NULL;
    TTObjectInstantiate(TTSymbol("callback"), &sendMessageCallback, kTTValNONE);
    sendMessageBaton = new TTValue(TTPtr(aProtocol));
    sendMessageBaton->append(mName);
    sendMessageBaton->append(anAddress);
    sendMessageCallback->setAttributeValue(kTTSym_baton, TTPtr(sendMessageBaton));
    sendMessageCallback->setAttributeValue(kTTSym_function, TTPtr(&ProtocolSendMessageCallback));
    args.append(sendMessageCallback);
    
    listenAttributeCallback = NULL;
    TTObjectInstantiate(TTSymbol("callback"), &listenAttributeCallback, kTTValNONE);
    listenAttributeBaton = new TTValue(TTPtr(aProtocol));
    listenAttributeBaton->append(mName);
    listenAttributeBaton->append(anAddress);
    listenAttributeCallback->setAttributeValue(kTTSym_baton, TTPtr(listenAttributeBaton));
    listenAttributeCallback->setAttributeValue(kTTSym_function, TTPtr(&ProtocolListenAttributeCallback));
    args.append(listenAttributeCallback);
    
    aMirror = NULL;
    TTObjectInstantiate(kTTSym_Mirror, TTObjectHandle(&aMirror), args);
    
    // register object into the directory
    this->mDirectory->TTNodeCreate(anAddress, (TTObjectPtr)aMirror, NULL, &aNode, &newInstanceCreated);
    
    return aMirror;
}

#if 0
#pragma mark -
#pragma mark Some Methods
#endif

TTNodeDirectoryPtr TTApplicationGetDirectory(TTAddress anAddress)
{
	TTSymbol			applicationName;
	TTApplicationPtr	anApplication;
	
	if (TTModularApplications && anAddress != kTTAdrsEmpty) {
		
		applicationName = anAddress.getDirectory();
		
		if (applicationName != NO_DIRECTORY)
			anApplication = TTApplicationManagerGetApplication(applicationName);
		else
			anApplication = getLocalApplication;
		
		if (anApplication)
			return anApplication->mDirectory;
	}
	
	return NULL;
}

TTSymbol TTApplicationConvertAppNameToTTName(TTSymbol anAppName)
{
	TTErr		err;
	TTValue		c;
	TTSymbol	converted = anAppName;
	
	if (TTModularApplications) {
		
		err = getLocalApplication->mAppToTT->lookup(anAppName, c);
		
		if (!err)
			converted = c[0];
		
	}
	
	return converted;
}

TTSymbol TTApplicationConvertTTNameToAppName(TTSymbol aTTName)
{
	TTErr		err;
	TTValue		c;
	TTSymbol	converted = kTTSymEmpty;
	
	if (TTModularApplications) {
		
		err = getLocalApplication->mTTToApp->lookup(aTTName, c);
		
		if (!err)
			converted = c[0];
		
	}
	
	return converted;
}
