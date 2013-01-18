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
TTObject(arguments),
mApplicationManager(NULL),
mActivityInCallback(NULL),
mActivityOutCallback(NULL),
mDistantApplicationParameters(NULL)
{
	arguments.get(0, (TTPtr*)&mApplicationManager);
	arguments.get(1, (TTPtr*)&mActivityInCallback);
	arguments.get(2, (TTPtr*)&mActivityOutCallback);
	
	registerAttribute(TTSymbol("applicationParameters"), kTypePointer, NULL, (TTGetterMethod)& Protocol::getApplicationParameters, (TTSetterMethod)& Protocol::setApplicationParameters);

	registerAttribute(TTSymbol("distantApplicationNames"), kTypeLocalValue, NULL, (TTGetterMethod)& Protocol::getDistantApplicationNames);

	addAttribute(Name, kTypeSymbol);
	addAttributeProperty(Name, readOnly, YES);

	addAttribute(Version, kTypeSymbol);
	addAttributeProperty(Version, readOnly, YES);

	addAttribute(Author, kTypeSymbol);
	addAttributeProperty(Author, readOnly, YES);

	addAttribute(Exploration, kTypeBoolean);
	addAttributeProperty(Exploration, readOnly, YES);
	
	addAttribute(Activity, kTypeBoolean);

	addMessageWithArguments(registerApplication);
	addMessageWithArguments(unregisterApplication);
	
	addMessageWithArguments(isRegistered);
	
	addMessage(Run);
	addMessage(Stop);
	addMessage(Scan);
	
	mDistantApplicationParameters = new TTHash();
}

Protocol::~Protocol()
{
	TTValue		v, distantApplicationNames;
	TTSymbol aDistantApplicationName;
	TTHashPtr	distantApplicationParameters;
	
	// for each distant application registered
	mDistantApplicationParameters->getKeys(distantApplicationNames);
	for (TTUInt32 i=0; i<distantApplicationNames.getSize(); i++) {
		
		distantApplicationNames.get(i, aDistantApplicationName);
		mDistantApplicationParameters->lookup(aDistantApplicationName, v);
		v.get(0, (TTPtr*)&distantApplicationParameters);
		
		delete distantApplicationParameters;
	}
	
	delete mDistantApplicationParameters;
	
	// delete activity callbacks
	if (mActivityInCallback) {
		delete (TTValuePtr)mActivityInCallback->getBaton();
		TTObjectRelease(TTObjectHandle(&mActivityInCallback));
	}
	
	if (mActivityOutCallback) {
		delete (TTValuePtr)mActivityOutCallback->getBaton();
		TTObjectRelease(TTObjectHandle(&mActivityOutCallback));
	}
}

TTErr Protocol::setApplicationManager(const TTValue& value)
{
	value.get(0, (TTPtr*)&mApplicationManager);
	return kTTErrNone;
}

TTErr Protocol::getParameterNames(TTValue& value)
{
	TTValue		attributeNames;
	TTSymbol	attributeName;
	
	// filter all default attributes (Name, Version, Author, Exploration, ...)
	this->getAttributeNames(attributeNames);
	
	value.clear();
	for (TTUInt8 i=0; i<attributeNames.getSize(); i++) {
		attributeNames.get(0, attributeName);
		
		if (attributeName == TTSymbol("name")		||
			attributeName == TTSymbol("version")	||
			attributeName == TTSymbol("author")	||
			attributeName == TTSymbol("exploration"))
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
	
	inputValue.get(0, applicationName);
	
	// do not register the local application
	if (applicationName == protocolGetLocalApplicationName)
		return kTTErrNone;
	
	// Check the application is not already registered
	err = mDistantApplicationParameters->lookup(applicationName, v);
	
	if (err) {
		
		// prepare parameters table
		this->getParameterNames(parameterNames);
		for (TTUInt32 i=0; i<parameterNames.getSize(); i++) {
			parameterNames.get(i, parameterName);
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
	TTSymbol applicationName;
	TTHashPtr	applicationParameters;
	TTValue		v, parameterNames;
	TTErr		err;
	
	inputValue.get(0, applicationName);
	
	// do not unregister the local application
	if (applicationName == protocolGetLocalApplicationName)
		return kTTErrNone;
	
	// Check the application is registered
	err = mDistantApplicationParameters->lookup(applicationName, v);
	
	if (!err) {
		
		v.get(0, (TTPtr*)&applicationParameters);
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
	
	if (value.getType(0) == kTypeSymbol) {
		
		value.get(0, applicationName);
		
		// for local application
		if (applicationName == protocolGetLocalApplicationName) {
			
			this->getParameterNames(parametersNames);
			
			for (TTUInt8 i = 0; i < parametersNames.getSize(); i++) {
				parametersNames.get(i, parameterName);
				
				this->getAttributeValue(parameterName, parameterValue);
				parametersTable->append(parameterName, parameterValue);
			}
			
			value.set(0, (TTPtr)parametersTable);
			
			return kTTErrNone;
			
			//for distant application
		} else
			return mDistantApplicationParameters->lookup(applicationName, value);
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
	
	if (value.getSize() == 2 && value.getType(0) == kTypeSymbol && value.getType(1) == kTypePointer) {
		
		value.get(0, applicationName);
		value.get(1, (TTPtr*)&parametersTable);
		
		// for local application
		if (applicationName == protocolGetLocalApplicationName) {
			
			if (parametersTable) {
				
				parametersTable->getKeys(parametersNames);
				
				for (TTUInt8 i=0; i<parametersNames.getSize(); i++) {
					
					parametersNames.get(i, parameterName);
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
	
	inputValue.get(0, applicationName);
	
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
	b->get(0, (TTPtr*)&aProtocol);
	b->get(1, anApplicationName);
	
	// unpack data (anAddress, aNode, flag, anObserver)
	data.get(0, anAddress);
	data.get(1, (TTPtr*)&aNode);
	data.get(2, flag);
	data.get(3, (TTPtr*)&anObserver);
	
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
	b->get(0, (TTPtr*)&aProtocol);
	b->get(1, anApplicationName);
	b->get(2, anAddress);
	
	return aProtocol->SendListenAnswer(anApplicationName, anAddress, data);
}

TTErr ProtocolGetAttributeCallback(TTPtr baton, TTValue& data)
{
	TTValuePtr			b, value;
	ProtocolPtr			aProtocol;
	TTSymbol			anApplicationName;
	TTAddress			anAddress;
	TTSymbol			attribute;
	
	// unpack baton
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&aProtocol);
	b->get(1, anApplicationName);
	b->get(2, anAddress);
	
	// unpack data
	data.get(0, attribute);
	data.get(1, (TTPtr*)&value);
	
	// send a get request
	return aProtocol->SendGetRequest(anApplicationName, anAddress.appendAttribute(attribute), *value);
}

TTErr ProtocolSetAttributeCallback(TTPtr baton, TTValue& data)
{
	TTValuePtr			b, value;
	ProtocolPtr			aProtocol;
	TTSymbol			anApplicationName;
	TTAddress			anAddress;
	TTSymbol			attribute;
	
	// unpack baton
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&aProtocol);
	b->get(1, anApplicationName);
	b->get(2, anAddress);
	
	// unpack data
	data.get(0, attribute);
	data.get(1, (TTPtr*)&value);
	
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
	b->get(0, (TTPtr*)&aProtocol);
	b->get(1, anApplicationName);
	b->get(2, anAddress);
	
	// unpack data
	data.get(0, message);
	data.get(1, (TTPtr*)&value);
	
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
	b->get(0, (TTPtr*)&aProtocol);
	b->get(1, anApplicationName);
	b->get(2, anAddress);
	
	// unpack data
	data.get(0, attribute);
	data.get(1, enable);
	
	// send a listen request
	return aProtocol->SendListenRequest(anApplicationName, anAddress.appendAttribute(attribute), enable);
}

TTSymbol ProtocolGetLocalApplicationName(TTPtr aProtocol)
{
	// TODO : make this faster !
	ProtocolPtr p = (ProtocolPtr)aProtocol;
	TTValue v;
	TTObjectPtr anApplication;
	TTSymbol applicationName;
	
	p->mApplicationManager->getAttributeValue(TTSymbol("localApplication"), v);
	v.get(0, (TTPtr*)&anApplication);
	
	anApplication->getAttributeValue(kTTSym_name, v);
	v.get(0, applicationName);
	
	return applicationName;
}

/***************************************************************************
 
	ProtocolLib
 
 ***************************************************************************/

TTErr ProtocolLib::createProtocol(const TTSymbol protocolName, ProtocolPtr *returnedProtocol, TTObjectPtr manager, TTCallbackPtr activityInCallback, TTCallbackPtr activityOutCallback)
{
	TTValue args;
	
	args.append(TTPtr(manager));
	args.append(TTPtr(activityInCallback));
	args.append(TTPtr(activityOutCallback));
	
	// These should be alphabetized
	if (protocolName == TTSymbol("Minuit"))
		return TTObjectInstantiate(TTSymbol("Minuit"), (TTObjectPtr*)returnedProtocol, args);
	/*
	else if (protocolName == TTSymbol("OSC"))
		return TTObjectInstantiate(TTSymbol("OSC"), (TTObjectPtr*)returnedProtocol, args);
	else if (protocolName == TTSymbol("MIDI"))
		return TTObjectInstantiate(TTSymbol("MIDI"), (TTObjectPtr*)returnedProtocol, args);
	else if (protocolName == TTSymbol("CopperLan"))
		return TTObjectInstantiate(TTSymbol("CopperLan"), (TTObjectPtr*)returnedProtocol, args);
	else if (protocolName == TTSymbol("Serial"))
		return TTObjectInstantiate(TTSymbol("Serial"), (TTObjectPtr*)returnedProtocol, args);
	 */
	
	TTLogError("Jamoma ProtocolLib : Invalid Protocol ( %s ) specified", protocolName.c_str());
	return kTTErrValueNotFound;
}

void ProtocolLib::getProtocolNames(TTValue& protocolNames)
{
	protocolNames.clear();
	protocolNames.append(TTSymbol("Minuit"));
	/*
	protocolNames.append(TTSymbol("OSC"));
	protocolNames.append(TTSymbol("MIDI"));
	protocolNames.append(TTSymbol("CopperLan"));
	protocolNames.append(TTSymbol("Serial"));
	 */
}

