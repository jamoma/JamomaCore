/* 
 * A Preset Object
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
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
		
		TTObjectPtr		object;
		TTHashPtr		state;
		
		Item(TTNodePtr aNode);
		~Item();
	};
typedef Item* ItemPtr;



class TTMODULAR_EXPORT TTPreset : public TTObject
{
	TTCLASS_SETUP(TTPreset)
	
public:
	TTSymbolPtr			mAddress;						///< ATTRIBUTE: the parent address of each stored parameter
	TTSymbolPtr			mName;							///< ATTRIBUTE: the name of the preset
	TTSymbolPtr			mComment;						///< TODO
	TTValue				mExtra;							///< TODO
	
private:
	
	TTNodeDirectoryPtr	mDirectory;						///< the directory
	TTHashPtr			mToStore;						///< a hash table containing <typeOfObjectToStore, attributeToStore>
	TTHashPtr			mItemList;						///< a hash table containing <relativeAddress, ItemPtr>
	
	TTSymbolPtr			mCurrentItem;					///< a key to retrieve the current Item in the ItemList
	
public:
	
	TTErr setAddress(const TTValue& value);
	
	TTErr Fill();
	TTErr Clear();
	TTErr Update();
	TTErr Send();
	
private :
	
	TTErr writeAsXml(const TTValue& value);
	TTErr readFromXml(const TTValue& value);
	
	/* TODO :
	 TTErr WriteAsText(const TTValue& value);			// pass an text buffer ?
	 TTErr ReadFromText(const TTValue& value);			// pass an text buffer ?
	 */
	
	TTErr makeAbsoluteAddress(TTSymbolPtr relativeAddress, TTSymbolPtr *returnedAbsoluteAddress);
	TTErr makeRelativeAddress(TTNodePtr aNode, TTSymbolPtr *returnedRelativeAddress);
};

typedef TTPreset* TTPresetPtr;

#endif // __TT_PRESET_H__
