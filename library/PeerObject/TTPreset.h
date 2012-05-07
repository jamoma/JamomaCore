/* 
 * A Preset Object
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_PRESET_H__
#define __TT_PRESET_H__

#include "TTModular.h"

class TTScript;
typedef TTScript* TTScriptPtr;

/**	TTPreset ... TODO : an explanation
 
 
 */

class TTMODULAR_EXPORT TTPreset : public TTDataObject
{
	TTCLASS_SETUP(TTPreset)
	
private :
	
	TTSymbolPtr					mName;							///< ATTRIBUTE : the name of the preset
	TTNodeAddressPtr			mAddress;						///< ATTRIBUTE : the parent address from where to search object to store
	TTSymbolPtr					mComment;						///< ATTRIBUTE : a comment for the preset
	
	TTNodeDirectoryPtr			mDirectory;						///< a preset depends on a directory
	TTScriptPtr					mScript;						///< a script containing relativeAddress and value
	
	/** */
	TTErr	setAddress(const TTValue& value);
	
	/** */
	TTErr	Clear();
	
	/** */
	TTErr	Store();

	/** */
	TTErr	Recall();
	
	/**  needed to be handled by a TTXmlHandler */
	TTErr	WriteAsXml(const TTValue& inputValue, TTValue& outputValue);
	TTErr	ReadFromXml(const TTValue& inputValue, TTValue& outputValue);
	
	/**  needed to be handled by a TTTextHandler */
	TTErr	WriteAsText(const TTValue& inputValue, TTValue& outputValue);
	TTErr	ReadFromText(const TTValue& inputValue, TTValue& outputValue);
	
	/**  needed to be handled by a TTBufferHandler */
	TTErr	WriteAsBuffer(const TTValue& inputValue, TTValue& outputValue);
	TTErr	ReadFromBuffer(const TTValue& inputValue, TTValue& outputValue);
};

typedef TTPreset* TTPresetPtr;

/** Return Yes if the node have to be part of the preset */
TTBoolean TTMODULAR_EXPORT TTPresetTestObject(TTNodePtr node, TTPtr args);

TTBoolean TTMODULAR_EXPORT TTPresetCompareNodePriority(TTValue& v1, TTValue& v2);

#endif // __TT_PRESET_H__
