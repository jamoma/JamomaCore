/*
 * A Protocol interface
 * Copyright © 2011, Laurent Garnier, Théo de la Hogue
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "Protocol.h"

#define thisTTClass		Protocol

/****************************************************************************************************/

Protocol::Protocol(TTValue& arguments) :
TTObjectBase(arguments),
mApplicationManager(NULL),
mActivityInCallback(NULL),
mActivityOutCallback(NULL),
mDistantApplicationParameters(NULL)
{
    mApplicationManager = arguments[0];
    mActivityInCallback = TTCallbackPtr((TTObjectBasePtr)arguments[1]);
    mActivityOutCallback = TTCallbackPtr((TTObjectBasePtr)arguments[2]);
	
	registerAttribute(TTSymbol("applicationParameters"), kTypePointer, NULL, (TTGetterMethod)& Protocol::getApplicationParameters, (TTSetterMethod)& Protocol::setApplicationParameters);

	registerAttribute(TTSymbol("distantApplicationNames"), kTypeLocalValue, NULL, (TTGetterMethod)& Protocol::getDistantApplicationNames);

	addAttribute(Name, kTypeSymbol);
	addAttributeProperty(Name, readOnly, YES);

	addAttribute(Version, kTypeSymbol);
	addAttributeProperty(Version, readOnly, YES);

	addAttribute(Author, kTypeSymbol);
	addAttributeProperty(Author, readOnly, YES);
    
    addAttribute(Get, kTypeBoolean);
	addAttributeProperty(Get, readOnly, YES);
    
    addAttribute(Set, kTypeBoolean);
	addAttributeProperty(Set, readOnly, YES);
    
    addAttribute(Listen, kTypeBoolean);
	addAttributeProperty(Listen, readOnly, YES);

	addAttribute(Discover, kTypeBoolean);
	addAttributeProperty(Discover, readOnly, YES);
	
	addAttribute(Activity, kTypeBoolean);

	addMessageWithArguments(registerApplication);
	addMessageWithArguments(unregisterApplication);
	
	addMessageWithArguments(isRegistered);
	
	addMessageWithArguments(Run);
	addMessageWithArguments(Stop);
	addMessage(Scan);
	
	mDistantApplicationParameters = new TTHash();
}

Protocol::~Protocol()
{
	TTValue		v, distantApplicationNames;
	TTSymbol    aDistantApplicationName;
	TTHashPtr	distantApplicationParameters;
	
	// for each distant application registered
	mDistantApplicationParameters->getKeys(distantApplicationNames);
	for (TTUInt32 i = 0; i < distantApplicationNames.size(); i++) {
		
		aDistantApplicationName = distantApplicationNames[i];
		mDistantApplicationParameters->lookup(aDistantApplicationName, v);
		distantApplicationParameters = TTHashPtr((TTPtr)v[0]);
		
		delete distantApplicationParameters;
	}
	
	delete mDistantApplicationParameters;
	
	// delete activity callbacks
	if (mActivityInCallback) {
		delete (TTValuePtr)mActivityInCallback->getBaton();
		TTObjectBaseRelease(TTObjectBaseHandle(&mActivityInCallback));
	}
	
	if (mActivityOutCallback) {
		delete (TTValuePtr)mActivityOutCallback->getBaton();
		TTObjectBaseRelease(TTObjectBaseHandle(&mActivityOutCallback));
	}
}

TTErr Protocol::setApplicationManager(const TTValue& value)
{
	mApplicationManager = value[0];
	return kTTErrNone;
}

TTErr Protocol::getParameterNames(TTValue& value)
{
	TTValue		attributeNames;
	TTSymbol	attributeName;
	
	// filter all default attributes (Name, Version, Author, Exploration, ...)
	this->getAttributeNames(attributeNames);
	
	value.clear();
	for (TTUInt8 i = 0; i < attributeNames.size(); i++) {
		attributeName = attributeNames[0];
		
		if (attributeName == TTSymbol("name")		||
			attributeName == TTSymbol("version")	||
			attributeName == TTSymbol("author")     ||
            attributeName == TTSymbol("get")        ||
            attributeName == TTSymbol("set")        ||
            attributeName == TTSymbol("listen")      ||
			attributeName == TTSymbol("discover"))
			continue;
		
		value.append(attributeName);
	}
	
	return kTTErrNone;
}

TTErr Protocol::registerApplication(const TTValue& inputValue, TTValue& outputValue)
{
	TTSymbol	applicationName, parameterName;
	TTHashPtr	applicationParameters = new TTHash();
	TTValue		v, parameterNames;
	TTErr		err;
	
	applicationName = inputValue[0];
	
	// do not register the local application
	if (applicationName == protocolGetLocalApplicationName)
		return kTTErrNone;
	
	// Check the application is not already registered
	err = mDistantApplicationParameters->lookup(applicationName, v);
	
	if (err) {
		
		// prepare parameters table
		this->getParameterNames(parameterNames);
		for (TTUInt32 i = 0; i < parameterNames.size(); i++) {
			parameterName = parameterNames[i];
			applicationParameters->append(parameterName, kTTValNONE);
		}
		
		// add the parameters table into mDistantApplicationParameters
		v.append((TTPtr)applicationParameters);
		return mDistantApplicationParameters->append(applicationName, v);
	}
	
	return kTTErrGeneric;
}

TTErr Protocol::unregisterApplication(const TTValue& inputValue, TTValue& outputValue)
{
	TTSymbol    applicationName;
	TTHashPtr	applicationParameters;
	TTValue		v, parameterNames;
	TTErr		err;
	
	applicationName = inputValue[0];
	
	// do not unregister the local application
	if (applicationName == protocolGetLocalApplicationName)
		return kTTErrNone;
	
	// Check the application is registered
	err = mDistantApplicationParameters->lookup(applicationName, v);
	
	if (!err) {
		
		applicationParameters = TTHashPtr((TTPtr)v[0]);
		delete applicationParameters;
		
		return mDistantApplicationParameters->remove(applicationName);
	}
	
	return kTTErrGeneric;
}


TTErr Protocol::getApplicationParameters(TTValue& value)
{
	TTSymbol	applicationName;
	TTValue		parametersNames, parameterValue;
	TTSymbol	parameterName;
	TTHashPtr	parametersTable = new TTHash();
    
    if (value.size() == 1) {
        
        if (value[0].type() == kTypeSymbol) {
            
            applicationName = value[0];
            
            // for local application
            if (applicationName == protocolGetLocalApplicationName) {
                
                this->getParameterNames(parametersNames);
                
                for (TTUInt8 i = 0; i < parametersNames.size(); i++) {
                    parameterName = parametersNames[i];
                    
                    this->getAttributeValue(parameterName, parameterValue);
                    parametersTable->append(parameterName, parameterValue);
                }
                
                value[0] = (TTPtr)parametersTable;
                
                return kTTErrNone;
                
                //for distant application
            }
            else
                return mDistantApplicationParameters->lookup(applicationName, value);
        }
    }
	
	return kTTErrGeneric;
}

TTErr Protocol::setApplicationParameters(TTValue& value)
{
	TTSymbol	applicationName;
	TTValue		v, parametersNames, parameterValue;
	TTSymbol	parameterName;
	TTHashPtr	parametersTable = NULL;
	TTErr		err;
    
    if (value.size() == 2) {
        
        if (value[0].type() == kTypeSymbol && value[1].type() == kTypePointer) {
            
            applicationName = value[0];
            parametersTable = TTHashPtr((TTPtr)value[1]);
            
            // for local application
            if (applicationName == protocolGetLocalApplicationName) {
                
                if (parametersTable) {
                    
                    parametersTable->getKeys(parametersNames);
                    
                    for (TTUInt8 i = 0; i < parametersNames.size(); i++) {
                        
                        parameterName = parametersNames[i];
                        parametersTable->lookup(parameterName, parameterValue);
                        this->setAttributeValue(parameterName, parameterValue);
                    }
                    
                    return kTTErrNone;
                }
            }
            //for distant application
            else {
                
                // Check the application is registered
                err = mDistantApplicationParameters->lookup(applicationName, v);
                
                if (!err) {
                    
                    if (parametersTable) {
                        v = TTValue((TTPtr)parametersTable);
                        mDistantApplicationParameters->remove(applicationName);
                        return mDistantApplicationParameters->append(applicationName, v);
                    }
                }
            }
        }
    }
	
	return kTTErrGeneric;
}

TTErr Protocol::getDistantApplicationNames(TTValue& value)
{
	return mDistantApplicationParameters->getKeys(value);
}

TTErr Protocol::isRegistered(const TTValue& inputValue, TTValue& outputValue)
{
	TTSymbol	applicationName;
	TTValue		v;
	
	applicationName = inputValue[0];
	
	if (applicationName == protocolGetLocalApplicationName)
		outputValue = TTValue(YES);
	else
		outputValue = TTValue(mDistantApplicationParameters->lookup(applicationName, v) == kTTErrNone);
	
	return kTTErrNone;
}

TTErr Protocol::ReceiveDiscoverRequest(TTSymbol from, TTAddress address) 
{
	TTValue     inputValue, outputValue;
	TTErr       err;
    TTSymbol    returnedType;
	TTValue     returnedChildren;
	TTValue     returnedAttributes;
	
	// discover the local namespace
	if (mApplicationManager != NULL) {
		
		inputValue.append(address);
		
        outputValue.append((TTPtr)&returnedType);
		outputValue.append((TTPtr)&returnedChildren);
        outputValue.append((TTPtr)&returnedAttributes);
		
		err = mApplicationManager->sendMessage(TTSymbol("ApplicationDiscover"), inputValue, outputValue);
		
		// send result
		return SendDiscoverAnswer(from, address, returnedType, returnedChildren, returnedAttributes, err);
	}
	
	return kTTErrGeneric;
}

TTErr Protocol::ReceiveGetRequest(TTSymbol from, TTAddress address)
{
	TTErr	err;
	TTValue returnedValue;
	
	// discover the namespace
	if (mApplicationManager != NULL) {
		
		if (address.getAttribute() == NO_ATTRIBUTE)
			address = address.appendAttribute(kTTSym_value);

		err = mApplicationManager->sendMessage(TTSymbol("ApplicationGet"), address, returnedValue);
		
		return SendGetAnswer(from, address, returnedValue, err);
	}		
	
	return kTTErrGeneric;
}

TTErr Protocol::ReceiveSetRequest(TTSymbol from, TTAddress address, TTValue& newValue) 
{
	TTValue v;
	TTErr	err;
	
	// set the an object in the namespace
	if (mApplicationManager != NULL) {
		
		if (address.getAttribute() == NO_ATTRIBUTE)
			address = address.appendAttribute(kTTSym_value);
		
		v.append(address);
		v.append((TTPtr)&newValue);
		err = mApplicationManager->sendMessage(TTSymbol("ApplicationSet"), v, kTTValNONE);
		
		// TODO : test error and send notification if error
		return err;
	}
	
	return kTTErrGeneric;
}

TTErr Protocol::ReceiveListenRequest(TTSymbol from, TTAddress address, TTBoolean enable) 
{
	TTValue v;
	TTErr	err;
	
	// listen an object or the namespace
	if (mApplicationManager != NULL) {
		
		if (address.getAttribute() == NO_ATTRIBUTE)
			address = address.appendAttribute(kTTSym_value);
		
		v.append(mName);	// the name of the protocol is needed for feed back notifications
		v.append(from);
		v.append(address);
		v.append(enable);
		
		err = mApplicationManager->sendMessage(TTSymbol("ApplicationListen"), v, kTTValNONE);
		
		if (err)
			return SendListenAnswer(from, address, kTTValNONE, err);
	}
	
	return kTTErrGeneric;
}

TTErr Protocol::ReceiveListenAnswer(TTSymbol from, TTAddress address, TTValue& newValue)
{
	TTValue v;
	TTErr	err;
	
	if (mApplicationManager != NULL) {
		
		if (address.getAttribute() == NO_ATTRIBUTE)
			address = address.appendAttribute(kTTSym_value);
		
		v.append(from);
		v.append(address);
		v.append((TTPtr)&newValue);
		
		// TODO
		err = mApplicationManager->sendMessage(TTSymbol("ApplicationListenAnswer"), v, kTTValNONE);
		
		if (err)
			return SendListenAnswer(from, address, kTTValNONE, err);
	}
	
	return kTTErrGeneric;
}

TTErr Protocol::ActivityInMessage(const TTValue& message)
{
	if (mActivityInCallback != NULL)
		return mActivityInCallback->notify(message, kTTValNONE);
	
	return kTTErrGeneric;
}

TTErr Protocol::ActivityOutMessage(const TTValue& message)
{
	if (mActivityOutCallback != NULL)
		return mActivityOutCallback->notify(message, kTTValNONE);
	
	return kTTErrGeneric;
}



#if 0
#pragma mark -
#pragma mark Some Methods
#endif

TTErr ProtocolDirectoryCallback(TTPtr baton, TTValue& data)
{
	TTValuePtr			b;
	ProtocolPtr			aProtocol;
	TTSymbol			anApplicationName;
	TTAddress			anAddress;
	TTNodePtr			aNode;
	TTUInt8				flag;
	TTCallbackPtr		anObserver;
	TTValue				v;

	// unpack baton
	b = (TTValuePtr)baton;
	aProtocol = ProtocolPtr((TTObjectBasePtr)(*b)[0]);
	anApplicationName = (*b)[1];
	
	// unpack data (anAddress, aNode, flag, anObserver)
	anAddress = data[0];
	aNode = TTNodePtr((TTPtr)data[1]);
	flag = data[2];
    anObserver = TTCallbackPtr((TTObjectBasePtr)data[3]);
	
    if (flag == kAddressCreated) {
        
        if (aNode->getObject())
            v.append(aNode->getObject()->getName());
        else
            v.append(kTTSym_none);
    }
    else if (flag == kAddressDestroyed) {
        
        v.append(TTSymbol("delete"));
    }

	return aProtocol->SendListenAnswer(anApplicationName, anAddress.appendAttribute(TTSymbol("life")), v);
}

TTErr ProtocolAttributeCallback(TTPtr baton, TTValue& data)
{
	TTValuePtr			b;
	ProtocolPtr			aProtocol;
	TTSymbol			anApplicationName;
	TTAddress			anAddress;
	
	// unpack baton
    b = (TTValuePtr)baton;
	aProtocol = ProtocolPtr((TTObjectBasePtr)(*b)[0]);
	anApplicationName = (*b)[1];
	anAddress = (*b)[2];
	
	return aProtocol->SendListenAnswer(anApplicationName, anAddress, data);
}

TTErr ProtocolGetAttributeCallback(TTPtr baton, TTValue& data)
{
	TTValuePtr		b, value;
	ProtocolPtr		aProtocol;
	TTSymbol		anApplicationName;
	TTAddress		anAddress;
	TTSymbol		attribute;
	
	// unpack baton
	b = (TTValuePtr)baton;
	aProtocol = ProtocolPtr((TTObjectBasePtr)(*b)[0]);
	anApplicationName = (*b)[1];
	anAddress = (*b)[2];
	
	// unpack data
	attribute = data[0];
	value = TTValuePtr((TTPtr)data[1]);
	
	// send a get request
	return aProtocol->SendGetRequest(anApplicationName, anAddress.appendAttribute(attribute), *value);
}

TTErr ProtocolSetAttributeCallback(TTPtr baton, TTValue& data)
{
	TTValuePtr		b, value;
	ProtocolPtr		aProtocol;
	TTSymbol		anApplicationName;
	TTAddress		anAddress;
	TTSymbol		attribute;
	
	// unpack baton
	b = (TTValuePtr)baton;
	aProtocol = ProtocolPtr((TTObjectBasePtr)(*b)[0]);
	anApplicationName = (*b)[1];
	anAddress = (*b)[2];
	
	// unpack data
	attribute = data[0];
	value = TTValuePtr((TTPtr)data[1]);
	
	// send a set request
	return aProtocol->SendSetRequest(anApplicationName, anAddress.appendAttribute(attribute), *value);
}

TTErr ProtocolSendMessageCallback(TTPtr baton, TTValue& data)
{
	TTValuePtr			b, value;
	ProtocolPtr			aProtocol;
	TTSymbol			anApplicationName;
	TTAddress			anAddress;
	TTSymbol			message;
	
	// unpack baton
	b = (TTValuePtr)baton;
	aProtocol = ProtocolPtr((TTObjectBasePtr)(*b)[0]);
	anApplicationName = (*b)[1];
	anAddress = (*b)[2];
	
	// unpack data
	message = data[0];
	value = TTValuePtr((TTPtr)data[1]);
	
	// send a set request
	return aProtocol->SendSetRequest(anApplicationName, anAddress.appendAttribute(message), *value);
}

TTErr ProtocolListenAttributeCallback(TTPtr baton, TTValue& data)
{
	TTValuePtr			b;
	ProtocolPtr			aProtocol;
	TTSymbol			anApplicationName;
	TTAddress			anAddress;
	TTSymbol			attribute;
	TTBoolean			enable;
	
	// unpack baton
	b = (TTValuePtr)baton;
	aProtocol = ProtocolPtr((TTObjectBasePtr)(*b)[0]);
	anApplicationName = (*b)[1];
	anAddress = (*b)[2];
	
	// unpack data
    attribute = data[0];
    enable = data[1];
	
	// send a listen request
	return aProtocol->SendListenRequest(anApplicationName, anAddress.appendAttribute(attribute), enable);
}

TTSymbol ProtocolGetLocalApplicationName(TTPtr aProtocol)
{
	// TODO : make this faster !
	ProtocolPtr p = (ProtocolPtr)aProtocol;
	TTValue v;
	TTObjectBasePtr anApplication;
	TTSymbol applicationName;
	
	p->mApplicationManager->getAttributeValue(TTSymbol("localApplication"), v);
	anApplication = v[0];
	
	anApplication->getAttributeValue(kTTSym_name, v);
	applicationName = v[0];
	
	return applicationName;
}

/***************************************************************************
 
	ProtocolLib
 
 ***************************************************************************/

TTErr ProtocolLib::createProtocol(const TTSymbol protocolName, ProtocolPtr *returnedProtocol, TTObjectBasePtr manager, TTCallbackPtr activityInCallback, TTCallbackPtr activityOutCallback)
{
	TTValue args;
    
    *returnedProtocol = NULL;        // without this, TTObjectBaseInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	
	args.append(manager);
	args.append(activityInCallback);
	args.append(activityOutCallback);
	
	// These should be alphabetized
	if (protocolName == TTSymbol("Minuit"))
		return TTObjectBaseInstantiate(TTSymbol("Minuit"), (TTObjectBasePtr*)returnedProtocol, args);
	else if (protocolName == TTSymbol("OSC"))
		return TTObjectBaseInstantiate(TTSymbol("OSC"), (TTObjectBasePtr*)returnedProtocol, args);
    /*
	else if (protocolName == TTSymbol("MIDI"))
		return TTObjectBaseInstantiate(TTSymbol("MIDI"), (TTObjectBasePtr*)returnedProtocol, args);
	else if (protocolName == TTSymbol("CopperLan"))
		return TTObjectBaseInstantiate(TTSymbol("CopperLan"), (TTObjectBasePtr*)returnedProtocol, args);
	else if (protocolName == TTSymbol("Serial"))
		return TTObjectBaseInstantiate(TTSymbol("Serial"), (TTObjectBasePtr*)returnedProtocol, args);
	 */
	
	TTLogError("Jamoma ProtocolLib : Invalid Protocol ( %s ) specified", protocolName.c_str());
	return kTTErrValueNotFound;
}

void ProtocolLib::getProtocolNames(TTValue& protocolNames)
{
	protocolNames.clear();
	protocolNames.append(TTSymbol("Minuit"));
	protocolNames.append(TTSymbol("OSC"));
    /*
	protocolNames.append(TTSymbol("MIDI"));
	protocolNames.append(TTSymbol("CopperLan"));
	protocolNames.append(TTSymbol("Serial"));
	 */
}

