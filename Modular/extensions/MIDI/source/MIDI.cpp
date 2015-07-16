/** @file
 *
 * @ingroup modularMIDI
 *
 * @brief the MIDI protocol for Jamoma Modular
 *
 * @details
 *
 * @author Theo Delahogue
 *
 * @copyright © 2014, GMEA (http://www.gmea.net) @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTProtocol.h"
#include "MIDI.h"

#define thisTTClass				MIDI
#define thisTTClassName			"MIDI"
#define thisTTClassTags			"network, protocol, MIDI"

#define thisProtocolVersion		"0.1"
#define thisProtocolAuthor		"Theo de la Hogue"
#define thisProtocolGet         NO
#define thisProtocolSet         YES
#define thisProtocolListen      NO
#define thisProtocolDiscover	NO
#define thisProtocolDiscoverAll	NO

extern "C" TT_EXTENSION_EXPORT TTErr TTLoadJamomaExtension_MIDI(void)
{
	TTFoundationInit();
	MIDI::registerClass();
	return kTTErrNone;
}

TT_PROTOCOL_CONSTRUCTOR
{	
	TT_PROTOCOL_INITIALIZE
	
    addAttributeAsProtocolParameter(Input, kTypeSymbol);
    addAttributeAsProtocolParameter(Output, kTypeSymbol);
	
	PmError err = Pm_Initialize();
    
	if (err) {
        mRunning = NO;
		TTLogError("MIDI : error %ld from Pm_Initialize()", err);
    }
    else
        mRunning = YES;
    
    // instantiate the client handle
#if !defined(TT_PLATFORM_MAC)
    ;   // TODO
#else
    OSStatus status = MIDIClientCreate(CFSTR("PortMidi"), NULL, NULL, &mClient);
    if (status != noErr) {
        TTLogError("Could not initialize PortMidi client : %d\n", (int)status);
        return;
    }
#endif
}

MIDI::~MIDI()
{
    TTValue         applications, v;
    TTSymbol        applicationName;
    MIDIInputPtr    midiInput;
    MIDIOutputPtr   midiOutput;
    
    // clear mInputs
    mInputs.getKeys(applications);
    for (TTUInt32 i = 0; i < applications.size(); i++) {
        
        applicationName = applications[i];
        mInputs.lookup(applicationName, v);
        midiInput = MIDIInputPtr(TTPtr(v[0]));
        delete midiInput;
    }
    mInputs.clear();
    
    // clear mOutputs
    mOutputs.getKeys(applications);
    for (TTUInt32 i = 0; i < applications.size(); i++) {
        
        applicationName = applications[i];
        mOutputs.lookup(applicationName, v);
        midiOutput = MIDIOutputPtr(TTPtr(v[0]));
        delete midiOutput;
    }
    mOutputs.clear();
    
    // release the client handle
#if !defined(TT_PLATFORM_MAC)
    ;   // TODO
#else
    MIDIClientDispose(mClient);
#endif
    
    Pm_Terminate();
}

TTErr MIDI::sendMessage(TTSymbol& applicationName, TTAddress& address, const TTValue& value)
{
    TTValue v;
    
    if (!mOutputs.lookup(applicationName, v)) {
        
        MIDIOutputPtr midiOutput = MIDIOutputPtr(TTPtr(v[0]));
        
        if (!midiOutput->sendMessage(address, value)) {
            
            if (mActivity) {
                
                TTValue message = value;
                message.prepend(address);
                ActivityOutMessage(message);
            }
            
            return kTTErrNone;
        }
    }
    
    return kTTErrGeneric;
}

TTErr MIDI::receivedMessage(TTSymbol& applicationName, TTAddress& address, const TTValue& value)
{
	if (mActivity) {
        
        TTValue message = value;
        message.prepend(address);
        ActivityInMessage(message);
    }
	
    // to local application
    if (applicationName == mLocalApplicationName)
        return ReceiveSetRequest(kTTSymEmpty, address, value);
    
    // from distant application
    else
        return ReceiveListenAnswer(applicationName, address, value);
}

TTErr MIDI::Scan(const TTValue& inputValue, TTValue& outputValue)
{
    const PmDeviceInfo*	deviceInfo = NULL;
    int					deviceCount = Pm_CountDevices();
    TTSymbol            deviceType;
    
    if (inputValue.size() == 1) {
        
        if (inputValue[0].type() == kTypeSymbol) {
            
            deviceType = inputValue[0];
            
            if (deviceCount < 0) {
                
                logError("Pm_CountDevices() returned 0x%x\n", deviceCount);
                return kTTErrGeneric;
            }
            
			for (TTInt32 i = 0; i < deviceCount; i++) {
                
                deviceInfo = Pm_GetDeviceInfo(i);
                
                if (deviceType == TTSymbol("inputs") && deviceInfo->input)
                    outputValue.append(TTSymbol(deviceInfo->name));
                
                else if (deviceType == TTSymbol("outputs") && deviceInfo->output)
                    outputValue.append(TTSymbol(deviceInfo->name));

            }
            
            return kTTErrNone;
        }
    }
    
    return kTTErrGeneric;
}

/*!
 * Run the reception thread
 *
 */
TTErr MIDI::Run(const TTValue& inputValue, TTValue& outputValue)
{
    // start one application at time
    if (inputValue.size() == 1) {
        
        if (inputValue[0].type() == kTypeSymbol) {
            
            TTSymbol    applicationName = inputValue[0];
            TTValue     v;
            
            // select the given application to get its "input" and "output" device parameter
            ApplicationSelect(applicationName, v);
            
            // enable MIDI message reception for the application (if it have an "input" parameter)
            if (applicationName == mLocalApplicationName)
                runDestination(applicationName);
            else
                runInput(applicationName);
            
            // enable MIDI message sending for the application (if it have an "output" parameter)
            if (applicationName == mLocalApplicationName)
                runSource(applicationName);
            else
                runOutput(applicationName);
            
            return kTTErrNone;
        }
    }
    
    // or start all registered applications
    TTValue applications, none;
    
    mApplicationParameters.getKeys(applications);
    for (TTUInt32 i = 0; i < applications.size(); i++)
        Run(applications[i], none);
	
	return kTTErrNone;
}

TTErr MIDI::runDestination(TTSymbol& applicationName)
{
    TTObject            MIDIProtocol(this);
    MIDIDestinationPtr  midiDestination = NULL;
    TTValue             v;
    TTErr               err;
    
    // if the application is still not registered as input
    if (mInputs.lookup(applicationName, v)) {
        
        // get the input device name parameter
        MIDIProtocol.get("input", v);
        
        if (v.size()) {
            
            TTSymbol inputName = v[0];
            
            // create a specific-plateform MIDI destination object
#if !defined(TT_PLATFORM_MAC)
            ; // TODO
#else
            midiDestination = new MIDIDestination(this, applicationName, mClient);
#endif
            err = midiDestination->setName(inputName);
            
            // if the name is already used
            if (err) {
                delete midiDestination;
                midiDestination = NULL;
            }
            // register the MIDI source as input
            else
                mInputs.append(applicationName, TTPtr(midiDestination));
        }
    }
    // if the application is already registered as input
    else {
        
        midiDestination = MIDIDestinationPtr(TTPtr(v[0]));
        
        // if the application is not registered anymore
        if (mApplicationParameters.lookup(applicationName, v)) {
            
            // clear MIDI destination
            delete midiDestination;
            midiDestination = NULL;
            mInputs.remove(applicationName);
        }
    }
    
    // run the MIDI destination if there is one
    if (midiDestination) {
        
        midiDestination->setRunning(YES);
        return kTTErrNone;
    }
    
    return kTTErrGeneric;
}

TTErr MIDI::runInput(TTSymbol& applicationName)
{
    TTObject        MIDIProtocol(this);
    MIDIInputPtr    midiInput = NULL;
    TTValue         v;
    TTErr           err;
    
    // if the application is still not registered as input
    if (mInputs.lookup(applicationName, v)) {
        
        // get the input device name parameter
        MIDIProtocol.get("input", v);
        
        if (v.size()) {
            
            TTSymbol inputName = v[0];
            
            // create a MIDI input object
            midiInput = new MIDIInput(this, applicationName);
            err = midiInput->setName(inputName);
            
            // if the device doesn't exist
            if (err) {
                delete midiInput;
                midiInput = NULL;
            }
            // register the MIDI input
            else
                mInputs.append(applicationName, TTPtr(midiInput));
        }
    }
    // if the application is already registered as input
    else {
        
        midiInput = MIDIInputPtr(TTPtr(v[0]));
        
        // if the application is not registered anymore
        if (mApplicationParameters.lookup(applicationName, v)) {
            
            // clear the MIDI input
            delete midiInput;
            midiInput = NULL;
            mInputs.remove(applicationName);
        }
    }
    
    // run the MIDI input if there is one
    if (midiInput) {
        
        midiInput->setRunning(YES);
        return kTTErrNone;
    }
    
    return kTTErrGeneric;
}

TTErr MIDI::runOutput(TTSymbol& applicationName)
{
    TTObject        MIDIProtocol(this);
    MIDIOutputPtr   midiOutput = NULL;
    TTValue         v;
    TTErr           err;
    
    // if the application is still not registered as output
    if (mOutputs.lookup(applicationName, v)) {
        
        // get the output device name parameter
        MIDIProtocol.get("output", v);
        
        if (v.size()) {
            
            TTSymbol outputName = v[0];
            
            // create a MIDI output object
            midiOutput = new MIDIOutput(this, applicationName);
            err = midiOutput->setName(outputName);
            
            // if the device doesn't exist
            if (err) {
                delete midiOutput;
                midiOutput = NULL;
            }
            // register the MIDI output
            else
                mOutputs.append(applicationName, TTPtr(midiOutput));
        }
    }
    // if the application is already registered as output
    else {
    
        midiOutput = MIDIOutputPtr(TTPtr(v[0]));
        
        // if the application is not registered anymore
        if (mApplicationParameters.lookup(applicationName, v)) {
            
            // clear the MIDI output
            delete midiOutput;
            midiOutput = NULL;
            mOutputs.remove(applicationName);
        }
    }
    
    // run the MIDI output if there is one
    if (midiOutput) {
        
        midiOutput->setRunning(YES);
        return kTTErrNone;
    }
    
    return kTTErrGeneric;
}

TTErr MIDI::runSource(TTSymbol& applicationName)
{
    TTObject        MIDIProtocol(this);
    MIDISourcePtr   midiSource = NULL;
    TTValue         v;
    TTErr           err;
    
    // if the application is still not registered as output
    if (mOutputs.lookup(applicationName, v)) {
        
        // get the output device name parameter
        MIDIProtocol.get("output", v);
        
        if (v.size()) {
            
            TTSymbol outputName = v[0];
            
            // create a specific-plateform MIDI source object
#if !defined(TT_PLATFORM_MAC)
            ; // TODO
#else
            midiSource = new MIDISource(this, applicationName, mClient);
#endif
            err = midiSource->setName(outputName);
            
            // if the name is already used
            if (err) {
                delete midiSource;
                midiSource = NULL;
            }
            // register the MIDI source as input
            else
                mOutputs.append(applicationName, TTPtr(midiSource));
        }
    }
    // if the application is already registered as output
    else {
        midiSource = MIDISourcePtr(TTPtr(v[0]));
        
        // if the local application is not registered anymore
        if (mApplicationParameters.lookup(applicationName, v)) {
            
            // clear the MIDI source
            delete midiSource;
            midiSource = NULL;
            mInputs.remove(applicationName);
        }
    }
    
    // run the MIDI source if there is one
    if (midiSource) {
        
        midiSource->setRunning(YES);
        return kTTErrNone;
    }
    
    return kTTErrGeneric;
}

/*!
 * Stop the reception thread
 *
 */
TTErr MIDI::Stop(const TTValue& inputValue, TTValue& outputValue)
{
    // stop one MIDI device at time
    if (inputValue.size() == 1) {
        
        if (inputValue[0].type() == kTypeSymbol) {
            
            TTSymbol    applicationName = inputValue[0];
            TTValue     v;
            
            // select the given application to get its "input" and "output" device parameter
            ApplicationSelect(applicationName, v);
            
            // disable MIDI message reception for the application (if it have an "input" parameter)
            if (applicationName == mLocalApplicationName)
                stopDestination(applicationName);
            else
                stopInput(applicationName);
            
            // disable MIDI message sending for the application (if it have an "output" parameter)
            if (applicationName == mLocalApplicationName)
                stopSource(applicationName);
            else
                stopOutput(applicationName);
            
            return kTTErrNone;
        }
    }
    
    // or stop all registered applications
    TTValue applications, none;
    
    mApplicationParameters.getKeys(applications);
    for (TTUInt32 i = 0; i < applications.size(); i++)
        Stop(applications[i], none);
	
	return kTTErrNone;
}

TTErr MIDI::stopDestination(TTSymbol& applicationName)
{
    TTObject            MIDIProtocol(this);
    MIDIDestinationPtr  midiDestination = NULL;
    TTValue             v;
    
    // if the application is already registered as input
    if (!mInputs.lookup(applicationName, v)) {
        
        midiDestination = MIDIDestinationPtr(TTPtr(v[0]));
        
        // if the application is not registered anymore
        if (mApplicationParameters.lookup(applicationName, v)) {
            
            // clear the MIDI destination
            delete midiDestination;
            midiDestination = NULL;
            mInputs.remove(applicationName);
        }
        
        // stop the MIDI destination
        if (midiDestination) {
            
            midiDestination->setRunning(NO);
            return kTTErrNone;
        }
    }
    
    return kTTErrGeneric;
}

TTErr MIDI::stopInput(TTSymbol& applicationName)
{
    TTObject        MIDIProtocol(this);
    MIDIInputPtr    midiInput = NULL;
    TTValue         v;
    
    // if the application is already registered as input
    if (!mInputs.lookup(applicationName, v)) {
        
        midiInput = MIDIInputPtr(TTPtr(v[0]));
        
        // if the application is not registered anymore
        if (mApplicationParameters.lookup(applicationName, v)) {
            
            // clear the MIDI input
            delete midiInput;
            midiInput = NULL;
            mInputs.remove(applicationName);
        }
        
        // stop the MIDI input
        if (midiInput) {
            
            midiInput->setRunning(NO);
            return kTTErrNone;
        }
    }
    
    return kTTErrGeneric;
}

TTErr MIDI::stopOutput(TTSymbol& applicationName)
{
    TTObject        MIDIProtocol(this);
    MIDIOutputPtr   midiOutput = NULL;
    TTValue         v;
    
    // if the application is already registered as output
    if (!mOutputs.lookup(applicationName, v)) {
        
        midiOutput = MIDIOutputPtr(TTPtr(v[0]));
        
        // if the application is not registered anymore
        if (mApplicationParameters.lookup(applicationName, v)) {
            
            // clear the MIDI output
            delete midiOutput;
            midiOutput = NULL;
            mOutputs.remove(applicationName);
        }
        
        // stop the MIDI output
        if (midiOutput) {
            
            midiOutput->setRunning(NO);
            return kTTErrNone;
        }
    }
    
    return kTTErrGeneric;
}

TTErr MIDI::stopSource(TTSymbol& applicationName)
{
    TTObject        MIDIProtocol(this);
    MIDISourcePtr   midiSource = NULL;
    TTValue         v;
    
    // if the application is already registered as output
    if (!mOutputs.lookup(applicationName, v)) {
        
        midiSource = MIDISourcePtr(TTPtr(v[0]));
        
        // if the application is not registered anymore
        if (mApplicationParameters.lookup(applicationName, v)) {
            
            // clear the MIDI source
            delete midiSource;
            midiSource = NULL;
            mOutputs.remove(applicationName);
        }
        
        // stop the MIDI source
        if (midiSource) {
            
            midiSource->setRunning(NO);
            return kTTErrNone;
        }
    }
    
    return kTTErrGeneric;
}

/**************************************************************************************************************************
 *
 *	SEND REQUEST METHODS
 *
 **************************************************************************************************************************/

/*!
 * Send a discover request to an application to get a part of the namespace at the given address
 *
 @param to					: the application where to discover
 @param address				: the address to discover
 @param returnedType          : the type of the node at the address (default is none which means no type)
 @param returnedChildren      : all names of nodes below the address
 @param returnedAttributes	: all attributes the node at the address
 @return errorcode			: kTTErrNone means the answer has been received, kTTErrValueNotFound means something is bad in the request
 else it returns kTTErrGeneric if no answer or timeout
 */
TTErr MIDI::SendDiscoverRequest(TTSymbol to, TTAddress address,
                                  TTSymbol& returnedType,
                                  TTValue& returnedChildren,
                                  TTValue& returnedAttributes,
                                  TTUInt8 tryCount)
{
	return kTTErrGeneric;
}

/*!
 * Send a discover all request to an application to fill all the directory under this address
 *
 @param to					: the application where to discover
 @param address				: the address to discover
 @param node                  : the node for this address
 @param tryCount              : number of try for this request
 @return errorcode			: kTTErrNone means the answer has been received, kTTErrValueNotFound means something is bad in the request
 else it returns kTTErrGeneric if no answer or timeout
 */
TTErr MIDI::SendDiscoverAllRequest(TTSymbol to, TTAddress address, TTNodePtr node, TTUInt8 tryCount)
{
    return kTTErrGeneric;
}

/*!
 * Send a get request to an application to get a value at the given address
 *
 @param to					: the application where to get
 @param address				: the address to get
 @param returnedValue			: the value which is going to be filled
 @return errorcode			: kTTErrNone means the answer has been received, kTTErrValueNotFound means something is bad in the request
 else it returns kTTErrGeneric if no answer or timeout
 */
TTErr MIDI::SendGetRequest(TTSymbol to, TTAddress address, 
							 TTValue& returnedValue,
                             TTUInt8 tryCount)
{
	return kTTErrGeneric;
}

/*!
 * Send a set request to set a value of a specific application
 *
 @param to					: the application where to set
 @param address				: the address to set
 @param value					: anything to send
 @return errorcode			: kTTErrNone means the answer has been received, kTTErrValueNotFound means something is bad in the request
 */
TTErr MIDI::SendSetRequest(TTSymbol to, TTAddress address, 
							 TTValue& value,
                             TTUInt8 tryCount)
{
    return sendMessage(to, address, value);
}

/*!
 * Send a listen request to a specific application
 *
 @param to					: the application where to listen
 @param address				: the address to listen
 @param enable				: enable/disable the listening
 @return errorcode			: kTTErrNone means the answer has been received, kTTErrValueNotFound means something is bad in the request
 */
TTErr MIDI::SendListenRequest(TTSymbol to, TTAddress address, 
								TTBoolean enable,
                                TTUInt8 tryCount)
{
    return kTTErrGeneric;
}


/**************************************************************************************************************************
 *
 *	SEND ANSWER METHODS
 *
 **************************************************************************************************************************/

/*!
 * Send a disover answer to a application which ask for.
 *
 @param to					: the application where to send answer
 @param address				: the address where comes from the description
 @param returnedType          : the type of the node at the address (default is none which means no type)
 @param returnedChildren      : all names of nodes below the address
 @param returnedAttributes	: all attributes the node at the address
 */
TTErr MIDI::SendDiscoverAnswer(TTSymbol to, TTAddress address,
                         TTSymbol& returnedType,
                         TTValue& returnedChildren,
                         TTValue& returnedAttributes,
                         TTErr err)
{
    return kTTErrGeneric;
}

/*!
 * Send a disover answer to a application which ask for.
 *
 @param to					: the application where to send answer
 @param address				: the address where comes from the description
 @param node                  : the node for this address
 */
TTErr MIDI::SendDiscoverAllAnswer(TTSymbol to, TTAddress address, TTNodePtr node, TTErr err)
{
    return kTTErrGeneric;
}

/*!
 * Send a get answer to an application which ask for.
 *
 @param to					: the application where to send answer
 @param address				: the address where comes from the value
 @param returnedValue			: the value of the attribute at the address
 */
TTErr MIDI::SendGetAnswer(TTSymbol to, TTAddress address, 
							const TTValue& returnedValue,
							TTErr err)
{
    return kTTErrGeneric;
}

/*!
 * Send a listen answer to an application which ask for.
 *
 @param to					: the application where to send answer
 @param address				: the address where comes from the value
 @param returnedValue			: the value of the attribute at the address
 */
TTErr MIDI::SendListenAnswer(TTSymbol to, TTAddress address, 
							   const TTValue& returnedValue,
							   TTErr err)
{
    return kTTErrGeneric;
}
