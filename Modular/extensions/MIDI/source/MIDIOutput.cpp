/** @file
 *
 * @ingroup modularMIDI
 *
 * @brief bind to an external device destination
 *
 * @details MidiOutput sends messages to one external device. @n
 * It is a wrapper around the PortMidi library. @n
 *
 * @author Theo Delahogue
 *
 * @copyright © 2014, GMEA (http://www.gmea.net) @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "MIDIOutput.h"

MIDIOutput::MIDIOutput(MIDIPtr protocol, TTSymbol& application) :
mProtocol(protocol),
mStream(NULL),
mRunning(NO),
mApplication(application)
{
    ;
}

MIDIOutput::~MIDIOutput()
{
	mRunning = NO;
    
    if (mStream) {
        Pm_Close(mStream);
        mStream = NULL;
    }
}

TTErr MIDIOutput::setName(TTSymbol& newName)
{
	const PmDeviceInfo*	deviceInfo;
    int					i, deviceCount;
	PmError				err = pmNoError;
	
	if (newName != mName) {
        
        // check there is an output with this name
        deviceCount = Pm_CountDevices();
        for (i = 0; i < deviceCount; i++) {
            
            deviceInfo = Pm_GetDeviceInfo(i);
            
            if (deviceInfo->output && newName == TTSymbol(deviceInfo->name))
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
		
		err = Pm_OpenOutput(&mStream, i, NULL, kMidiBufferSize, NULL, NULL, 0);
		if (err) {
            
			TTLogError("MIDIOutput::setName : can't open the %s device\n", mName.c_str());
            return kTTErrGeneric;
        }
	}
    
	return kTTErrNone;
}

TTErr MIDIOutput::setRunning(TTBoolean running)
{
    if (running != mRunning) {
        
        mRunning = running;
    }
    
    return kTTErrNone;
}

TTErr MIDIOutput::sendMessage(TTAddress& address, const TTValue& value)
{
    if (mRunning) {
        
        MIDIParserTo    parser;
        TTBoolean       done;
        
        // until the parsing ends
        do {
            done = parser.parse(address, value);
            int message = Pm_Message(parser.statusByte, parser.dataByte1, parser.dataByte2);
            Pm_WriteShort(mStream, 0, message);
        }
        while (!done);
        
        return kTTErrNone;
    }
    
    return kTTErrGeneric;
}