/* 
 * A Harvester Object
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_HARVESTER_H__
#define __TT_HARVESTER_H__

#include "TTModular.h"
#include <libxml/encoding.h>
#include <libxml/xmlwriter.h>
#include <libxml/xmlreader.h>

#define TTMODULAR_XML_ENCODING "ISO-8859-1"

// to -- write breakline is a none XML way to do (no breakline) 
// and it implies to catch '\n' in the readXmlNode method that fails...
// However it would be nice to have human readable text documents !
// So this would be a feature request.

/**	TTHarvester ... TODO : an explanation
 */

class TTParameter;
typedef TTParameter* TTParameterPtr;

typedef struct _item {
	TTParameterPtr	parameter;
	TTValue			value;
	TTValue			extra;			// TODO
} Item;
typedef Item* ItemPtr;

typedef struct _preset {
	TTUInt8			number;
	TTHashPtr		itemList;
	TTValue			extra;			// TODO
} Preset;
typedef Preset* PresetPtr;

class TTMODULAR_EXPORT TTHarvester : public TTObject
{
	TTCLASS_SETUP(TTHarvester)
	
public:
	
	TTSymbolPtr			mAddress;						///< ATTRIBUTE: the address of the harvester in the directory
	
private:
	
	TTNodeDirectoryPtr	mDirectory;						///< the directory
	TTCallbackPtr		mReturnAddressCallback;			///< a way to return received address to the owner of this receiver
	TTCallbackPtr		mReturnValueCallback;			///< a way to return received value to the owner of this receiver
	
	TTHashPtr			mPresetHash;					///< a hash table containing <name, PresetPtr>
				
	TTSymbolPtr			mCurrentPreset;					///< a key to retreive a Preset in the preset hash table
	TTSymbolPtr			mCurrentItem;					///< a key to retrieve an Item in the current preset item list
	
	TTSymbolPtr			mSchema;
	
public:
	
	TTErr New();
	TTErr read(const TTValue& value);					// to -- lower-case to defer it (see in jcom.preset.cpp)
	TTErr write(const TTValue& value);					// to -- lower-case to defer it (see in jcom.preset.cpp)
	
	TTErr StoreCurrent();
	TTErr StoreNext(const TTValue& value);
	TTErr StorePrevious(const TTValue& value);
	TTErr StoreAt(const TTValue& value);
	
	TTErr RecallCurrent();
	TTErr RecallNext();
	TTErr RecallPrevious();
	TTErr RecallAt(const TTValue& value);
	

	
private :
	
	TTErr setAddress(const TTValue& value);
	
	TTErr fillCurrentPreset();
	TTErr clearCurrentPreset();
	TTErr updateCurrentPreset();
	TTErr sendCurrentPreset();
	TTErr writeCurrentPreset(xmlTextWriterPtr writer);
	
	TTErr makePreset(TTUInt8 number, PresetPtr *returnedPreset);
	TTErr makeItem(TTNodePtr aNode, ItemPtr *returnedItem);
	
	TTErr makeAbsoluteAddress(TTSymbolPtr relativeAddress, TTSymbolPtr *returnedAbsoluteAddress);
	TTErr makeRelativeAddress(TTNodePtr aNode, TTSymbolPtr *returnedRelativeAddress);
	
	void readXmlNode(xmlTextReaderPtr reader);
	PresetPtr getCurrentPreset();
	void setCurrentPreset(TTUInt8 number);
};

typedef TTHarvester* TTHarvesterPtr;

xmlChar *ConvertInput(const char *in, const char *encoding);

#endif // __TT_HARVESTER_H__
