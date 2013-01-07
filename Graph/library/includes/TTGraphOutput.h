/* 
 * Jamoma Asynchronous Object Graph Layer
 * Creates a wrapper for TTObjectBases that can be used to build a control graph for asynchronous message passing.
 * Copyright © 2010, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TTGRAPH_OUTPUT_H__
#define __TTGRAPH_OUTPUT_H__

#include "TTGraph.h"


/******************************************************************************************/

/**	An object that serves as the destination of a graph/object.		*/
class TTGRAPH_EXPORT TTGraphOutput : public TTDataObjectBase
{
	TTCLASS_SETUP(TTGraphOutput)
	
protected:
	
	TTErr dictionary(const TTValue& anInputValue, TTValue& anOutputValue);

};


#endif // __TTGRAPH_OUTPUT_H__
