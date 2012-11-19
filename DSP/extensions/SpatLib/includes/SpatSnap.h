/** @file
 *
 * @ingroup dspSpatLib
 *
 * @brief TODO
 *
 * @details TODO
 *
 * @authors Trond Lossius, Nils Peters, Timothy Place
 *
 * @copyright Copyright © 2011 by Trond Lossius, Nils Peters, and Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __SPATSNAP_H__
#define __SPATSNAP_H__

#include "TTDSP.h"

class TTspatSnapRenderer {
	
	void recalculateMatrixCoefficients();
	

	
};



/**	TODO
 */
class SpatSnap : TTAudioObject {
	
	TTCLASS_SETUP(SpatSnap)
	
	TTSpatEntityVector	mSources;					///< A vector describing the geometry of the sources
	TTSpatEntityVector	mSinks;						///< A vector describing the geometry of the sinks (e.g., speakers)
	
	TTspatSnapRenderer	mRenderer;					///< The actual spatial renderer for this class
	
protected:
	
	TTAudioObjectPtr	mMatrixObject;				///< TTAudioMatrix object
	
	/**	A standard audio processing method as used by TTBlue objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

	/**	Unit Tests	*/
	virtual TTErr test(TTValue& returnedTestInfo);
	
public:
	
	TTErr getSourceCount(TTValue& value);
	
	TTErr setSourceCount(const TTValue& value);
	
	TTErr getSinkCount(TTValue& value);
	
	TTErr setSinkCount(const TTValue& value);
	
	void getSourcePosition(TTInt32 sourceNumber, TTFLoat64& x, TTFloat64& y, TTFLoat64& z);
	
	void setSourcePosition(TTInt32 sourceNumber, TTFLoat64 x, TTFloat64 y, TTFLoat64 z);

	void getSinkPosition(TTInt32 sinkNumber, TTFLoat64& x, TTFloat64& y, TTFLoat64& z);
	
	void setSinkPosition(TTInt32 sinkNumber, TTFLoat64 x, TTFloat64 y, TTFLoat64 z);

};



#endif // __SPATSNAP_H__
