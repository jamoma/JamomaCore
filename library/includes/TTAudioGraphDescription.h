/* 
 * AudioGraph Audio Graph Layer for Jamoma DSP
 * Describe a node in an audio processing graph.
 * Copyright © 2010, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
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

typedef std::vector<TTString>		TTStringVector;
typedef TTStringVector::iterator	TTStringIter;


/**	This object provides a description of a TTAudioGraphObject
	and its sources.
*/

class TTAUDIOGRAPH_EXPORT TTAudioGraphDescription : public TTGraphDescription {
public:
	TTAudioGraphDescriptionVector	mAudioDescriptions;		///< A list of descriptions for the nodes whose outlets connect to this node
	TTGraphDescription				mControlDescription;	///< AudioGraph objects are also Graph objects, so this contains the description in a Graph

	
	TTAudioGraphDescription()
	{
		;
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
