/** @file
 *
 * @ingroup dspSpatLib
 *
 * @brief Super simple matrix-based spatialization object for Jamoma DSP.
 *
 * @details This unit simply provide a matrix where you directly manipulate
 * the coefficients.
 *
 * @authors Trond Lossius, Nils Peters, Timothy Place
 *
 * @copyright Copyright © 2011 by Trond Lossius, Nils Peters, and Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __SPATMATRIX_H__
#define __SPATMATRIX_H__

#include "TTDSP.h"


class SpatMatrix : TTAudioObject {
	TTCLASS_SETUP(SpatMatrix)
	
protected:
	
	TTAudioObjectPtr	mMatrixObject;				///< TTAudioMatrix object
	TTFloat64			mDummyTest;
	TTFloat64			mDummyTest2;

	/**	A standard audio processing method as used by TTBlue objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

	/**	Unit Tests	*/
	virtual TTErr test(TTValue& returnedTestInfo);
};


#endif // __SPATMATRIX_H__
