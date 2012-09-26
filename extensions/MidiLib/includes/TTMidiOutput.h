/* 
 * Midi Output Object
 * Copyright © 2011, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_MIDIOUTPUT_H__
#define __TT_MIDIOUTPUT_H__

#include "TTDSP.h"
#include "TTGraph.h"
#include "portmidi.h"


/**	TTMidiOutput sends MIDI to an external device.  
	It is a wrapper around the PortMidi library. 
 */

class TTMidiOutput : TTDataObject {
	TTCLASS_SETUP(TTMidiOutput)

public:
	
	TTSymbol			mDevice;			///< attr: selected device name
	const PmDeviceInfo*	mDeviceInfo;		///< selected device info struct
	PmDeviceID			mID;				///< selected device ID number
	PortMidiStream*		mStream;			///< a descriptor for a MIDI device that is opened when the device is set
	
	TTErr dictionary(const TTValue& aDictionary, TTValue&);
	TTErr getAvailableDeviceNames(const TTValue&, TTValue& returnedDeviceNames);
	TTErr setDevice(TTValue& newDeviceName);

};


#endif // __TT_MIDIOUTPUT_H__
