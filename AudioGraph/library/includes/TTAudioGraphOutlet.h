/** @file
 *
 * @ingroup audioGraphLibrary
 *
 * @brief Defines a single 'outlet' from an individual AudioGraph object
 *
 * @details TTAudioGraphObject maintains a vector of these outlets.
 *
 * @authors Timothy Place, Trond Lossius
 *
 * @copyright Copyright © 2010, Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __TTAUDIOGRAPH_OUTLET_H__
#define __TTAUDIOGRAPH_OUTLET_H__

#include "TTAudioGraph.h"


/******************************************************************************************/

/**	This object represents a single 'outlet' from a TTAudioGraphObject.
	TTAudioGraphObject maintains a vector of these outlets.
*/
class TTAudioGraphOutlet {
	friend class TTAudioGraphObjectBase;
	
protected:	
	
	TTAudioSignalPtr		mBufferedOutput;			///< Output vector from the audio graph node
	
public:

	/** Constructor.
	 */
	TTAudioGraphOutlet() : 
		mBufferedOutput(NULL)
	{
		TTObjectBaseInstantiate(kTTSym_audiosignal, &mBufferedOutput, 1);
	}
	
	
	/** destructor.
	 */
	~TTAudioGraphOutlet()
	{
		TTObjectBaseRelease(&mBufferedOutput);
	}
	
	
	// Copying Functions are critical due to use by std::vector 
	
	TTAudioGraphOutlet(const TTAudioGraphOutlet& original) : 
		mBufferedOutput(NULL)
	{
//		mBufferedOutput = TTObjectBaseReference(original.mBufferedOutput);
		TTObjectBaseInstantiate(kTTSym_audiosignal, &mBufferedOutput, 1);
	}
	
	
	TTAudioGraphOutlet& operator=(const TTAudioGraphOutlet& source)
	{
		TTObjectBaseRelease(&mBufferedOutput);
		mBufferedOutput = TTObjectBaseReference(source.mBufferedOutput);
		return *this;
	}
	

	// Audio Signal Access Methods

	TTChannelCount getNumOutputChannels()
	{
		return mBufferedOutput->getNumChannelsAsInt();
	}
	
	
	TTUInt16 getOutputVectorSize()
	{
		return mBufferedOutput->getVectorSizeAsInt();
	}

	
	TTAudioSignalPtr getBuffer()
	{
		return mBufferedOutput;
	}
	
};




#endif // __TTAUDIOGRAPH_OUTLET_H__
