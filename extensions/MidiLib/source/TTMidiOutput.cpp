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
{
	PmError err = Pm_Initialize();

	if (err) {
		logError("err %ld from Pm_Initialize()", err);
	}
	
	addAttributeWithSetter(Device,	kTypeSymbol);
	
	addMessageWithArguments(dictionary);
	addMessageWithArguments(getAvailableDeviceNames);
	
	setAttributeValue(TT("device"), TT("default"));
}


TTMidiOutput::~TTMidiOutput()
{
	// TODO: we are supposed to call Pm_Terminate() when we are done using the library
	// but we don't currently have a "shutdown" method for classes when the system is torn down
}


TTErr TTMidiOutput::dictionary(const TTValue& aDictionaryValue, TTValue&)
{
	TTDictionaryPtr	d = NULL;
	TTSymbol		schema;
	
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


TTErr TTMidiOutput::getAvailableDeviceNames(const TTValue&, TTValue& returnedDeviceNames)
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


TTErr TTMidiOutput::setDevice(TTValue& newDeviceName)
{
	TTSymbol			newDevice = newDeviceName;
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
		
		if (mStream) {
			Pm_Close(mStream);
			mStream = NULL;
		}
		
		err = Pm_OpenOutput(&mStream, mID, NULL, kMidiBufferSize, NULL, NULL, 0);
		if (err) {
			logError("uh oh\n");
		}
	}
	return kTTErrNone;
}

