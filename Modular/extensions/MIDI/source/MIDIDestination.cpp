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

#include "MIDIDestination.h"

#if !defined(TT_PLATFORM_MAC)
MIDIDestination::MIDIDestination(MIDIPtr protocol, TTSymbol& application, TTPtr client) :
mProtocol(protocol),
mClient(client),
mApplication(application)
{
    ;
}
#else
MIDIDestination::MIDIDestination(MIDIPtr protocol, TTSymbol& application, MIDIClientRef client) :
mProtocol(protocol),
mClient(client),
mApplication(application)
{
    ;
}
#endif

MIDIDestination::~MIDIDestination()
{
#if !defined(TT_PLATFORM_MAC)
    ;// TODO
#else
    MIDIEndpointDispose(mDestination);
#endif
}

TTErr MIDIDestination::setName(TTSymbol& newName)
{
	if (newName != mName) {
        
		mName = newName;
        
        setRunning(NO);
        
        // release the former destination and then instantiate a new one destination
#if !defined(TT_PLATFORM_MAC)
        ;// TODO
#else
        MIDIEndpointDispose(mDestination);

        // determine the default system character encoding
        CFStringEncoding defaultEncoding = CFStringGetSystemEncoding();
        
        // create an input destination
        CFStringRef s_name = CFStringCreateWithCString(kCFAllocatorDefault, mName.c_str(), defaultEncoding);
        OSStatus    status = MIDIDestinationCreate(mClient, s_name, &MIDIDestinationPacketReceivedCallback, TTPtr(this), &mDestination);
        if (status != noErr) {
            TTLogError("Could not create destination : %d\n", (int)status);
            return kTTErrGeneric;
        }
#endif
    }

	return kTTErrNone;
}

TTErr MIDIDestination::setRunning(TTBoolean running)
{
    if (running != mRunning) {
        
        mRunning = running;
    }
    
    return kTTErrNone;
}

#if !defined(TT_PLATFORM_MAC)
// TODO
#else
void MIDIDestinationPacketReceivedCallback(const MIDIPacketList *data, void *baton, void *connectionInfo)
{
    MIDIPacket      *packet = (MIDIPacket *) &data->packet[0];
    MIDIDestination *self = (MIDIDestination *)baton;
    MIDIParserFrom  parser;
    
    if (!self->mRunning)
        return;
    
    for (TTUInt32 packetIndex = 0; packetIndex < data->numPackets; packetIndex++) {
        
        TTUInt8 statusByte;
        TTUInt8 dataByte1;
        TTUInt8 dataByte2;
        
        switch (packet->length) {
            case 1:
                statusByte = packet->data[0];
                dataByte1 = 0;
                dataByte2 = 0;
                break;
            case 2:
                statusByte = packet->data[0];
                dataByte1 = packet->data[1];
                dataByte2 = 0;
                break;
            case 3:
                statusByte = packet->data[0];
                dataByte1 = packet->data[1];
                dataByte2 = packet->data[2];
                break;
            default:
                // skip packets that are too large
                continue;
        }
        
        // if the parsing is done : pass address and value
        if (parser.parse(statusByte, dataByte1, dataByte2))
            self->mProtocol->receivedMessage(self->mApplication, parser.address, parser.value);
        
        packet = MIDIPacketNext(packet);
    }
}
#endif
