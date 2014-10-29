/** @file
 *
 * @ingroup modularMIDI
 *
 * @brief edit /channel.N/command.M #TTAddress and a #TTValue from incoming bytes
 *
 * @details it handles sysex @n
 *
 * @author Theo Delahogue
 *
 * @copyright © 2014, GMEA (http://www.gmea.net) @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __MIDI_PARSER_FROM_H__
#define __MIDI_PARSER_FROM_H__

#include "MIDIInclude.h"
#include "MIDI.h"

class MIDIParserFrom
{
    
    TTBoolean       sysex;          ///< a flag raised when sysex message are detected
    
public:
    
    TTAddress       address;        ///< the parsed address
    TTValue         value;          ///< the parsed value
    
    /** Constructor */
    MIDIParserFrom();
    
    /** Destructor */
	virtual ~MIDIParserFrom();
    
    /** Parse status byte, first data byte and second data byte
     @param statusByte          #TTUInt8 status byte
     @param statusByte          #TTUInt8 first data byte
     @param statusByte          #TTUInt8 second data byte
     @return #TTBoolean YES when the parsing is done (none sysex case), NO when the parsing needs more bytes (sysex case) */
    TTBoolean parse(TTUInt8 statusByte, TTUInt8 dataByte1, TTUInt8 dataByte2);
    
    /** internal tool to put number into a string */
    void editAddress(TTString format, TTUInt8 i, TTAddress& returnedAddress);
};
typedef MIDIParserFrom* MIDIParserFromPtr;

#endif // __MIDI_PARSER_FROM_H__
