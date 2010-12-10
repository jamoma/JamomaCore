/* 
 * TTObject to handle any signal output
 *
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_OUTPUT_H__
#define __TT_OUTPUT_H__

#include "TTModular.h"

/** TTOutput ... TODO : an explanation
 
	in Send method :
		TODO : preview mecanism (it could be also used to register and notify meters...)
 
 */

class TTApplication;
typedef TTApplication* TTApplicationPtr;

class TTInput;
typedef TTInput* TTInputPtr;


class TTMODULAR_EXPORT TTOutput : public TTObject
{
	TTCLASS_SETUP(TTOutput)
	
public:	// use public for quick acces during signal processing
	
	TTUInt16			mNumber;					///< ATTRIBUTE : number of Output signals
	TTSymbolPtr			mType;						///< ATTRIBUTE : the type of signal output (like audio, video, ...)
	TTSymbolPtr			mInputAddress;				///< ATTRIBUTE : address of the input to bind
	
	TTBoolean			mMute;						///< ATTRIBUTE : to mute signal output
	TTFloat32			mMix;						///< ATTRIBUTE : to mix signal output and  a signal coming from TTInput object
	TTFloat32			mGain;						///< ATTRIBUTE : apply again on signal output
	TTBoolean			mFreeze;					///< ATTRIBUTE : to freeze signal output (ex : for video signal)
	TTBoolean			mPreview;					///< ATTRIBUTE : to send signal to a preview channel
	
	TTObjectPtr			mSignalIn;					///< any data structure to receive complex signal
	TTObjectPtr			mSignalOut;					///< any data structure to send complex signal
	
	TTObjectPtr			mSignalTemp;				///< a temporary signal
	TTObjectPtr			mSignalZero;				///< a zero signal
	TTObjectPtr			mSignalPreview;				///< the preview signal
	
	TTObjectPtr			mMixUnit;					///< the unit used to mix the signal
	TTObjectPtr			mGainUnit;					///< the unit used to apply the gain value on the signal
	
	TTObjectPtr			mRampMixUnit;				///< the unit used to ramp the mix value
	TTObjectPtr			mRampGainUnit;				///< the unit used to ramp the gain value
	
	TTValue				mInfo;						///< any info needed to process the signal
													///< example : 
													///<	- for audio signal : <numChannels, vectorSize>
													///<	- for video signal : <planeCount, pixelEncoding, dimX, dimY>
	
	TTUInt16			mIndex;						///< index of current output signal [0 :: mNumber]
	
	TTInputPtr			mInputObject;				///< TTInput object to get a signal passing through
	
private:
	
	TTApplicationPtr	mApplication;
	TTCallbackPtr		mReturnSignalCallback;		///< a way to return back signal to the owner of this output
	TTValuePtr			mLast;						///< keep a copy of the last sent signal for each index
	TTCallbackPtr		mObserver;					///< to observe mInputAddress creation/destruction
	
	
	/** Send signal. The mIndex have to be choosen before */
	TTErr Send(TTValue& value);
	TTErr SendBypassed(TTValue& value);
	
	/** Set outputObject */
	TTErr Link(const TTValue& value);
	
	/** Remove outputObject */
	TTErr Unlink();
	
	/** Set the outputAddress attribute */
	TTErr setInputAddress(const TTValue& value);
	
	/** Set the mute attribute */
	TTErr setMute(const TTValue& value);
	
	/** Set the mix attribute */
	TTErr setMix(const TTValue& value);
	
	/** Set the gain attribute */
	TTErr setGain(const TTValue& value);
	
	friend TTErr TTMODULAR_EXPORT TTOutputDirectoryCallback(TTPtr baton, TTValue& data);
};

typedef TTOutput* TTOutputPtr;

/**	
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TTMODULAR_EXPORT TTOutputDirectoryCallback(TTPtr baton, TTValue& data);


#endif // __TT_OUTPUT_H__
