/** @file
 *
 * @ingroup modularMIDI
 *
 * @brief a MIDI input
 *
 * @details MidiInput receives MIDI input from an external device. @n
 * It is a wrapper around the PortMidi library. @n
 *
 * @author Theo Delahogue
 *
 * @copyright © 2014, GMEA (http://www.gmea.net) @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __MIDI_INPUT_H__
#define __MIDI_INPUT_H__

#include "MIDIInclude.h"
#include "MIDI.h"

class MIDI;
typedef MIDI* MIDIPtr;

class MIDIInput
{
    MIDIPtr                 mProtocol;           ///< The MIDI protocol object which manages all MIDI inputs
    
    PortMidiStream*		    mStream;			///< a descriptor for a MIDI device that is opened when the device is set
	TTThreadPtr			    mPollingThread;		///< our loop that constantly polls for new input
    TTBoolean			    mRunning;			///< should the thread be running ? If NO then the thread will know to abort itself
	
public:
	
    TTSymbol			    mApplication;       ///< the application name this device handles
	TTSymbol			    mDevice;			///< selected device name
	const PmDeviceInfo*	    mDeviceInfo;		///< selected device info struct
	PmDeviceID			    mID;				///< selected device ID number
    
    /** Constructor
     @param arguments       #MIDI protocol object pointer, #TTSymbol application name to handle */
    MIDIInput(MIDIPtr protocol, TTSymbol& application);
    
    /** Destructor */
	virtual ~MIDIInput();
    
    /** Set device name
     @param newDevice       #TTSymbol for the MIDI device name to select
     @return #TTErr error code */
    TTErr setDevice(TTSymbol& newDevice);
    
    /** Set running state
     @param running       #TTBoolean to enable disable midi iput polling thread
     @return #TTErr error code */
    TTErr setRunning(TTBoolean running);
    
    friend void* MidiPoll(MIDIInput* self);
};
typedef MIDIInput* MIDIInputPtr;

/** the function call by the olling thread 
 @param #MIDIInput pointer*/
void* MidiPoll(MIDIInput* self);

#endif // __MIDI_INPUT_H__
