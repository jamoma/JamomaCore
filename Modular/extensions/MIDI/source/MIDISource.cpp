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

#include "MIDISource.h"

#if !defined(TT_PLATFORM_MAC)
MIDISource::MIDISource(MIDIPtr protocol, TTSymbol& application, TTPtr client) :
mProtocol(protocol),
mClient(client),
mApplication(application)
{
    ;
}
#else
MIDISource::MIDISource(MIDIPtr protocol, TTSymbol& application, MIDIClientRef client) :
mProtocol(protocol),
mClient(client),
mApplication(application)
{
    
}
#endif

MIDISource::~MIDISource()
{
#if !defined(TT_PLATFORM_MAC)
    ;// TODO
#else
    MIDIEndpointDispose(mSource);
#endif
}

TTErr MIDISource::setName(TTSymbol& newName)
{
	if (newName != mName) {
        
		mName = newName;
        
        setRunning(NO);
		
        // instantiate the source
#if !defined(TT_PLATFORM_MAC)
        ;// TODO
#else
        MIDIEndpointDispose(mSource);

		// determine the default system character encoding before to encode the c string name
        CFStringEncoding defaultEncoding = CFStringGetSystemEncoding();
        
        // create an output source
        CFStringRef s_name = CFStringCreateWithCString(kCFAllocatorDefault, mName.c_str(), defaultEncoding);
        OSStatus    status = MIDISourceCreate(mClient, s_name, &mSource);
        if (status != noErr) {
            TTLogError("Could not create source : %d\n", (int)status);
            return kTTErrGeneric;
        }
#endif
	}
    
	return kTTErrNone;
}

TTErr MIDISource::setRunning(TTBoolean running)
{
    if (running != mRunning) {
        
        mRunning = running;
    }
    
    return kTTErrNone;
}

TTErr MIDISource::sendMessage(TTAddress& address, const TTValue& value)
{
    if (mRunning) {
        
        // TODO
    }
    
    return kTTErrGeneric;
}
