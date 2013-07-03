/** @file
 *
 * @ingroup dspSoundFileLib
 *
 * @brief Loads soundfile data into a sample matrix
 *
 * @details This object collaborates with #TTSampleMatrix to load values from a sound file into the sample matrix. An extension of the #TTSoundfile object.
 *
 * @see TTSampleMatrix
 *
 * @authors Nathan Wolek
 *
 * @copyright Copyright © 2013 by Nathan Wolek @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_SOUNDFILELOADER_H__
#define __TT_SOUNDFILELOADER_H__

#include "TTDSP.h"
#include "TTSoundfile.h"
#include "TTSampleMatrix.h"

//** Creates an interface to data in a soundfile from disk */
class TTSoundfileLoader : public TTSoundfile {
	TTCLASS_SETUP(TTSoundfileLoader)
	
protected:
    TTSampleMatrixPtr   mTargetMatrix;
    TTRowID             mStartCopyAtSampleIndex;
    TTRowID             mEndCopyAtSampleIndex;
    TTColumnID          mCopyFromChannelIndex;
    
    // target a new TTSampleMartix.
	TTErr setTargetMatrix(const TTSampleMatrixPtr newTargetMatrix);
    TTErr setTargetMatrix(const TTObjectBase* newTargetObjectPtr);
    
    // copy values from sound file until TTSampleMartix is completely full.
    TTErr copyUntilFilled();
    
public:
    /** Atribute accessor. Send a filepath to the object and attempt to interface with the file. Overriding so that additional variable will be set when setting the filepath.
     @param	newValue        full POSIX path to the file, including file name
     @return	TTErr		kTTErrInvalidValue is the filepath is invalid, otherwise kTTErrNone
     */
    TTErr setFilePath(const TTValue& newValue);
    
    // load new sound file into a SampleMatrix
    TTErr load(const TTValueRef input, TTValueRef unusedOutput);
    
    /** Unit test for this object.
	 @param[out] returnedTestInfo	The outcome from the performed unit test.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	virtual TTErr test(TTValue& returnedTestInfo);
    
};

typedef TTSoundfileLoader* TTSoundfileLoaderPtr;

#endif /* defined(__TT_SOUNDFILELOADER_H__) */
