/** @file
 *
 * @ingroup modularMIDI
 *
 * @brief a MIDI input
 *
 * @details
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

TTErr MIDIInput::setDevice(TTSymbol& newDevice)
{
	const PmDeviceInfo*	deviceInfo;
    int					deviceCount;
	PmError				err = pmNoError;
	
	if (newDevice != mDevice) {
        
		if (newDevice == TTSymbol("default")) {
			mID = Pm_GetDefaultInputDeviceID();
			mDeviceInfo = Pm_GetDeviceInfo(mID);
		}
		else {
            
			int i;
			
			deviceCount = Pm_CountDevices();
			for (i=0; i<deviceCount; i++) {
				deviceInfo = Pm_GetDeviceInfo(i);
				if (newDevice == TT(deviceInfo->name)) {
					mDeviceInfo = deviceInfo;
					mID = i;
					break;
				}
			}
			if (i == deviceCount)
				return kTTErrGeneric;
		}
		
		mDevice = newDevice;
        
        setRunning(NO);
		
		if (mStream) {
			Pm_Close(mStream);
			mStream = NULL;
		}
		
		err = Pm_OpenInput(&mStream, mID, NULL, kMidiBufferSize, NULL, NULL);
		if (err) {
            
			TTLogError("MIDIInput::setDevice : can't open the %s device\n", mDevice.c_str());
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
            
            mPollingThread = new TTThread(TTThreadCallbackType(MidiPoll), this);
        }
        else {
            
            if (mPollingThread)
                mPollingThread->wait();
            delete mPollingThread;
        }
    }
    
    return kTTErrNone;
}

void editAddress(TTString format, TTUInt8 i, TTAddress& returnedAddress)
{
    char *s_num;
    TTUInt8 len;
    
    if (i > 0) {
        len = format.size() + (TTInt32)log10((TTFloat32)i); // note : %d (lenght = 2) is replaced by 1 character (0::9), 2 charecters (10 :: 99), 3 char...
        s_num = (char *)malloc(sizeof(char)*len);
        snprintf(s_num, len, format.c_str(), i);
        returnedAddress = TTAddress(s_num);
        free(s_num);
    }
}

void* MidiPoll(MIDIInput* self)
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
				
				for (TTInt32 i = 0; i < result; i++) {
                    
					char statusByte = Pm_MessageStatus(buffer[i].message);
					char dataByte1 = Pm_MessageData1(buffer[i].message);
					char dataByte2 = Pm_MessageData2(buffer[i].message);
                    
                    // edit channel address part
                    TTUInt8     channel = (statusByte & 0x0F) + 1;
                    TTAddress   channelPart;
                    editAddress("/channel.%ld", channel, channelPart);
                    
                    // edit command address part and value
                    TTUInt8     command = statusByte & 0xF0;
                    TTAddress   commandPart;
                    TTValue     value;
                    switch (command) {
                            
                        case 128 :  // NOTE OFF : dataByte1 = pitch, dataByte2 = velocity (always 0)
                        {
                            editAddress("note.%ld", dataByte1, commandPart);
                            value = TTUInt32(dataByte2);
                            break;
                        }
                        case 144 :  // NOTE ON : dataByte1 = pitch, dataByte2 = velocity (always > 0)
                        {
                            editAddress("note.%ld", dataByte1, commandPart);
                            value = TTUInt32(dataByte2);
                            break;
                        }
                        case 160 :  // POLY PRESSURE : dataByte1 = pitch, dataByte2 = pressure
                        {
                            editAddress("pressure.%ld", dataByte1, commandPart);
                            value = TTUInt32(dataByte2);
                            break;
                        }
                        case 176 :  // CONTROL CHANGE : dataByte1 = control type, dataByte2 = control value
                        {
                            editAddress("control.%ld", dataByte1, commandPart);
                            value = TTUInt32(dataByte2);
                            break;
                        }
                        case 192 :  // PROGRAM CHANGE : dataByte1 = program number, dataByte2 not used
                        {
                            editAddress("program.%ld", dataByte1, commandPart);
                            value.clear();
                            break;
                        }
                        case 208 :  // CHANNEL PRESSURE : dataByte1 = pressure, dataByte2 not used
                        {
                            commandPart = TTAddress("pressure");
                            value = TTUInt32(dataByte1);
                            break;
                        }
                        case 224 :  // PITCH WHELL ?
                        {
                            
                            break;
                        }
                        default :   // ?
                        {
                            
                            break;
                        }
                    }
                    
                    // edit /channel/command address + value
                    TTAddress address = channelPart.appendAddress(commandPart);
                    
                    self->mProtocol->receivedMessage(self->mApplication, address, value);
                    
                    // TODO ? edit /raw statusByte dataByte1 dataByte2
                    // TODO ? return buffer[i].timestamp
                }
            }
        }
        
        self->mPollingThread->sleep(1);
    }
    
    return NULL;
}