/* 
 * Jamoma Asynchronous Object Graph Layer
 * Creates a wrapper for TTObjects that can be used to build a control graph for asynchronous message passing.
 * Copyright © 2010, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TTGRAPH_INPUT_H__
#define __TTGRAPH_INPUT_H__

#include "TTGraph.h"


/******************************************************************************************/

/**	An object that serves as the source driving an object/graph.		*/
class TTGRAPH_EXPORT TTGraphInput : public TTObject
{
	TTCLASS_SETUP(TTGraphInput)
	
	TTGraphObjectPtr	mOwner;
	
public:
	TTErr setOwner(TTGraphObjectPtr newOwner);
	TTErr push(const TTDictionary& aDictionary);
};


#endif // __TTGRAPH_INPUT_H__
