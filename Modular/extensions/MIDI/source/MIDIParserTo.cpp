/** @file
 *
 * @ingroup modularMIDI
 *
 * @brief edit bytes from /channel.N/command.M #TTAddress and a #TTValue
 *
 * @details it handles sysex @n
 *
 * @author Theo Delahogue
 *
 * @copyright © 2014, GMEA (http://www.gmea.net) @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "MIDIParserTo.h"

MIDIParserTo::MIDIParserTo() :
sysex(NO)
{
    ;
}

MIDIParserTo::~MIDIParserTo()
{
    ;
}

TTBoolean MIDIParserTo::parse(TTAddress& address, const TTValue& value)
{
    // clear the parser (except in sysex case)
    if (!sysex) {
        statusByte = 0;
        dataByte1 = 0;
        dataByte2 = 0;
    }
    else {
        
        // TODO : encode the rest of the value into 3 bytes
    }
    
    // parse command
    TTSymbol command = address.getName();
    
    // handling sysex case first
    if (command == TTSymbol("sysex")) {
        
        // TODO : encode the value into 3 bytes
        
        sysex = YES;
        
        // if there are still elements to encode
        return NO;
    }
    else
        sysex = NO;
    
    // parse command number
    TTInt32 commandNumber = 0;
    if (address.getInstance() != kTTSymEmpty) {
        
        TTValue v = TTString(address.getInstance().c_str());
        v.fromString();
        commandNumber = v[0];
    }
    
    // parse channel
    // TODO : catch the song/position and the song/select case
    TTInt32 channel = 0;
    if (address.getParent().getInstance() != kTTSymEmpty) {
        
        TTValue v = TTString(address.getParent().getInstance().c_str());
        v.fromString();
        channel = v[0];
    }
    
    // depending on the command type, set statusByte, dataByte1 and dataByte2
    if (command == TTSymbol("note")) {
        
        dataByte1 = commandNumber;
        dataByte2 = value[0];
        
        if (dataByte2 == 0) {
            
            // NOTE OFF : statusByte = 128, dataByte1 = pitch, dataByte2 = velocity (always 0)
            statusByte = 128;
        }
        else {
            
            // NOTE ON : statusByte = 144, dataByte1 = pitch, dataByte2 = velocity (always > 0)
            statusByte = 144;
        }
    }
    else if (command == TTSymbol("pressure")) {
        
        if (commandNumber) {
            
            // POLY PRESSURE : statusByte = 160, dataByte1 = pitch, dataByte2 = pressure
        }
        else {
            
            // CHANNEL PRESSURE : statusByte = 208, dataByte1 = pressure, dataByte2 not used
        }
    }
    else if (command == TTSymbol("control")) {
        
        // CONTROL CHANGE : statusByte = 176, dataByte1 = control type, dataByte2 = control value
        statusByte = 176;
        dataByte1 = commandNumber;
        dataByte2 = value[0];
    }
    else if (command == TTSymbol("program")) {
        
        // PROGRAM CHANGE : statusByte = 192, dataByte1 = program number, dataByte2 not used
        statusByte = 192;
        dataByte1 = commandNumber;
        dataByte2 = 0;
    }
    else if (command == TTSymbol("wheel")) {
        
        // PITCH WHEEL : statusByte = 224, dataByte1 = LSB, dataByte2 = MSB
    }
    else if (command == TTSymbol("position")) { // ?? song/position
        
        // SONG POSITION : statusByte = 242, dataByte1 = LSB, dataByte2 = MSB
    }
    else if (command == TTSymbol("select")) { // ?? song/select
        
        // SONG SELECT : statusByte = 243, dataByte1 = song, dataByte2 not used
    }
    else if (command == TTSymbol("tune_request")) {
        
        // TUNE REQUEST : statusByte = 246, dataByte1 not used, dataByte2 not used
    }
    else if (command == TTSymbol("clock")) {
        
        // TIMING CLOCK : statusByte = 248, dataByte1 not used, dataByte2 not used
    }
    else if (command == TTSymbol("start")) {
        
        // START : statusByte = 250, dataByte1 not used, dataByte2 not used
    }
    else if (command == TTSymbol("continue")) {
        
        // CONTINUE : statusByte = 251, dataByte1 not used, dataByte2 not used
    }
    else if (command == TTSymbol("stop")) {
        
        // STOP : statusByte = 252, dataByte1 not used, dataByte2 not used
    }
    else if (command == TTSymbol("active_sensing")) {
        
        // ACTIVE SENSING : statusByte = 254, dataByte1 not used, dataByte2 not used
    }
    else if (command == TTSymbol("reset")) {
        
        // SYSTEM RESET : statusByte = 255, dataByte1 not used, dataByte2 not used
    }
    
    // TODO ? catch /raw statusByte dataByte1 dataByte2
    // TODO ? set timestamp
    
    return YES; // we only return NO in sysex case when the 3 bytes cannot store the value content
}