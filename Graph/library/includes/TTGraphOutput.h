/** @file
 *
 * @ingroup graphLibrary
 *
 * @brief Jamoma Asynchronous Object Graph Layer
 *
 * @details Creates a wrapper for TTObjectBases that can be used to build a control graph for asynchronous message passing
 *
 * @authors Timothy Place
 *
 * @copyright Copyright © 2010 by Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
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
