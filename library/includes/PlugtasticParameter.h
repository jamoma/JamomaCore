/* 
 *	Plugtastic 
 *	
 *	Copyright © 2010 by Timothy Place
 *
 *	License: This code is licensed under the terms of the "New BSD License"
 *	http://creativecommons.org/licenses/BSD/
 */

#ifndef __PLUGTASTIC_PARAMETER_H__
#define __PLUGTASTIC_PARAMETER_H__

#include "TTGraph.h"


/******************************************************************************************/

/**	An object that serves as the source driving an object/graph.		*/
class TTGRAPH_EXPORT PlugtasticParameter : public TTDataObject
{
	TTCLASS_SETUP(PlugtasticParameter)
	
public:
	TTGraphObjectPtr	mOwner;
	TTSymbolPtr			mName;
	TTFloat64			mRangeBottom;
	TTFloat64			mRangeTop;
	TTFloat64			mDefault;
	TTSymbolPtr			mStyle;
	TTFloat64			mValue;
	TTDictionary		mDictionary;
	
	// attribute accessors
	TTErr setName(const TTValue& newValue);
	TTErr setValue(const TTValue& newValue);

	// graph stuff
	TTErr setOwner(TTGraphObjectPtr newOwner);
	TTErr push(const TTDictionary& aDictionary);
};

typedef PlugtasticParameter* PlugtasticParameterPtr;


#endif // __PLUGTASTIC_PARAMETER_H__
