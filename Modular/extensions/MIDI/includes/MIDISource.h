/** @file
 *
 * @ingroup modularMIDI
 *
 * @brief create an virtual MIDI source
 *
 * @details MidiSource sends messages to any external devices @n
 * It is a wrapper around several plateform-specific library. @n
 *
 * @author Theo Delahogue
 *
 * @copyright © 2014, GMEA (http://www.gmea.net) @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __MIDI_SOURCE_H__
#define __MIDI_SOURCE_H__

#include "MIDIInclude.h"
#include "MIDI.h"
#include "MIDIParserTo.h"

class MIDI;
typedef MIDI* MIDIPtr;

class MIDISource
{
    MIDIPtr                 mProtocol;          ///< The MIDI protocol object which manages all MIDI communications
    TTBoolean			    mRunning;			///< should the source send messages ?
    
#if !defined(TT_PLATFORM_MAC)
    TTPtr                   mClient;            ///< TODO : a client handle to the Windows MIDI server
    // TODO
#else
    MIDIClientRef           mClient;            ///< a client handle to the Mac OS X Core MIDI server
    MIDIEndpointRef         mSource;            ///< a Mac OS X Core MIDI source end point to send messages
#endif
	
public:
	
    TTSymbol			    mApplication;       ///< the application name this source handles
    TTSymbol			    mName;			///< choosen device name
    
#if !defined(TT_PLATFORM_MAC)
    /** Windows system-specific constructor
     @param protocol        #MIDI protocol object pointer
     @param application     #TTSymbol application name to handle
     @param name            #TTSymbol name of the source */
    MIDISource(MIDIPtr protocol, TTSymbol& application, TTPtr client);
#else
    /** Mac OS X system-specific constructor
     @param protocol        #MIDI protocol object pointer
     @param application     #TTSymbol application name to handle
     @param client          #MIDIClientRef to open a Mac OS X Core MIDI source */
    MIDISource(MIDIPtr protocol, TTSymbol& application, MIDIClientRef client);
#endif
    
    /** Destructor */
	virtual ~MIDISource();
    
    /** Set device name
     @param newName       #TTSymbol for the MIDI source device name to use
     @return #TTErr error code if the device name is already used */
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
typedef MIDISource* MIDISourcePtr;

#endif // __MIDI_SOURCE_H__
