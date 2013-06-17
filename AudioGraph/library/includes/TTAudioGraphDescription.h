/** @file
 *
 * @ingroup audioGraphLibrary
 *
 * @brief Describes a node in an audio processing graph
 *
 * @details
 *
 * @authors Timothy Place, Trond Lossius
 *
 * @copyright Copyright © 2010, Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __TTAUDIOGRAPH_DESCRIPTION_H__
#define __TTAUDIOGRAPH_DESCRIPTION_H__

#include "TTAudioGraph.h"
#include "TTGraphDescription.h"

/******************************************************************************************/

class TTAudioGraphDescription;
typedef std::vector<TTAudioGraphDescription>		TTAudioGraphDescriptionVector;
typedef TTAudioGraphDescriptionVector::iterator		TTAudioGraphDescriptionIter;

/** \ingroup typedefs
 Here I'm documenting TTAudioGraphDescriptionVectors
 */
typedef std::vector<TTAudioGraphDescriptionVector>	TTAudioGraphDescriptionVectors;

/** \ingroup typedefs
 Here I'm documenting TTAudioGraphDescriptionVectorsIter
 */
typedef TTAudioGraphDescriptionVectors::iterator	TTAudioGraphDescriptionVectorsIter;


typedef std::vector<TTString>		TTStringVector;
//typedef TTStringVector::iterator	TTStringVectorIter;


/**	This object provides a description of a TTAudioGraphObject
	and its sources.
*/
class TTAUDIOGRAPH_EXPORT TTAudioGraphDescription : public TTGraphDescription {
public:
	// A bunch of arrays (one for each inlet), each with an array of descriptions for nodes connected to that inlet
	TTAudioGraphDescriptionVectors	mAudioDescriptionsForInlets;
	
	// AudioGraph objects are also Graph objects, so this contains the description in a Graph
	TTGraphDescription				mControlDescription;
	TTUInt32						mOutletNumber;			// instantaneous outlet number for a connection
	TTUInt32						mNumInlets;
	TTUInt32						mNumOutlets;
	
	TTAudioGraphDescription() :
		mOutletNumber(0)
	{
		;
	}
	
	
	TTAudioGraphDescription& operator = (const TTAudioGraphDescription &newValue)
	{
		// inherited
		mClassName = newValue.mClassName;
		mInputDescriptions = newValue.mInputDescriptions;
		mObjectInstance = newValue.mObjectInstance;
		mID = newValue.mID;		
		mUserData = newValue.mUserData;
		
		// audio specific
		mAudioDescriptionsForInlets = newValue.mAudioDescriptionsForInlets;
		mControlDescription = newValue.mControlDescription;
		mOutletNumber = newValue.mOutletNumber;
		mNumInlets = newValue.mNumInlets;
		mNumOutlets = newValue.mNumOutlets;
		
		return *this;
	}

	
	
	void exportRuby(const TTString& fullpathToFile);
	int exportRubyNode(TTString& rubyContent, int& index, TTStringVector& nodeNames);
	
	
	void exportCpp(const TTString& fullpathToFile);
	int exportCppNode(TTString& content, int& index, TTStringVector& nodeNames);
	
	
	void exportMax(const TTString& fullpathToFile);
	int exportMaxNode(TTString& content, int& index, TTStringVector& nodeNames);
};

typedef TTAudioGraphDescription* TTAudioGraphDescriptionPtr;


#endif // __TTAUDIOGRAPH_DESCRIPTION_H__
