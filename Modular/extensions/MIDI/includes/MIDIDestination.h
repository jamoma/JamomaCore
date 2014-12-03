/** @file
 *
 * @ingroup modularMIDI
 *
 * @brief create an virtual MIDI destination
 *
 * @details MidiDestination receives messages from any external devices @n
 * It is a wrapper around several plateform-specific library. @n
 *
 * @author Theo Delahogue
 *
 * @copyright © 2014, GMEA (http://www.gmea.net) @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __MIDI_DESTINATION_H__
#define __MIDI_DESTINATION_H__

#include "MIDIInclude.h"
#include "MIDI.h"
#include "MIDIParserFrom.h"

class MIDI;
typedef MIDI* MIDIPtr;

class MIDIDestination
{
    MIDIPtr                 mProtocol;          ///< The MIDI protocol object which manages all MIDI communications
    TTBoolean			    mRunning;			///< should the destination receive message ?
    
#if !defined(TT_PLATFORM_MAC)
    TTPtr                   mClient;            ///< TODO : a client handle to the Windows MIDI server
    // TODO
#else
    MIDIClientRef           mClient;            ///< a client handle to the Mac OS X Core MIDI server
    MIDIEndpointRef         mDestination;       ///< a Mac OS X Core MIDI destination end point to receive messages
#endif
	
public:
	
    TTSymbol			    mApplication;       ///< the application name this destination handles
    TTSymbol			    mName;			///< choosen device name
 
#if !defined(TT_PLATFORM_MAC)
    /** Windows system-specific constructor
     @param protocol        #MIDI protocol object pointer
     @param application     #TTSymbol application name to handle
     @param name            #TTSymbol name of the destination */
    MIDIDestination(MIDIPtr protocol, TTSymbol& application, TTPtr client);
#else
    /** Mac OS X system-specific constructor
     @param protocol        #MIDI protocol object pointer
     @param application     #TTSymbol application name to handle
     @param client          #MIDIClientRef to open a Mac OS X Core MIDI destination */
    MIDIDestination(MIDIPtr protocol, TTSymbol& application, MIDIClientRef client);
#endif
    
    /** Destructor */
	virtual ~MIDIDestination();
    
    /** Set device name
     @param newName       #TTSymbol for the MIDI destination device name to use
     @return #TTErr error code if the device name is already used */
    TTErr setName(TTSymbol& newName);
    
    /** Set running state
     @param running         #TTBoolean to enable disable message reception
     @return #TTErr error code */
    TTErr setRunning(TTBoolean running);

#if !defined(TT_PLATFORM_MAC)
    // TODO
#else
    friend void TT_EXTENSION_EXPORT MIDIDestinationPacketReceivedCallback(const MIDIPacketList *data, void *baton, void *connectionInfo);
#endif
};
typedef MIDIDestination* MIDIDestinationPtr;

#if !defined(TT_PLATFORM_MAC)
// TODO
#else
/** Mac OS X system-specific destiantion callback to receive messages
 @param data            the received MIDI packet
 @param baton           any informations passed by the owner
 @param connectionInfo  any informations relative to the connection
 */
void TT_EXTENSION_EXPORT MIDIDestinationPacketReceivedCallback(const MIDIPacketList *data, void *baton, void *connectionInfo);
#endif

#endif // __MIDI_DESTINATION_H__
