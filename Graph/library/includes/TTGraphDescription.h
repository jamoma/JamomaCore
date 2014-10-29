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


#ifndef __TTGRAPH_DESCRIPTION_H__
#define __TTGRAPH_DESCRIPTION_H__

#include "TTGraph.h"


/******************************************************************************************/

class TTGraphDescription;
typedef std::vector<TTGraphDescription>		TTGraphDescriptionVector;
typedef TTGraphDescriptionVector::iterator	TTGraphDescriptionIter;

typedef std::vector<TTString>		TTStringVector;
typedef TTStringVector::iterator	TTStringVectorIter;


/**	This object represents a single 'outlet' from a #TTGraphObjectBase.
	#TTGraphObjectBase maintains a vector of these outlets.
*/

class TTGRAPH_EXPORT TTGraphDescription {
public:
	TTSymbol					mClassName;
	TTGraphDescriptionVector	mInputDescriptions;
	TTObject					mObjectInstance;

	TTInt32						mID;					///< An index number that uniquely identifies this instance
	TTPtr						mUserData;				///< A place for a descriptions' user to store custom information, per node
	
	static TTInt32				sIndex;					///< Used for creating mID
	
	
	TTGraphDescription() :
		mObjectInstance(),
		mUserData(NULL)
	{
		;
	}

	
	TTGraphDescription& operator = (const TTGraphDescription &newValue)
	{
		// inherited
		mClassName = newValue.mClassName;
		mInputDescriptions = newValue.mInputDescriptions;
		mObjectInstance = newValue.mObjectInstance;
		mID = newValue.mID;		
		mUserData = newValue.mUserData;
		
		// audio specific
//		mAudioDescriptionsForInlets = newValue.mAudioDescriptionsForInlets;
//		mControlDescription = newValue.mControlDescription;
//		mOutletNumber = newValue.mOutletNumber;
//		mNumInlets = newValue.mNumInlets;
//		mNumOutlets = newValue.mNumOutlets;
		
		return *this;
	}

	
	void exportRuby(const TTString& fullpathToFile);
	int exportRubyNode(TTString& rubyContent, int& index, TTStringVector& nodeNames);
	
	void exportCpp(const TTString& fullpathToFile);
	int exportCppNode(TTString& content, int& index, TTStringVector& nodeNames);
	
	void exportMax(const TTString& fullpathToFile);
	int exportMaxNode(TTString& content, int& index, TTStringVector& nodeNames);
	
	
};

typedef TTGraphDescription*	TTGraphDescriptionPtr;


#endif // __TTGRAPH_DESCRIPTION_H__
