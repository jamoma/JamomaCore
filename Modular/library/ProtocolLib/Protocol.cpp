/** @file
 *
 * @ingroup modularLibrary
 *
 * @brief A Protocol interface
 *
 * @details
 *
 * @authors Laurent Garnier, Théo de la Hogue
 *
 * @copyright © 2011, Laurent Garnier, Théo de la Hogue @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "Protocol.h"

#define thisTTClass		Protocol

/****************************************************************************************************/

Protocol::Protocol(const TTValue& arguments) :
TTObjectBase(arguments),
mApplicationManager(NULL),
mActivityInCallback(NULL),
mActivityOutCallback(NULL),
mRunning(NO),
mSelectedApplication(kTTSymEmpty)
{
    mApplicationManager = arguments[0];
    mActivityInCallback = TTCallbackPtr((TTObjectBasePtr)arguments[1]);
    mActivityOutCallback = TTCallbackPtr((TTObjectBasePtr)arguments[2]);
    
	registerAttribute(TTSymbol("applicationNames"), kTypeLocalValue, NULL, (TTGetterMethod)& Protocol::getApplicationNames);

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
    
    addAttribute(DiscoverAll, kTypeBoolean);
	addAttributeProperty(DiscoverAll, readOnly, YES);
	
	addAttribute(Activity, kTypeBoolean);

	addMessageWithArguments(ApplicationRegister);
	addMessageWithArguments(ApplicationUnregister);
    addMessageWithArguments(ApplicationSelect);
    addMessage(ApplicationSelectLocal);
	
	addMessageWithArguments(isRegistered);
	
	addMessageWithArguments(Run);
	addMessageWithArguments(Stop);
	addMessage(Scan);
}

Protocol::~Protocol()
{
	TTValue		v, applicationNames;
	TTSymbol    applicationName;
	TTHashPtr	applicationParameters;
	
	// for each distant application registered
	mApplicationParameters.getKeys(applicationNames);
	for (TTUInt32 i = 0; i < applicationNames.size(); i++) {
		
		applicationName = applicationNames[i];
		mApplicationParameters.lookup(applicationName, v);
		applicationParameters = TTHashPtr((TTPtr)v[0]);
		
		delete applicationParameters;
	}
	
	// delete activity callbacks
	if (mActivityInCallback)
		TTObjectBaseRelease(TTObjectBaseHandle(&mActivityInCallback));
	
	if (mActivityOutCallback)
		TTObjectBaseRelease(TTObjectBaseHandle(&mActivityOutCallback));
}

TTErr Protocol::setApplicationManager(const TTValue& value)
{
	mApplicationManager = value[0];
	return kTTErrNone;
}

TTErr Protocol::ApplicationRegister(const TTValue& inputValue, TTValue& outputValue)
{
	TTSymbol	parameterName;
	TTHashPtr	applicationParameters;
	TTValue		v, parameterNames, none;
	TTErr		err;
    
    // update local application name
    mApplicationManager->getAttributeValue(TTSymbol("applicationLocalName"), v);
    mLocalApplicationName = v[0];
    
    if (inputValue.size() == 1) {
        
        if (inputValue[0].type() == kTypeSymbol) {
            
            mSelectedApplication = inputValue[0];
            
            // Check the application is not already registered
            err = mApplicationParameters.lookup(mSelectedApplication, v);
            
            if (err) {
                
                applicationParameters = new TTHash();
                
                // prepare parameters table
                this->getParameterNames(parameterNames);
                for (TTUInt32 i = 0; i < parameterNames.size(); i++) {
                    parameterName = parameterNames[i];
                    applicationParameters->append(parameterName, none);
                }
                
                // add the parameters table into mApplicationParameters
                v = TTValue((TTPtr)applicationParameters);
                return mApplicationParameters.append(mSelectedApplication, v);
            }
        }
    }
	
	return kTTErrGeneric;
}

TTErr Protocol::ApplicationUnregister(const TTValue& inputValue, TTValue& outputValue)
{
	TTHashPtr	applicationParameters;
	TTValue		v, parameterNames;
	TTErr		err;
    
    // update local application name
    mApplicationManager->getAttributeValue(TTSymbol("applicationLocalName"), v);
    mLocalApplicationName = v[0];
    
    if (inputValue.size() == 1) {
        
        if (inputValue[0].type() == kTypeSymbol) {
            
            mSelectedApplication = inputValue[0];
            
            // Check the application is registered
            err = mApplicationParameters.lookup(mSelectedApplication, v);
            
            if (!err) {
                
                applicationParameters = TTHashPtr((TTPtr)v[0]);
                delete applicationParameters;
                
                return mApplicationParameters.remove(mSelectedApplication);
            }
        }
    }
	
	return kTTErrGeneric;
}

TTErr Protocol::ApplicationSelect(const TTValue& inputValue, TTValue& outputValue)
{
	mSelectedApplication = inputValue[0];
	
	return kTTErrNone;
}

TTErr Protocol::ApplicationSelectLocal()
{
	mSelectedApplication = mLocalApplicationName;
	return kTTErrNone;
}

TTErr Protocol::getApplicationParameters(TTSymbol parameterName, TTValue& value)
{
    TTValue     v;
    TTHashPtr   parameters;
    
    if (!mApplicationParameters.lookup(mSelectedApplication, v)) {
        
        parameters = TTHashPtr((TTPtr)v[0]);
        
        return parameters->lookup(parameterName, value);
    }
    
    return kTTErrGeneric;
}

TTErr Protocol::setApplicationParameters(TTSymbol parameterName, const TTValue& value)
{
    TTValue     v;
    TTHashPtr   parameters;
    
    if (!mApplicationParameters.lookup(mSelectedApplication, v)) {
        
        parameters = TTHashPtr((TTPtr)v[0]);
        
        if (!parameters->lookup(parameterName, v)) {
            
            parameters->remove(parameterName);
            return parameters->append(parameterName, value);
        }
    }
    
    return kTTErrGeneric;
}

TTErr Protocol::getApplicationNames(TTValue& value)
{
    // add all application names
	return mApplicationParameters.getKeys(value);
}

TTErr Protocol::isRegistered(const TTValue& inputValue, TTValue& outputValue)
{
	TTSymbol	applicationName;
	TTValue		v;
	
	applicationName = inputValue[0];
	
    outputValue = TTValue(mApplicationParameters.lookup(applicationName, v) == kTTErrNone);
	
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
        if (mRunning)
            return SendDiscoverAnswer(from, address, returnedType, returnedChildren, returnedAttributes, err);
	}
	
	return kTTErrGeneric;
}

TTErr Protocol::ReceiveDiscoverAllRequest(TTSymbol from, TTAddress address)
{
    TTValue     inputValue, outputValue;
    TTNodePtr   aNode;
	TTErr       err;
	
	// discover all the local namespace
	if (mApplicationManager != NULL) {
        
        inputValue = address;
        
        err = mApplicationManager->sendMessage(TTSymbol("ApplicationDiscoverAll"), inputValue, outputValue);
        
        aNode = TTNodePtr(TTPtr(outputValue[0]));

		// send result
        if (mRunning)
            return SendDiscoverAllAnswer(from, address, aNode, err);
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
		
        if (mRunning)
            return SendGetAnswer(from, address, returnedValue, err);
	}		
	
	return kTTErrGeneric;
}

TTErr Protocol::ReceiveSetRequest(TTSymbol from, TTAddress address, TTValue& newValue) 
{
	TTValue v, none;
	TTErr	err;
	
	// set the an object in the namespace
	if (mApplicationManager != NULL) {
		
		if (address.getAttribute() == NO_ATTRIBUTE)
			address = address.appendAttribute(kTTSym_value);
		
		v.append(address);
		v.append((TTPtr)&newValue);
		err = mApplicationManager->sendMessage(TTSymbol("ApplicationSet"), v, none);
		
		// TODO : test error and send notification if error
		return err;
	}
	
	return kTTErrGeneric;
}

TTErr Protocol::ReceiveListenRequest(TTSymbol from, TTAddress address, TTBoolean enable) 
{
	TTValue v, none;
	TTErr	err;
	
	// listen an object or the namespace
	if (mApplicationManager != NULL) {
		
		if (address.getAttribute() == NO_ATTRIBUTE)
			address = address.appendAttribute(kTTSym_value);
		
		v.append(mName);	// the name of the protocol is needed for feed back notifications
		v.append(from);
		v.append(address);
		v.append(enable);
		
		err = mApplicationManager->sendMessage(TTSymbol("ApplicationListen"), v, none);
		
        // NW: wondering why this happens twice?
		if (err)
			return SendListenAnswer(from, address, none, err);
		if (err && mRunning) 
			return SendListenAnswer(from, address, none, err);
	}
	
	return kTTErrGeneric;
}

TTErr Protocol::ReceiveListenAnswer(TTSymbol from, TTAddress address, TTValue& newValue)
{
	TTValue v, none;
	TTErr	err;
	TTValue dummy;
	
	if (mApplicationManager != NULL) {
		
		if (address.getAttribute() == NO_ATTRIBUTE)
			address = address.appendAttribute(kTTSym_value);
		
		v.append(from);
		v.append(address);
		v.append((TTPtr)&newValue);
		
		// TODO
		err = mApplicationManager->sendMessage(TTSymbol("ApplicationListenAnswer"), v, none);
		
        // NW: wondering why this happens twice?
		if (err)
			return SendListenAnswer(from, address, dummy, err);
		if (err && mRunning)
			return SendListenAnswer(from, address, dummy, err);
	}
	
	return kTTErrGeneric;
}

TTErr Protocol::ActivityInMessage(const TTValue& message)
{
	TTValue dummy;
	if (mActivityInCallback != NULL)
		return mActivityInCallback->notify(message, dummy);
	
	return kTTErrGeneric;
}

TTErr Protocol::ActivityOutMessage(const TTValue& message)
{
	TTValue dummy;
	if (mActivityOutCallback != NULL)
		return mActivityOutCallback->notify(message, dummy);
	
	return kTTErrGeneric;
}



#if 0
#pragma mark -
#pragma mark Some Methods
#endif

TTErr ProtocolDirectoryCallback(const TTValue& baton, const TTValue& data)
{
	ProtocolPtr			aProtocol;
	TTSymbol			anApplicationName;
	TTAddress			anAddress;
	TTNodePtr			aNode;
	TTUInt8				flag;
	TTCallbackPtr		anObserver;
	TTValue				v;

	// unpack baton
	aProtocol = ProtocolPtr((TTObjectBasePtr)baton[0]);
	anApplicationName = baton[1];
	
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
    
    if (aProtocol->mRunning)
        return aProtocol->SendListenAnswer(anApplicationName, anAddress.appendAttribute(TTSymbol("life")), v);
    else
        return kTTErrGeneric;
}

TTErr ProtocolAttributeCallback(const TTValue& baton, const TTValue& data)
{
	ProtocolPtr			aProtocol;
	TTSymbol			anApplicationName;
	TTAddress			anAddress;
	
	// unpack baton
	aProtocol = ProtocolPtr((TTObjectBasePtr)baton[0]);
	anApplicationName = baton[1];
	anAddress = baton[2];
	
    if (aProtocol->mRunning)
        return aProtocol->SendListenAnswer(anApplicationName, anAddress, data);
    else
        return kTTErrGeneric;
}

TTErr ProtocolGetAttributeCallback(const TTValue& baton, const TTValue& data)
{
	TTValuePtr		value;
	ProtocolPtr		aProtocol;
	TTSymbol		anApplicationName;
	TTAddress		anAddress;
	TTSymbol		attribute;
	
	// unpack baton
	aProtocol = ProtocolPtr((TTObjectBasePtr)baton[0]);
	anApplicationName = baton[1];
	anAddress = baton[2];
	
	// unpack data
	attribute = data[0];
	value = TTValuePtr((TTPtr)data[1]);
	
	// send a get request
    if (aProtocol->mRunning)
        return aProtocol->SendGetRequest(anApplicationName, anAddress.appendAttribute(attribute), *value);
    else
        return kTTErrGeneric;
}

TTErr ProtocolSetAttributeCallback(const TTValue& baton, const TTValue& data)
{
	TTValuePtr		value;
	ProtocolPtr		aProtocol;
	TTSymbol		anApplicationName;
	TTAddress		anAddress;
	TTSymbol		attribute;
	
	// unpack baton
	aProtocol = ProtocolPtr((TTObjectBasePtr)baton[0]);
	anApplicationName = baton[1];
	anAddress = baton[2];
	
	// unpack data
	attribute = data[0];
	value = TTValuePtr((TTPtr)data[1]);
	
	// send a set request
    if (aProtocol->mRunning)
        return aProtocol->SendSetRequest(anApplicationName, anAddress.appendAttribute(attribute), *value);
    else
        return kTTErrGeneric;
}

TTErr ProtocolSendMessageCallback(const TTValue& baton, const TTValue& data)
{
	TTValuePtr			value;
	ProtocolPtr			aProtocol;
	TTSymbol			anApplicationName;
	TTAddress			anAddress;
	TTSymbol			message;
	
	// unpack baton
	aProtocol = ProtocolPtr((TTObjectBasePtr)baton[0]);
	anApplicationName = baton[1];
	anAddress = baton[2];
	
	// unpack data
	message = data[0];
	value = TTValuePtr((TTPtr)data[1]);
	
	// send a set request
    if (aProtocol->mRunning)
        return aProtocol->SendSetRequest(anApplicationName, anAddress.appendAttribute(message), *value);
    else
        return kTTErrGeneric;
}

TTErr ProtocolListenAttributeCallback(const TTValue& baton, const TTValue& data)
{
	ProtocolPtr			aProtocol;
	TTSymbol			anApplicationName;
	TTAddress			anAddress;
	TTSymbol			attribute;
	TTBoolean			enable;
	
	// unpack baton
	aProtocol = ProtocolPtr((TTObjectBasePtr)baton[0]);
	anApplicationName = baton[1];
	anAddress = baton[2];
	
	// unpack data
    attribute = data[0];
    enable = data[1];
	
	// send a listen request
    if (aProtocol->mRunning)
        return aProtocol->SendListenRequest(anApplicationName, anAddress.appendAttribute(attribute), enable);
    else
        return kTTErrGeneric;
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
	
	TTLogError("Jamoma ProtocolLib : Invalid Protocol ( %s ) specified\n", protocolName.c_str());
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

