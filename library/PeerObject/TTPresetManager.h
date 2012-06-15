/* 
 * A PresetManager Object
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_PRESET_MANAGER_H__
#define __TT_PRESET_MANAGER_H__

#include "TTModular.h"

/**	TTPresetManager ... TODO : an explanation
 
 
 */

class TTPreset;
typedef TTPreset* TTPresetPtr;

class TTXmlHandler;
typedef TTXmlHandler* TTXmlHandlerPtr;

class TTMODULAR_EXPORT TTPresetManager : public TTDataObject
{
	TTCLASS_SETUP(TTPresetManager)
	
private:
	
	TTNodeAddressPtr	mAddress;						///< ATTRIBUTE : the container address to manage
	TTValue				mOrder;							///< ATTRIBUTE : presets are ordered by name
	TTSymbolPtr			mCurrent;						///< ATTRIBUTE : the current preset name

	TTHashPtr			mPresets;						///< a hash table containing <name, TTPresetPtr>
	TTPresetPtr			mCurrentPreset;					///< the current preset
	
	/** */
	TTErr	setAddress(const TTValue& value);
	
	/** */
	TTErr	setOrder(const TTValue& value);

	/** */
	TTErr	Clear();
	
	/** */
	TTErr	Store(const TTValue& inputValue, TTValue& outputValue);
	
	/** */
	TTErr	Recall(const TTValue& inputValue, TTValue& outputValue);
	
	/** */
	TTErr	Interpolate(const TTValue& inputValue, TTValue& outputValue);
	
	/** */
	TTErr	Mix(const TTValue& inputValue, TTValue& outputValue);
	
	/** */
	TTErr	Remove(const TTValue& inputValue, TTValue& outputValue);
	
	/**  needed to be handled by a TTXmlHandler */
	TTErr	WriteAsXml(const TTValue& inputValue, TTValue& outputValue);
	TTErr	ReadFromXml(const TTValue& inputValue, TTValue& outputValue);
	
	/**  needed to be handled by a TTTextHandler */
	TTErr	WriteAsText(const TTValue& inputValue, TTValue& outputValue);
	TTErr	ReadFromText(const TTValue& inputValue, TTValue& outputValue);
	
	/** */
	TTErr	notifyOrderObservers();
};

typedef TTPresetManager* TTPresetManagerPtr;

#endif // __TT_PRESET_MANAGER_H__
