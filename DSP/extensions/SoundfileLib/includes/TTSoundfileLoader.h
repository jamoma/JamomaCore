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

/** Creates an interface to data in a soundfile from disk */
class TTSoundfileLoader : public TTSoundfile {
	TTCLASS_SETUP(TTSoundfileLoader)
	
protected:
    TTSampleMatrixPtr   mTargetMatrix;
    TTRowID             mTargetMatrixLengthInSamples;
    TTColumnID          mTargetMatrixNumChannels;
    TTFloat64           mTargetMatrixSampleRate;
    TTRowID             mStartCopyAtSampleIndex;
    TTRowID             mEndCopyAtSampleIndex;
    TTColumnID          mCopyFromChannelIndex;
    
    /**	Internal method that sets the class's pointer to the target sample matrix for loading sound file data.
     @param     newTargetMatrix     pointer to the new matrix
     @return    TTErr               kTTErrNone if the pointer was updated.
     */
	TTErr setTargetMatrix(const TTSampleMatrixPtr newTargetMatrix);
    
    /**	Internal method that sets the class's pointer to the target sample matrix for loading sound file data. This version is a function overload so that setTargetMatrix() can accept a TTObjectBase* as an input parameter and test whether it points to an actual instance of TTSampleMatrix.
     @param     newTargetMatrix     pointer to the new matrix
     @return    TTErr               kTTErrNone if the pointer was updated. kTTErrInvalidValue if the pointer was not to a TTSampleMatrix.
     */
    TTErr setTargetMatrix(const TTObjectBase* newTargetObjectPtr);
    
    /**	Internal method that copies values from the source TTSoundfile to the targetted TTSampleMatrix. Beware that the setFilePath() and setTargetMatrix() must be successfully executed before this method is called.
     @return    TTErr               kTTErrNone if copy is successful. kTTErrGeneric if the source soundfile was too short to fill samplematrix.
     */
    TTErr copyUntilFilled();
    
    /**	Internal method that copies values from the source TTSoundfile to the targetted TTSampleMatrix with the necessary interpolation to acheive the target's sample rate. Beware that the setFilePath() and setTargetMatrix() must be successfully executed before this method is called.
     @return    TTErr               kTTErrNone if copy is successful. kTTErrGeneric if the source soundfile was too short to fill samplematrix.
     */
    TTErr copyUntilFilledWithResampling();
    
public:
    /** Atribute accessor. Send a filepath to the object and attempt to interface with the file. Overriding so that additional variable will be set when setting the filepath.
     @param	newValue        full POSIX path to the file, including file name
     @return	TTErr		kTTErrInvalidValue is the filepath is invalid, otherwise kTTErrNone
     */
    TTErr setFilePath(const TTValue& newValue);
    
    /**	Public method used to trigger the load process. Copies samples from a sound file on the hard drive into a TTSampleMatrix.
     @param[in]     input           Multi-item TTValue used to set the copy parameters:
                                    -# TTSymbol containing the filepath
                                    -# TTPtr to the target matrix 
                                    -# (optional) channel to copy from source, default is 0
                                    -# (optional) frame to start copy from source, default is 0 
                                    -# (optional) frame to stop copy from source, default is last
     @param[out]    unusedOutput    not used
     @return        TTErr           kTTErrNone load was successful. kTTErrInvalidFilepath if the filepath was invalid. kTTErrInvalidValue if the pointer to TTSampleMatrix was invalid.
     */
    TTErr load(const TTValueRef input, TTValueRef unusedOutput);
    
    /** Unit test for this object.
	 @param[out] returnedTestInfo	The outcome from the performed unit test.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	virtual TTErr test(TTValue& returnedTestInfo);
    
};

typedef TTSoundfileLoader* TTSoundfileLoaderPtr;

#endif /* defined(__TT_SOUNDFILELOADER_H__) */
