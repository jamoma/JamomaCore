/* 
 * Multicore Audio Graph Layer for Jamoma DSP
 * Describe a node in an audio processing graph.
 * Copyright © 2010, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TTMULTICORE_DESCRIPTION_H__
#define __TTMULTICORE_DESCRIPTION_H__

#include "TTMulticore.h"


/******************************************************************************************/

class TTMulticoreDescription;
typedef std::vector<TTMulticoreDescription>		TTMulticoreDescriptionVector;
typedef TTMulticoreDescriptionVector::iterator	TTMulticoreDescriptionIter;

typedef std::vector<TTString>	TTStringVector;


/**	This object represents a single 'outlet' from a TTMulticoreObject.
	TTMulticoreObject maintains a vector of these outlets.
*/

class TTMULTICORE_EXPORT TTMulticoreDescription {
public:
	TTSymbolPtr						mClassName;
	TTMulticoreDescriptionVector	mInputDescriptions;
	
	void exportRuby(const TTString& fullpathToFile);
	int exportRubyNode(TTString& rubyContent, int& index, TTStringVector& nodeNames);
	
	void exportCpp(const TTString& fullpathToFile);
	int exportCppNode(TTString& content, int& index, TTStringVector& nodeNames);
	
	void exportMax(const TTString& fullpathToFile);
	int exportMaxNode(TTString& content, int& index, TTStringVector& nodeNames);
	
	
};


#endif // __TTMULTICORE_DESCRIPTION_H__
