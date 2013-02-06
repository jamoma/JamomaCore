/** @file
 *
 * @ingroup dspWindowFunctionLib
 *
 * @brief Rosenberg Glottal Pulse Window Function Unit for Jamoma DSP
 *
 * @details This implements a window function as described here: @n
 * https://ccrma.stanford.edu/~jos/sasp/Kaiser_Window.html @n
 * http://en.wikipedia.org/wiki/Window_function#Kaiser_windows @n
 * @n
 * This window can be used as a glottal pulse in voice and speech synthesis.
 *
 * @authors Trond Lossius
 *
 * @copyright Copyright © 2013 by Trond Lossius @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __ROSENBERGGLOTTALPULSEWINDOW_H__
#define __ROSENBERGGLOTTALPULSEWINDOW_H__

#include "TTDSP.h"


/**	This implements a speach/voice emulating glottal pulse window function as described @
 http://staff.science.uva.nl/~wzajdel/audiocourse/practicum/lab56.pdf @n
 http://www.fon.hum.uva.nl/david/ma_ssp/2007/rosenberg_JASA_1971.pdf
 */
class RosenbergGlottalPulseWindow : TTAudioObjectBase {
	TTCLASS_SETUP(RosenbergGlottalPulseWindow)
	
protected:	
	
	/** 
		Thew ratio attribute controls how large part of the window is used for the initial increase (attack) as compared to the decay part.
	*/
	TTFloat64	mRatio;
	
	
	/** Calculate y = f(x) for a single value.
	 @param x						The input value to the window function.
	 @param y						The resulting value for the window function.
	 @param data					Not used.
	 @return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	
	
	/**	A standard audio processing method as used by Jamoma DSP objects.
	 @param inputs					The input vector that is to be processed.
	 @param outputs					The resulting windowed vector.
	 @return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

	
	/** Unit test for the window function unit.
	 @param returnedTestInfo		The outcome from the performed unit test.
	 @return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	virtual TTErr test(TTValue& returnedTestInfo);
	
};


#endif // __ROSENBERGGLOTTALPULSEWINDOW_H__
