/** @file
 *
 * @ingroup dspAnalysisLib
 *
 * @brief Jamoma DSP zero-crossing detector and counter.
 *
 * @details
 *
 * @authors Tim Place, Trond Lossius
 *
 * @copyright Copyright © 2008, Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __TT_ZEROCROSS_H__
#define __TT_ZEROCROSS_H__

#include "TTDSP.h"


/**	TTZerocross analyzes the incoming audio by looking for zero-crossings.
	When a zero crossing occurs it both reports the crossing and also 
	keeps a count of the number of zero crossings per analysis period.
 */
class TTZerocross : TTAudioObjectBase {
	TTCLASS_SETUP(TTZerocross)

protected:

	TTUInt32	mSize;					///< Attribute: size of the analysis buffer
	TTFloat64	rSize;					///< reciprocal of the size attribute
	TTBoolean	lastSampleWasOverZero;	///< was the last sample over zero?
	TTUInt32	counter;				///< counts zero-crossings
	TTFloat64	finalCount;
	TTUInt32	analysisLocation;		///< keep track of how many samples so far
	
	/**	This method gets called when the inherited maxNumChannels attribute is changed. 
	 @param oldMaxNumChannels	The previous nuber of channels to process		
	 @param						Unused
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&);
	
	
	/**	This method gets called when the inherited sr attribute (sample rate) is changed. 
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr updateSr();
	
	
	/**	Audio processing method.
	 @details					WARNING: This unit requires 1 input and 2 outputs - it does not yet configure itself for other arrangements!

	 @param	in					A pointer to a TTAudioSignal object that may contain any number of channels. This signal is considered the master, and thus it provides the vectorsize and number of channels should the two signals not be matched.
	 @param	out					A pointer to a TTAudioSignal object that has the output sample vectors.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

	
	/**	Set the size attribute
	 @param value				New value for the attribute
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setSize(const TTValue& value);

	
	/**	Reset the history used in the analysis.	
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr Clear();
	
};


#endif // __TT_ZEROCROSS_H__
