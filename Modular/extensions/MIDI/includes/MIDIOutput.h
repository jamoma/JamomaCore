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

#ifndef __MIDI_OUTPUT_H__
#define __MIDI_OUTPUT_H__

#include "MIDIInclude.h"
#include "MIDI.h"
#include "MIDIParserTo.h"

class MIDI;
typedef MIDI* MIDIPtr;

class MIDIOutput
{
    MIDIPtr                 mProtocol;          ///< The MIDI protocol object which manages all MIDI communications
    
    PortMidiStream*		    mStream;			///< a descriptor for a MIDI device that is opened when the device is set
    TTBoolean			    mRunning;			///< should the output send messages ?

public:
	
    TTSymbol			    mApplication;       ///< the application name this device handles
	TTSymbol			    mName;              ///< selected existing output name
    
    /** Constructor
     @param protocol        #MIDI protocol object pointer
     @param application     #TTSymbol application name to handle */
    MIDIOutput(MIDIPtr protocol, TTSymbol& application);
    
    /** Destructor */
	virtual ~MIDIOutput();
    
    /** Set device name
     @param newName      #TTSymbol for the MIDI device name to select
     @return #TTErr error code */
    TTErr setName(TTSymbol& newName);
    
    /** Set running state
     @param running         #TTBoolean to enable disable midi message sending
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
