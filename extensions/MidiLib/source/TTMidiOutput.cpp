/* 
 * Midi Input Object
 * Copyright © 2011, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTGraphObject.h"
#include "TTMidiOutput.h"
#ifdef TT_PLATFORM_WIN
#include <algorithm>
#endif

#define thisTTClass			TTMidiOutput
#define thisTTClassName		"midi.out"
#define thisTTClassTags		"midi, output"


static const int kMidiBufferSize = 100;	// This is arbitrary, is there a more rational value for this?


TT_OBJECT_CONSTRUCTOR,
	mStream(NULL)
//,
//	mPollingThread(NULL),
//	mRunning(YES),
//	mOwner(NULL)
{
	PmError err = Pm_Initialize();

	if (err) {
		logError("err %ld from Pm_Initialize()", err);
	}
	
//	addAttribute(Owner,				kTypePointer);
	addAttributeWithSetter(Device,	kTypeSymbol);
	
	addMessageWithArgument(dictionary);
	addMessageWithArgument(getAvailableDeviceNames);
	
	setAttributeValue(TT("device"), TT("default"));
}


TTMidiOutput::~TTMidiOutput()
{
	// TODO: we are supposed to call Pm_Terminate() when we are done using the library
	// but we don't currently have a "shutdown" method for classes when the system is torn down
//	mRunning = NO;
//	if (mPollingThread)
//		mPollingThread->wait();
//	delete mPollingThread;
}


TTErr TTMidiOutput::dictionary(const TTValue& aDictionaryValue)
{
	TTDictionaryPtr	d = NULL;
	TTSymbolPtr		schema;
	
	aDictionaryValue.get(0, (TTPtr*)(&d));
	schema = d->getSchema();
	if (schema == TT("RawMidiEvent")) {
		TTValue statusByte;
		TTValue dataByte1;
		TTValue dataByte2;
		int		msg;
		
		d->lookup(TT("status"), statusByte);
		d->lookup(TT("data1"), dataByte1);
		d->lookup(TT("data2"), dataByte2);
		msg = Pm_Message(TTUInt8(statusByte), TTUInt8(dataByte1), TTUInt8(dataByte2));	

		Pm_WriteShort(mStream, 0, msg);
		return kTTErrNone;
	}
	else {
		return kTTErrInvalidType;
	}

}


TTErr TTMidiOutput::getAvailableDeviceNames(TTValue& returnedDeviceNames)
{
	const PmDeviceInfo*	deviceInfo = NULL;
    int					deviceCount = Pm_CountDevices();
	
	returnedDeviceNames.clear();
	
    if (deviceCount < 0) {
        logError("Pa_CountDevices() returned 0x%x\n", deviceCount);
        return kTTErrGeneric;
    }
	
    for (int i=0; i<deviceCount; i++) {
        deviceInfo = Pm_GetDeviceInfo(i);
		if (deviceInfo->output)
			returnedDeviceNames.append(TT(deviceInfo->name));
    }
	return kTTErrNone;
}


/*
void* TTMidiPoll(TTMidiInput* self)
{
	PmEvent	buffer[64];
	int		result;
	
	while (self->mRunning) {
		if (Pm_Poll(self->mStream)) {
			result = Pm_Read(self->mStream, buffer, 64);
			if (result < 0) {
				// result is an error number
				TTLogError("TTMidiPoll result: %ld\n", result);
			}
			else {
				// result is the number of midi events
				for (int i=0; i<result; i++) {
					TTDictionaryPtr d = new TTDictionary;
					TTValue			v(d);
					
					// buffer[i].timestamp;
					// buffer[i].message;

					char statusByte = Pm_MessageStatus(buffer[i].message);
					char dataByte1 = Pm_MessageData1(buffer[i].message);
					char dataByte2 = Pm_MessageData2(buffer[i].message);
					
					// TODO: add some cooked Midi event types too (e.g. for notes or control)
					
					d->setSchema(TT("RawMidiEvent"));
					d->append(TT("status"), statusByte);
					d->append(TT("data1"), dataByte1);
					d->append(TT("data2"), dataByte2);
					
					//self->mCallbackObservers->iterateObjectsSendingMessage(kTTSym_audioEngineWillProcess, v);
					if (self->mOwner)
						self->mOwner->push(*d);
					
					// TODO: now need to free the dictionary!
				}
			}
		}
		sleep(1);
	}
	return NULL;
}
*/

TTErr TTMidiOutput::setDevice(TTValue& newDeviceName)
{
	TTSymbolPtr			newDevice = newDeviceName;
	const PmDeviceInfo*	deviceInfo;
    int					deviceCount;
	PmError				err = pmNoError;
	
	if (newDevice != mDevice) {
		if (newDevice == TT("default")) {
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
//		mRunning = NO;
//		if (mPollingThread)
//			mPollingThread->wait();
//		delete mPollingThread;
		
		if (mStream) {
			Pm_Close(mStream);
			mStream = NULL;
		}
		
		err = Pm_OpenOutput(&mStream, mID, NULL, kMidiBufferSize, NULL, NULL, 0);
		if (err) {
			logError("uh oh\n");
		}
		
//		mRunning = YES;
//		mPollingThread = new TTThread(TTThreadCallbackType(TTMidiPoll), this);
	}
	return kTTErrNone;
}

