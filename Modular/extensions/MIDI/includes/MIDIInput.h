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

#ifndef __MIDI_INPUT_H__
#define __MIDI_INPUT_H__

#include "MIDIInclude.h"
#include "MIDI.h"
#include "MIDIParserFrom.h"

class MIDI;
typedef MIDI* MIDIPtr;

class MIDIInput
{
    MIDIPtr                 mProtocol;          ///< The MIDI protocol object which manages all MIDI communications
    
    PortMidiStream*		    mStream;			///< a descriptor for a MIDI device that is opened when the device is set
	TTThreadPtr			    mPollingThread;		///< our loop that constantly polls for new input
    TTBoolean			    mRunning;			///< should the thread be running ?
	
public:
	
    TTSymbol			    mApplication;       ///< the application name this device handles
	TTSymbol			    mName;              ///< selected existing input name
 
    /** Constructor
     @param protocol        #MIDI protocol object pointer
     @param application     #TTSymbol application name to handle */
    MIDIInput(MIDIPtr protocol, TTSymbol& application);
    
    /** Destructor */
	virtual ~MIDIInput();
    
    /** Set device name
     @param newName      #TTSymbol for the MIDI device to select
     @return #TTErr error code if the device name doesn't exist */
    TTErr setName(TTSymbol& newName);
    
    /** Set running state
     @param running         #TTBoolean to enable disable polling thread
     @return #TTErr error code */
    TTErr setRunning(TTBoolean running);
    
    friend void* MIDIInputPoll(MIDIInput* self);
};
typedef MIDIInput* MIDIInputPtr;

/** the function call by the polling thread 
 @param #MIDIInput pointer*/
void* MIDIInputPoll(MIDIInput* self);

#endif // __MIDI_INPUT_H__
