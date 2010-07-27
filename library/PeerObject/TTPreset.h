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
 
 
	About XML preset file -- write breakline is a none XML way to do (no breakline) 
	and it implies to catch '\n' in the readXmlNode method that fails...
	However it would be nice to have human readable text documents !
	So this would be a feature request.
 
 */

class TTParameter;
typedef TTParameter* TTParameterPtr;


class Item
	{
		public :
		
		TTParameterPtr	parameter;
		TTValue			value;
		TTValue			extra;			// TODO
		
		Item(TTParameterPtr p, const TTValue& v, const TTValue& e);
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
	
	TTErr makeItem(TTNodePtr aNode, ItemPtr *returnedItem);
	
};

typedef TTPreset* TTPresetPtr;

#endif // __TT_PRESET_H__
