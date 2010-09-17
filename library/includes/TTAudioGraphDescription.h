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

/**	This object represents a single 'outlet' from a TTAudioGraphObject.
	TTAudioGraphObject maintains a vector of these outlets.
*/

class TTAUDIOGRAPH_EXPORT TTAudioGraphDescription {
public:
	TTSymbolPtr						mClassName;
	TTAudioGraphDescriptionVector	mAudioDescriptions;
	TTGraphDescription				mControlDescription;
	TTObjectPtr						mObjectInstance;
	
	void exportRuby(const TTString& fullpathToFile);
	int exportRubyNode(TTString& rubyContent, int& index, TTStringVector& nodeNames);
	
	void exportCpp(const TTString& fullpathToFile);
	int exportCppNode(TTString& content, int& index, TTStringVector& nodeNames);
	
	void exportMax(const TTString& fullpathToFile);
	int exportMaxNode(TTString& content, int& index, TTStringVector& nodeNames);
};


#endif // __TTAUDIOGRAPH_DESCRIPTION_H__
