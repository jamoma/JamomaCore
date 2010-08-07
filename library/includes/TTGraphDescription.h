/* 
 * Jamoma Asynchronous Object Graph Layer
 * Creates a wrapper for TTObjects that can be used to build a control graph for asynchronous message passing.
 * Copyright © 2010, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TTGRAPH_DESCRIPTION_H__
#define __TTGRAPH_DESCRIPTION_H__

#include "TTGraph.h"


/******************************************************************************************/

class TTGraphDescription;
typedef std::vector<TTGraphDescription>		TTGraphDescriptionVector;
typedef TTGraphDescriptionVector::iterator	TTGraphDescriptionIter;

typedef std::vector<TTString>	TTStringVector;


/**	This object represents a single 'outlet' from a TTGraphObject.
	TTGraphObject maintains a vector of these outlets.
*/

class TTGRAPH_EXPORT TTGraphDescription {
public:
	TTSymbolPtr						mClassName;
	TTGraphDescriptionVector	mInputDescriptions;
	
	void exportRuby(const TTString& fullpathToFile);
	int exportRubyNode(TTString& rubyContent, int& index, TTStringVector& nodeNames);
	
	void exportCpp(const TTString& fullpathToFile);
	int exportCppNode(TTString& content, int& index, TTStringVector& nodeNames);
	
	void exportMax(const TTString& fullpathToFile);
	int exportMaxNode(TTString& content, int& index, TTStringVector& nodeNames);
	
	
};


#endif // __TTGRAPH_DESCRIPTION_H__
