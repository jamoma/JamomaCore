/* 
 * Jamoma Asynchronous Object Graph Layer
 * Creates a wrapper for TTObjects that can be used to build a control graph for asynchronous message passing.
 * Copyright © 2010, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TTGRAPH_OUTPUT_H__
#define __TTGRAPH_OUTPUT_H__

#include "TTGraph.h"


/******************************************************************************************/

/**	TTMulticoreOutput is an audio object that serves as the destination and master for a TTMulticore graph.		*/
class TTGRAPH_EXPORT TTGraphOutput : public TTObject
{
	TTCLASS_SETUP(TTGraphOutput)
	
	TTErr dictionary(const TTValue& aDictionary);
};


#endif // __TTGRAPH_OUTPUT_H__
