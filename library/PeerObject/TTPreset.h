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


/**	TTPreset ... TODO : an explanation
 
 
 */

/** Internal class to store an Object and his state <attribute, value> 
	The attributes to store are chosen when the item is created */
class Item
	{
	public :
		TTNodePtr	node;
		TTHashPtr	state;
		
		Item(TTNodePtr aNode);
		~Item();
		
		TTSymbolPtr getType();
		
		TTErr clear();
		TTErr set(TTSymbolPtr attributeName);
		TTErr get(TTSymbolPtr attributeName, TTValue& value);
		TTErr send(TTSymbolPtr attributeName);
	};
typedef Item* ItemPtr;

class TTApplication;
typedef TTApplication* TTApplicationPtr;

class TTMODULAR_EXPORT TTPreset : public TTObject
{
	TTCLASS_SETUP(TTPreset)
	
public:		// use public to allow PresetManager to have a direct access
	
	TTSymbolPtr			mName;							///< ATTRIBUTE: the name of the preset
	TTSymbolPtr			mAddress;						///< ATTRIBUTE: the parent address from where to search object to store
	TTSymbolPtr			mComment;						///< ATTRIBUTE: a comment for the preset
	
private:	
	
	TTApplicationPtr	mApplication;					///< the application
	TTCallbackPtr		mTestObjectCallback;			///< a callback used to test object to store in item or not
	TTCallbackPtr		mReadItemCallback;				///< a callback used when item's state is read from a file
	TTCallbackPtr		mUpdateItemCallback;			///< a callback used to update the item's state
	TTCallbackPtr		mSortItemCallback;				///< a callback used to sort the item list
	TTCallbackPtr		mSendItemCallback;				///< a callback used to send the item's state
	TTHashPtr			mItemTable;						///< a hash table containing <relativeAddress, ItemPtr>
	TTListPtr			mItemKeysSorted;				///< a linked list containing keys of sorted item
	TTSymbolPtr			mCurrentItem;					///< a key to retrieve the current Item in the ItemTable
	
	
	/** */
	TTErr setAddress(const TTValue& value);
	
	/** */
	TTErr Fill();
	
	/** */
	TTErr Clear();
	
	/** */
	TTErr Update();
	
	/** */
	TTErr Sort();

	/** */
	TTErr Send();
	
	/**  needed to be handled by a TTXmlHandler */
	TTErr WriteAsXml(const TTValue& value);
	TTErr ReadFromXml(const TTValue& value);
	
	/**  needed to be handled by a TTTextHandler */
	TTErr WriteAsText(const TTValue& value);
	TTErr ReadFromText(const TTValue& value);
};

typedef TTPreset* TTPresetPtr;

#endif // __TT_PRESET_H__
