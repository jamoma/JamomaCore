/* 
 * Object to filter common types of MIDI events out of raw MIDI event dictionaries
 * Copyright © 2011, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTGraphObjectBase.h"
#include "TTMidiFilter.h"
#ifdef TT_PLATFORM_WIN
#include <algorithm>
#endif

#define thisTTClass			TTMidiFilter
#define thisTTClassName		"midi.filter"
#define thisTTClassTags		"midi"


TT_OBJECT_CONSTRUCTOR,
	mType(kTTSymEmpty)
{
	addAttribute(Type, kTypeSymbol);	
	addMessageWithArguments(dictionary);
	
	setAttributeValue(TT("type"), TT("note"));
}


TTMidiFilter::~TTMidiFilter()
{
	;
}


TTErr TTMidiFilter::dictionary(const TTValue& input, TTValue& output)
{
	TTDictionaryPtr	d = NULL;
	TTSymbol		schema;
	
	//input.get(0, (TTPtr*)(&d));
    d = TTDictionaryPtr(TTPtr(input[0]));
    
	schema = d->getSchema();
	if (schema == TT("RawMidiEvent")) {
		TTValue statusByteValue;
		TTValue dataByte1Value;
		TTValue dataByte2Value;
		TTUInt8 statusByte;
		
		d->lookup(TT("status"), statusByteValue);
		d->lookup(TT("data1"), dataByte1Value);
		d->lookup(TT("data2"), dataByte2Value);
		statusByte = statusByteValue[0];
		
		if (mType == TT("note")) {
			bool noteon = false;
			bool noteoff = false;
			
			if (statusByte > 127 && statusByte < 144)
				noteoff = true;
			else if (statusByte > 143 && statusByte < 160)
				noteon = true;
			else
				goto out;
			
			{
				TTValue v;
				
				v.resize(3);
				v[0] = TTUInt8(dataByte1Value);
				if (noteon) {
					v[1] = TTUInt8(dataByte2Value);
					v[2] = statusByte - 143;
				}
				else {
					v[1] = TTUInt8(0);
					v[2] = statusByte - 127;
				}
				
				d->setSchema(TT("MidiNoteEvent"));
				d->setValue(v);
				return kTTErrNone;
			}
		}
	out:
		d->clear();
		output[0] = TTPtr(d);
		return kTTErrNone;
	}
	else {
		return kTTErrInvalidType;
	}

}

