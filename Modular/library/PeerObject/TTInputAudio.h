/** @file
 *
 * @ingroup modularLibrary
 *
 * @brief An audio input component for Jamoma models.
 *
 * @details
 *
 * @authors Timothy Place
 *
 * @copyright © 2013, Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_INPUT_AUDIO_H__
#define __TT_INPUT_AUDIO_H__

#include "TTInput.h"

/** An audio input component for Jamoma models.
 */
class TTMODULAR_EXPORT TTInputAudio : public TTInput
{
	TTCLASS_SETUP(TTInputAudio)

public:	// use public for quick acces during signal processing
/*
	TTSymbol			mType;						///< ATTRIBUTE : the type of the input signal (like audio, video, ...)
	TTAddress           mOutputAddress;				///< ATTRIBUTE : address of the output to bind
	
	TTBoolean			mMute;						///< ATTRIBUTE : to mute signal
	TTBoolean			mBypass;					///< ATTRIBUTE : to pass signal directly to a TTOutput object
	
	TTObjectBasePtr		mSignalIn;					///< any data structure to receive complex signal
	TTListPtr			mSignalCache;				///< a list of any data structure to deal with others complex signals (like mixing, dubbing, ...)
	TTObjectBasePtr		mSignalOut;					///< any data structure to send complex signal
	
	TTObjectBasePtr		mSignalZero;				///< a zero signal
		
	TTOutputPtr			mOutputObject;				///< TTOutput object to pass signal through
*/	
private:

//	TTCallbackPtr		mReturnSignalCallback;		///< a way to return back signal to the owner of this input
//	TTCallbackPtr		mAddressObserver;			///< to observe mOutputAddress creation/destruction
	
	/** Send signal. The mIndex have to be choosen before */
//	TTErr Send(const TTValue& inputValue, TTValue& outputValue);
	
	/** Set outputObject */
//	TTErr Link(const TTValue& inputValue, TTValue& outputValue);
	
	/** Remove outputObject */
//	TTErr Unlink();
	
	/** Set the outputAddress attribute */
//	TTErr setOutputAddress(const TTValue& value);

};

typedef TTInputAudio* TTInputAudioPtr;


#endif // __TT_INPUT_AUDIO_H__
