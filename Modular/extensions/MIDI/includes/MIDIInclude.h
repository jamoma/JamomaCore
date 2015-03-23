/** @file
 *
 * @ingroup modularMIDI
 *
 * @brief Includes and definitions for the MIDI protocol for Jamoma Modular
 *
 * @details
 *
 * @author Theo Delahogue
 *
 * @copyright © 2014, GMEA (http://www.gmea.net) @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __MIDI_INCLUDE_H__
#define __MIDI_INCLUDE_H__

#include "TTFoundationAPI.h"

#include "portmidi.h"

#if defined(TT_PLATFORM_MAC)
#include <CoreServices/CoreServices.h>
#include <CoreMIDI/MIDIServices.h>
#endif

using namespace std;

static const int kMidiBufferSize = 100;         // this is arbitrary, is there a more rational value for this ?

#endif // __MIDI_INCLUDE_H__
