/* 
 * A Cue Object
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_CUE_H__
#define __TT_CUE_H__

#include "TTModular.h"

/**	TTCue ... TODO : an explanation
 
 
 */

class TTPreset;
typedef TTPreset* TTPresetPtr;

class TTXmlHandler;
typedef TTXmlHandler* TTXmlHandlerPtr;

class TTMODULAR_EXPORT TTCue : public TTDataObject
{
	TTCLASS_SETUP(TTCue)
	
public:		// use public to allow CueManager to have a direct access
	
	TTSymbolPtr			mName;							///< ATTRIBUTE: the name of the cue
	TTUInt32			mRamp;							///< ATTRIBUTE:	a global ramp time use to send the cue (in millisecond)
	TTSymbolPtr			mComment;						///< ATTRIBUTE: a comment for the cue
	TTValue				mAddresses;						///< ATTRIBUTE : all addresses to store into presets
	
private:
	
	TTValue				mPresetArguments;				///< arguments for preset creation (see TTPreset constructor)
	TTHashPtr			mPresetTable;					///< a hash table containing <relativeAddress, PresetPtr>
	TTSymbolPtr			mCurrentPreset;					///< a key to retrieve the current Preset in the PresetTable
	
	/** */
	TTErr setAddresses(const TTValue& value);
	
	/** */
	TTErr Fill();
	
	/** */
	TTErr Clear();
	
	/** */
	TTErr Update();
	
	/** */
	TTErr Send();
	
	/**  needed to be handled by a TTXmlHandler */
	TTErr WriteAsXml(const TTValue& value);
	TTErr ReadFromXml(const TTValue& value);
	
	/**  needed to be handled by a TTTextHandler */
	TTErr WriteAsText(const TTValue& value);
	TTErr ReadFromText(const TTValue& value);
};

typedef TTCue* TTCuePtr;

#endif // __TT_CUE_H__
