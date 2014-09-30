/** @file
 *
 * @ingroup modularMIDI
 *
 * @brief a MIDI output
 *
 * @details MidiOutput receives MIDI output from an external device. @n
 * It is a wrapper around the PortMidi library. @n
 *
 * @author Theo Delahogue
 *
 * @copyright © 2014, GMEA (http://www.gmea.net) @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __MIDI_OUTPUT_H__
#define __MIDI_OUTPUT_H__

#include "MIDIInclude.h"
#include "MIDI.h"

class MIDI;
typedef MIDI* MIDIPtr;

class MIDIOutput
{
    MIDIPtr                 mProtocol;          ///< The MIDI protocol object which manages all MIDI outputs
    
    PortMidiStream*		    mStream;			///< a descriptor for a MIDI device that is opened when the device is set
    TTBoolean			    mRunning;			///< should the thread be running ? If NO then the thread will know to abort itself
	
public:
	
    TTSymbol			    mApplication;       ///< the application name this device handles
	TTSymbol			    mDevice;			///< selected device name
	const PmDeviceInfo*	    mDeviceInfo;		///< selected device info struct
	PmDeviceID			    mID;				///< selected device ID number
    
    /** Constructor
     @param arguments       #MIDI protocol object pointer, #TTSymbol application name to handle */
    MIDIOutput(MIDIPtr protocol, TTSymbol& application);
    
    /** Destructor */
	virtual ~MIDIOutput();
    
    /** Set device name
     @param newDevice       #TTSymbol for the MIDI device name to select
     @return #TTErr error code */
    TTErr setDevice(TTSymbol& newDevice);
    
    /** Set running state
     @param running         #TTBoolean to enable disable midi iput polling thread
     @return #TTErr error code */
    TTErr setRunning(TTBoolean running);
    
    /** Send MIDI message using an address and a value
     @param address         #TTAddress like /channel.N/command.M
     @param value           #TTValue
     @return #TTErr error code */
    TTErr sendMessage(TTAddress& address, const TTValue& value);
};
typedef MIDIOutput* MIDIOutputPtr;

#endif // __MIDI_OUTPUT_H__
