/* 
 * AudioGraph Audio Graph Layer for Jamoma DSP
 * Describe a node in an audio processing graph.
 * Copyright © 2010, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TTMULTICORE_DESCRIPTION_H__
#define __TTMULTICORE_DESCRIPTION_H__

#include "TTAudioGraph.h"


/******************************************************************************************/

class TTAudioGraphDescription;
typedef std::vector<TTAudioGraphDescription>		TTAudioGraphDescriptionVector;
typedef TTAudioGraphDescriptionVector::iterator	TTAudioGraphDescriptionIter;

typedef std::vector<TTString>	TTStringVector;


/**	This object represents a single 'outlet' from a TTAudioGraphObject.
	TTAudioGraphObject maintains a vector of these outlets.
*/

class TTMULTICORE_EXPORT TTAudioGraphDescription {
public:
	TTSymbolPtr						mClassName;
	TTAudioGraphDescriptionVector	mAudioDescriptions;
	TTGraphDescription				mControlDescription;
	
	void exportRuby(const TTString& fullpathToFile);
	int exportRubyNode(TTString& rubyContent, int& index, TTStringVector& nodeNames);
	
	void exportCpp(const TTString& fullpathToFile);
	int exportCppNode(TTString& content, int& index, TTStringVector& nodeNames);
	
	void exportMax(const TTString& fullpathToFile);
	int exportMaxNode(TTString& content, int& index, TTStringVector& nodeNames);
};


#endif // __TTMULTICORE_DESCRIPTION_H__
