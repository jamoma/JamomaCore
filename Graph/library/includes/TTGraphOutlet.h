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


#ifndef __TTGRAPH_OUTLET_H__
#define __TTGRAPH_OUTLET_H__

#include "TTGraph.h"
//#include "TTGraphObjectBase.h"
#include "TTGraphDestination.h"


/******************************************************************************************/

/**	This object represents a single 'outlet' from a #TTGraphObjectBase.
	#TTGraphObjectBase maintains a vector of these outlets.
*/
class TTGRAPH_EXPORT TTGraphOutlet {
	TTGraphDestinationVector	mDestinationObjects;
	
public:
	TTGraphOutlet()
	{
		;
	}
	
	~TTGraphOutlet()
	{
		;
	}
	
	
	// Copying Functions are critical due to use by std::vector 
	
	TTGraphOutlet(const TTGraphOutlet& original)
	{
		mDestinationObjects = original.mDestinationObjects;
	}
	
	TTGraphOutlet& operator=(const TTGraphOutlet& original)
	{
		mDestinationObjects = original.mDestinationObjects;
		return *this;
	}
	
	
	// Graph Methods
	
	void reset()
	{
		mDestinationObjects.clear();
	}
	
	
	TTErr drop(TTGraphObjectBasePtr anObject, TTUInt16 toInletNumber)
	{
		for (TTGraphDestinationIter	dest = mDestinationObjects.begin(); dest != mDestinationObjects.end(); dest++) {
			if (dest->match(anObject, toInletNumber)) {
				drop(*dest);
				break;
			}
		}
		return kTTErrNone;
	}
	
	
	void drop(TTGraphDestination& aDestination)
	{
		TTGraphDestinationIter iter = find(mDestinationObjects.begin(), mDestinationObjects.end(), aDestination);
		
		if (iter != mDestinationObjects.end())
			mDestinationObjects.erase(iter);
	}
	
	
	TTErr connect(TTGraphObjectBasePtr anObject, TTUInt16 toInletNumber)
	{
		TTUInt16 size = mDestinationObjects.size();
		
		// make sure the connection doesn't already exist
		for (TTGraphDestinationIter destination = mDestinationObjects.begin(); destination != mDestinationObjects.end(); destination++) {
			if (destination->match(anObject, toInletNumber))
				return kTTErrNone;
		}
		
		// create the connection
		mDestinationObjects.resize(size+1);
		mDestinationObjects[size].connect(anObject, toInletNumber);
		mDestinationObjects[size].setOwner(this);
		return kTTErrNone;
	}
	
	
	TTErr push(const TTDictionary& aDictionary)
	{
		for (TTGraphDestinationIter destination = mDestinationObjects.begin(); destination != mDestinationObjects.end(); destination++)
			destination->push(aDictionary);
		return kTTErrNone;
	}
	
};

typedef TTGraphOutlet*					TTGraphOutletPtr;
typedef std::vector<TTGraphOutlet>		TTGraphOutletVector;
typedef TTGraphOutletVector::iterator	TTGraphOutletIter;

#endif // __TTGRAPH_OUTLET_H__
