/** @file
 *
 * @ingroup dspSpatLib
 *
 * @brief Jamoma DSP SpatLib renderer based on Distance-based amplitude panning (DBAP)
 *
 * @details DBAP permits sinks (speakers) to be positioned any way you want. 
 * Speaker configurations are not limited to circles/spheres surrounding a sweet spot, but can be used e.g. to locate speakers in several adjecent spaces.
 * DBAP is matrix-based and ensures equal intensity while adjusting gains to each of the sinks in such a way that relative gain diminish with increasing distance from source to sink.
 * The exact rolloff rate (in dB) can be controlled with the rolloff attribute of the #TTSpatDBAPRenderer class.
 *
 * @todo: Extend with a solution for interpolating to new matrix coefficients
 *
 * @authors Trond Lossius, Nils Peters, Timothy Place, Jan Schacher
 *
 * @copyright Copyright © 2011 by Trond Lossius, Nils Peters, Timothy Place, Jan Schacnher @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


/*
 
The following are development notes while developing TTSpatDBAP starting of from the source files foir TTSpatSnap:
 
 DIFFERENCES WITH SNAP :
 
 - sources need a width
 - renderer needs to implement a global rolloff
 - weight coefficient to be associated with each source-sink pair (a matrix)
 
 */


#ifndef __SPATDBAP_H__
#define __SPATDBAP_H__

#include "TTSampleMatrix.h"
#include "TTSpat.h"
#include "TTSpatBaseRenderer.h"



/**	Jamoma DSP SpatLib unit based on Distance-based amplitude panning (DBAP)
 *
 * @details DBAP permits sinks (speakers) to be positioned any way you want.
 * Speaker configurations are not limited to circles/spheres surrounding a sweet spot, but can be used e.g. to locate speakers in several adjecent spaces.
 * DBAP is matrix-based and ensures equal intensity while adjusting gains to each of the sinks in such a way that relative gain diminish with increasing distance from source to sink.
 * The exact rolloff rate (in dB) can be controlled with the rolloff attribute of the #TTSpatDBAPRenderer class.
 */
class TTSpatDBAP : public TTSpatBaseRenderer {
	
private:
	
	void recalculate(TTSpatSourceVector& aSources, TTSpatSinkVector& aSinks);
	
public:
	
	TTSpatDBAP(TTAudioObjectBasePtr owner);
	~TTSpatDBAP();
	
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

	/**	Unit Tests.
 @param aReturnedTestInfo			Information on the outcome of the tests.
 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
 */
virtual TTErr test(TTValue& aReturnedTestInfo);
	
	
};



#endif // __SPATDBAP_H__
