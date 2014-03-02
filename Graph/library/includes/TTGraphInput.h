/** @file
 *
 * @ingroup graphLibrary
 *
 * @brief Jamoma Asynchronous Object Graph Layer
 *
 * @details Creates a wrapper for #TTObjectBase that can be used to build a control graph for asynchronous message passing
 *
 * @authors Timothy Place
 *
 * @copyright Copyright © 2010 by Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __TTGRAPH_INPUT_H__
#define __TTGRAPH_INPUT_H__

#include "TTGraph.h"


/******************************************************************************************/

/**	An object that serves as the source driving an object/graph.		*/
class TTGRAPH_EXPORT TTGraphInput : public TTDataObjectBase
{
	TTCLASS_SETUP(TTGraphInput)

protected:
	
	TTGraphObjectBasePtr	mOwner;
	
public:

	TTErr setOwner(TTGraphObjectBasePtr newOwner);
	TTErr push(const TTDictionary& aDictionary);

};


#endif // __TTGRAPH_INPUT_H__
