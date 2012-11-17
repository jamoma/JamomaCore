/** @file
 *
 * @ingroup dspSpatLib
 *
 * @brief SpatLib Unit for Distance-based amplitude panning (DBAP).
 *
 * @details DBAP is described in an 2009 ICMC paper by Lossius et. al.
 * Further reference and link to a pdf version of the paper can be found 
 * at www.jamoma.org. @n
 * @n
 * This unit is currently incomplete.
 *
 * @authors Trond Lossius, Nils Peters, Timothy Place
 *
 * @copyright Copyright © 2011 by Trond Lossius, Nils Peters, and Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __SPATDBAP_H__
#define __SPATDBAP_H__

#include "TTDSP.h"


/**	This implements a window function which basically does nothing: 
	y = 1.0
 */
class SpatDBAP : TTAudioObject {
	TTCLASS_SETUP(SpatDBAP)
	
protected:
	
	TTAudioObjectPtr	mMatrixObject;				///< TTAudioMatrix object
	
	/**	A standard audio processing method as used by TTBlue objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

	/**	Unit Tests	*/
	virtual TTErr test(TTValue& returnedTestInfo);
};


#endif // __SPATDBAP_H__
