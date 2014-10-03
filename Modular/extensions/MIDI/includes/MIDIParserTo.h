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

#ifndef __MIDI_PARSER_TO_H__
#define __MIDI_PARSER_TO_H__

#include "MIDIInclude.h"
#include "MIDI.h"

class MIDIParserTo
{
    
    TTBoolean       sysex;          ///< a flag raised when sysex message are detected
    TTUInt32        index;          ///< the index of the element to encode (useful for sysex parsing)
    
public:
    
    TTUInt8         statusByte;     ///< the parsed status byte
    TTUInt8         dataByte1;      ///< the parsed first data byte
    TTUInt8         dataByte2;      ///< the parsed second data byte

    /** Constructor */
    MIDIParserTo();
    
    /** Destructor */
	virtual ~MIDIParserTo();
    
    /** Parse status byte, first data byte and second data byte
     @param statusByte          #TTUInt8 status byte
     @param statusByte          #TTUInt8 first data byte
     @param statusByte          #TTUInt8 second data byte
     @return #TTBoolean YES when the parsing is done (none sysex case), NO when the parsing is not done (sysex case) */
    TTBoolean parse(TTAddress& address, const TTValue& value);
};
typedef MIDIParserTo* MIDIParserToPtr;

#endif // __MIDI_PARSER_TO_H__
