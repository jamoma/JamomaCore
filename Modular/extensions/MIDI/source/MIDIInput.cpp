/** @file
 *
 * @ingroup modularMIDI
 *
 * @brief bind to an external device source
 *
 * @details MidiInput receives messages from one external device. @n
 * It is a wrapper around the PortMidi library. @n
 *
 * @author Theo Delahogue
 *
 * @copyright © 2014, GMEA (http://www.gmea.net) @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "MIDIInput.h"

MIDIInput::MIDIInput(MIDIPtr protocol, TTSymbol& application) :
mProtocol(protocol),
mStream(NULL),
mPollingThread(NULL),
mRunning(NO),
mApplication(application)
{
    ;
}

MIDIInput::~MIDIInput()
{
	mRunning = NO;
    
    if (mStream) {
        Pm_Close(mStream);
        mStream = NULL;
    }
    
	if (mPollingThread)
		mPollingThread->wait();
	delete mPollingThread;
}

TTErr MIDIInput::setName(TTSymbol& newName)
{
	const PmDeviceInfo*	deviceInfo;
    int					i, deviceCount;
	PmError				err = pmNoError;
	
	if (newName != mName) {
        
        // check there is an input with this name
        deviceCount = Pm_CountDevices();
        for (i = 0; i < deviceCount; i++) {
            
            deviceInfo = Pm_GetDeviceInfo(i);
            
            if (deviceInfo->input && newName == TTSymbol(deviceInfo->name))
                break;
        }
        
        if (i == deviceCount)
            return kTTErrGeneric;
		
		mName = newName;
        
        setRunning(NO);
		
		if (mStream) {
			Pm_Close(mStream);
			mStream = NULL;
		}
		
		err = Pm_OpenInput(&mStream, i, NULL, kMidiBufferSize, NULL, NULL);
		if (err) {
            
			TTLogError("MIDIInput::setName : can't open the %s device\n", mName.c_str());
            return kTTErrGeneric;
        }
	}
    
	return kTTErrNone;
}

TTErr MIDIInput::setRunning(TTBoolean running)
{
    if (running != mRunning) {
        
        mRunning = running;
        
        if (mRunning) {
            
            mPollingThread = new TTThread(TTThreadCallbackType(MIDIInputPoll), this);
        }
        else {
            
            if (mPollingThread)
                mPollingThread->wait();
            delete mPollingThread;
        }
    }
    
    return kTTErrNone;
}

void* MIDIInputPoll(MIDIInput* self)
{
	PmEvent	buffer[64];
	int		result;
	
	while (self->mRunning) {
        
		if (Pm_Poll(self->mStream)) {
            
			result = Pm_Read(self->mStream, buffer, 64);
            
            // result is an error number
			if (result < 0) {
				
				TTLogError("MidiPoll error\n");
			}
            // result is the number of midi events
			else {
                
                MIDIParserFrom parser;
				
				for (TTInt32 i = 0; i < result; i++) {
                    
                    // if the parsing is done : pass address and value
                    if (parser.parse(Pm_MessageStatus(buffer[i].message), Pm_MessageData1(buffer[i].message), Pm_MessageData2(buffer[i].message)))
                        self->mProtocol->receivedMessage(self->mApplication, parser.address, parser.value);
                }
            }
        }
        
        self->mPollingThread->sleep(1);
    }
    
    return NULL;
}