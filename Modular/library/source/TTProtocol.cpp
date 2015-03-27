/** @file
 *
 * @ingroup modularLibrary
 *
 * @brief A Protocol interface
 *
 * @details
 *
 * @author Laurent Garnier, Théo de la Hogue
 *
 * @copyright © 2011, Laurent Garnier, Théo de la Hogue @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTProtocol.h"

#define thisTTClass		TTProtocol

/****************************************************************************************************/

TTProtocol::TTProtocol(const TTValue& arguments) :
TTObjectBase(arguments),
mRunning(NO),
mSelectedApplication(kTTSymEmpty)
{
    mApplicationManager = arguments[0];
    mActivityInCallback = arguments[1];
    mActivityOutCallback = arguments[2];
    
	registerAttribute(TTSymbol("applicationNames"), kTypeLocalValue, NULL, (TTGetterMethod)& TTProtocol::getApplicationNames);

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
    addMessageWithArguments(ApplicationRename);
	addMessageWithArguments(ApplicationUnregister);
    addMessageWithArguments(ApplicationSelect);
    addMessage(ApplicationSelectLocal);
	
	addMessageWithArguments(isRegistered);
	
    addMessageWithArguments(Scan);
	addMessageWithArguments(Run);
	addMessageWithArguments(Stop);
}

TTProtocol::~TTProtocol()
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
}

TTErr TTProtocol::setApplicationManager(const TTValue& value)
{
	mApplicationManager = value[0];
	return kTTErrNone;
}

TTErr TTProtocol::ApplicationRegister(const TTValue& inputValue, TTValue& outputValue)
{
    TTObject    application;
	TTSymbol	parameterName;
	TTHashPtr	applicationParameters;
	TTValue		v, parameterNames, out, none;
	TTErr		err;
    
    // update local application name
    mApplicationManager.get("applicationLocalName", v);
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
                mApplicationParameters.append(mSelectedApplication, v);
                
                // optionnaly format the application type depending on the protocol features
                // (if the application is already registered into the application manager)
                err = mApplicationManager.send("ApplicationFind", mSelectedApplication, out);
                
                if (!err) {
                        
                    application = out[0];
                    
                    // for none local application
                    if (mSelectedApplication != mLocalApplicationName) {
                        
                        // setup the application type depending of the discovering feature of the protocol
                        if (mDiscover || mDiscoverAll)
                            application.set("type", kTTSym_mirror);
                        else
                            application.set("type", kTTSym_proxy);
                    }
                }
                
                return kTTErrNone;
            }
        }
    }
	
	return kTTErrGeneric;
}

TTErr TTProtocol::ApplicationRename(const TTValue& inputValue, TTValue& outputValue)
{
    if (inputValue.size() == 2) {
        
        if (inputValue[0].type() == kTypeSymbol && inputValue[1].type() == kTypeSymbol) {
            
            TTValue		v;
            TTErr		err;
            
            TTSymbol    oldApplicationName = inputValue[0];
            TTSymbol    newApplicationName = inputValue[1];
    
            // Check there is application registered under the old name
            err = mApplicationParameters.lookup(oldApplicationName, v);
                    
            if (!err) {
                
                mApplicationParameters.remove(oldApplicationName);
                mApplicationParameters.append(newApplicationName, v);
                
                // update local application name
                mApplicationManager.get("applicationLocalName", v);
                mLocalApplicationName = v[0];
                
                return kTTErrNone;
            }
        }
    }
	
	return kTTErrGeneric;
}

TTErr TTProtocol::ApplicationUnregister(const TTValue& inputValue, TTValue& outputValue)
{
	TTHashPtr	applicationParameters;
	TTValue		v, none;
	TTErr		err;
    
    // update local application name
    mApplicationManager.get("applicationLocalName", v);
    mLocalApplicationName = v[0];
    
    if (inputValue.size() == 1) {
        
        if (inputValue[0].type() == kTypeSymbol) {
            
            mSelectedApplication = inputValue[0];
            
            // Check the application is registered
            err = mApplicationParameters.lookup(mSelectedApplication, v);
            
            if (!err) {
                
                Stop(mSelectedApplication, none);
                
                applicationParameters = TTHashPtr((TTPtr)v[0]);
                delete applicationParameters;
                
                return mApplicationParameters.remove(mSelectedApplication);
            }
        }
    }
	
	return kTTErrGeneric;
}

TTErr TTProtocol::ApplicationSelect(const TTValue& inputValue, TTValue& outputValue)
{
	mSelectedApplication = inputValue[0];
	
	return kTTErrNone;
}

TTErr TTProtocol::ApplicationSelectLocal()
{
	mSelectedApplication = mLocalApplicationName;
	return kTTErrNone;
}

TTErr TTProtocol::getApplicationParameters(TTSymbol parameterName, TTValue& value)
{
    TTValue     v;
    TTHashPtr   parameters;
    
    if (!mApplicationParameters.lookup(mSelectedApplication, v)) {
        
        parameters = TTHashPtr((TTPtr)v[0]);
        
        return parameters->lookup(parameterName, value);
    }
    
    return kTTErrGeneric;
}

TTErr TTProtocol::setApplicationParameters(TTSymbol parameterName, const TTValue& value)
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

TTErr TTProtocol::getApplicationNames(TTValue& value)
{
    // add all application names
	return mApplicationParameters.getKeys(value);
}

TTErr TTProtocol::isRegistered(const TTValue& inputValue, TTValue& outputValue)
{
	TTSymbol	applicationName;
	TTValue		v;
	
	applicationName = inputValue[0];
	
    outputValue = TTValue(mApplicationParameters.lookup(applicationName, v) == kTTErrNone);
	
	return kTTErrNone;
}

TTErr TTProtocol::ReceiveDiscoverRequest(TTSymbol from, TTAddress address)
{
	TTValue     inputValue, outputValue;
	TTErr       err;
    TTSymbol    returnedType;
	TTValue     returnedChildren;
	TTValue     returnedAttributes;
    
    if (!mRunning)
        return kTTErrGeneric;
	
	// discover the local namespace
    inputValue.append(address);
    
    outputValue.append((TTPtr)&returnedType);
    outputValue.append((TTPtr)&returnedChildren);
    outputValue.append((TTPtr)&returnedAttributes);
    
    err = mApplicationManager.send("ApplicationDiscover", inputValue, outputValue);
    
    // send result
    return SendDiscoverAnswer(from, address, returnedType, returnedChildren, returnedAttributes, err);
}

TTErr TTProtocol::ReceiveDiscoverAllRequest(TTSymbol from, TTAddress address)
{
    TTValue     inputValue, outputValue;
    TTNodePtr   aNode;
	TTErr       err;
    
    if (!mRunning)
        return kTTErrGeneric;
	
	// discover all the local namespace
    inputValue = address;
    
    err = mApplicationManager.send("ApplicationDiscoverAll", inputValue, outputValue);
    
    aNode = TTNodePtr(TTPtr(outputValue[0]));
    
    // send result
    return SendDiscoverAllAnswer(from, address, aNode, err);
}

TTErr TTProtocol::ReceiveGetRequest(TTSymbol from, TTAddress address)
{
	TTErr	err;
	TTValue returnedValue;
    
    if (!mRunning)
        return kTTErrGeneric;
	
	// discover the namespace
    if (address.getAttribute() == NO_ATTRIBUTE)
        address = address.appendAttribute(kTTSym_value);
    
    err = mApplicationManager.send("ApplicationGet", address, returnedValue);
    
    return SendGetAnswer(from, address, returnedValue, err);
}

TTErr TTProtocol::ReceiveSetRequest(TTSymbol from, TTAddress address, const TTValue& newValue)
{
	TTValue v, none;
	TTErr	err;
	
	// set the an object in the namespace
    if (address.getAttribute() == NO_ATTRIBUTE)
        address = address.appendAttribute(kTTSym_value);
    
    v.append(address);
    v.append((TTPtr)&newValue);
    err = mApplicationManager.send("ApplicationSet", v);
    
    // TODO : test error and send notification if error
    return err;
}

TTErr TTProtocol::ReceiveListenRequest(TTSymbol from, TTAddress address, TTBoolean enable) 
{
	TTValue v, none;
	TTErr	err;
	
	// listen an object or the namespace
    if (address.getAttribute() == NO_ATTRIBUTE)
        address = address.appendAttribute(kTTSym_value);
    
    v.append(mName);	// the name of the protocol is needed for feed back notifications
    v.append(from);
    v.append(address);
    v.append(enable);
    
    err = mApplicationManager.send("ApplicationListen", v);
    
    if (err && mRunning)
        return SendListenAnswer(from, address, none, err);
    
    return kTTErrGeneric;
}

TTErr TTProtocol::ReceiveListenAnswer(TTSymbol from, TTAddress address, const TTValue& newValue)
{
	TTValue v, none;
	TTErr	err;
	TTValue dummy;
	
    if (address.getAttribute() == NO_ATTRIBUTE)
        address = address.appendAttribute(kTTSym_value);
    
    v.append(from);
    v.append(address);
    v.append((TTPtr)&newValue);
    
    err = mApplicationManager.send("ApplicationListenAnswer", v);
    
    if (err && mRunning)
        return SendListenAnswer(from, address, dummy, err);
    
    return kTTErrGeneric;
}

TTErr TTProtocol::ActivityInMessage(const TTValue& message)
{
	TTValue dummy;
	
    return mActivityInCallback.send("notify", message, dummy);
}

TTErr TTProtocol::ActivityOutMessage(const TTValue& message)
{
	TTValue dummy;

    return mActivityOutCallback.send("notify", message, dummy);
}



#if 0
#pragma mark -
#pragma mark Some Methods
#endif

TTErr TTProtocolDirectoryCallback(const TTValue& baton, const TTValue& data)
{
	TTObject	aProtocol;
	TTSymbol	anApplicationName;
	TTAddress	anAddress;
	TTNodePtr	aNode;
	TTUInt8		flag;
	TTObject    anObserver;
	TTValue		v;

	// unpack baton
	aProtocol = baton[0];
	anApplicationName = baton[1];
	
	// unpack data (anAddress, aNode, flag, anObserver)
	anAddress = data[0];
	aNode = TTNodePtr((TTPtr)data[1]);
	flag = data[2];
    anObserver = data[3];
	
    if (flag == kAddressCreated) {
        
        if (aNode->getObject().valid())
            v.append(aNode->getObject().name());
        else
            v.append(kTTSym_none);
    }
    else if (flag == kAddressDestroyed) {
        
        v.append(TTSymbol("delete"));
    }
    
    if (TTProtocolPtr(aProtocol.instance())->mRunning)
        return TTProtocolPtr(aProtocol.instance())->SendListenAnswer(anApplicationName, anAddress.appendAttribute(TTSymbol("life")), v);
    else
        return kTTErrGeneric;
}

TTErr TTProtocolAttributeCallback(const TTValue& baton, const TTValue& data)
{
	TTObject	aProtocol;
	TTSymbol	anApplicationName;
	TTAddress	anAddress;
	
	// unpack baton
	aProtocol = baton[0];
	anApplicationName = baton[1];
	anAddress = baton[2];
	
    if (TTProtocolPtr(aProtocol.instance())->mRunning)
        return TTProtocolPtr(aProtocol.instance())->SendListenAnswer(anApplicationName, anAddress, data);
    else
        return kTTErrGeneric;
}

TTErr TTProtocolGetAttributeCallback(const TTValue& baton, const TTValue& data)
{
	TTValuePtr	value;
	TTObject	aProtocol;
	TTSymbol	anApplicationName;
	TTAddress	anAddress;
	TTSymbol	attribute;
	
	// unpack baton
	aProtocol = baton[0];
	anApplicationName = baton[1];
	anAddress = baton[2];
	
	// unpack data
	attribute = data[0];
	value = TTValuePtr((TTPtr)data[1]);
	
	// send a get request
    if (TTProtocolPtr(aProtocol.instance())->mRunning)
        return TTProtocolPtr(aProtocol.instance())->SendGetRequest(anApplicationName, anAddress.appendAttribute(attribute), *value);
    else
        return kTTErrGeneric;
}

TTErr TTProtocolSetAttributeCallback(const TTValue& baton, const TTValue& data)
{
	TTValuePtr	value;
	TTObject	aProtocol;
	TTSymbol	anApplicationName;
	TTAddress	anAddress;
	TTSymbol	attribute;
	
	// unpack baton
	aProtocol = baton[0];
	anApplicationName = baton[1];
	anAddress = baton[2];
	
	// unpack data
	attribute = data[0];
	value = TTValuePtr((TTPtr)data[1]);
	
	// send a set request
    if (TTProtocolPtr(aProtocol.instance())->mRunning)
        return TTProtocolPtr(aProtocol.instance())->SendSetRequest(anApplicationName, anAddress.appendAttribute(attribute), *value);
    else
        return kTTErrGeneric;
}

TTErr TTProtocolSendMessageCallback(const TTValue& baton, const TTValue& data)
{
	TTValuePtr	value;
	TTObject	aProtocol;
	TTSymbol	anApplicationName;
	TTAddress	anAddress;
	TTSymbol	message;
	
	// unpack baton
	aProtocol = baton[0];
	anApplicationName = baton[1];
	anAddress = baton[2];
	
	// unpack data
	message = data[0];
	value = TTValuePtr((TTPtr)data[1]);
	
	// send a set request
    if (TTProtocolPtr(aProtocol.instance())->mRunning)
        return TTProtocolPtr(aProtocol.instance())->SendSetRequest(anApplicationName, anAddress.appendAttribute(message), *value);
    else
        return kTTErrGeneric;
}

TTErr TTProtocolListenAttributeCallback(const TTValue& baton, const TTValue& data)
{
	TTObject	aProtocol;
	TTSymbol	anApplicationName;
	TTAddress	anAddress;
	TTSymbol	attribute;
	TTBoolean	enable;
	
	// unpack baton
	aProtocol = baton[0];
	anApplicationName = baton[1];
	anAddress = baton[2];
	
	// unpack data
    attribute = data[0];
    enable = data[1];
	
	// send a listen request
    if (TTProtocolPtr(aProtocol.instance())->mRunning)
        return TTProtocolPtr(aProtocol.instance())->SendListenRequest(anApplicationName, anAddress.appendAttribute(attribute), enable);
    else
        return kTTErrGeneric;
}

/***************************************************************************
 
	TTProtocolLib
 
 ***************************************************************************/

void TTProtocolLib::getProtocolNames(TTValue& protocolNames)
{
	protocolNames.clear();
	protocolNames.append(TTSymbol("MIDI"));
	protocolNames.append(TTSymbol("OSC"));
    protocolNames.append(TTSymbol("WebSocket"));
    /*
	protocolNames.append(TTSymbol("MIDI"));
	protocolNames.append(TTSymbol("CopperLan"));
	protocolNames.append(TTSymbol("Serial"));
	 */
}

