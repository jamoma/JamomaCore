/* 
 * Jamoma Asynchronous Object Graph Layer
 * Creates a wrapper for TTObjects that can be used to build a control graph for asynchronous message passing.
 * Copyright © 2010, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
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

	
	//	int exportRubyNode(TTString& rubyContent, int& index, TTStringVector& nodeNames);
	// WARNING: This code is largely duplicated from TTMulticoreDescription.cpp
	int exportRubyNode(TTString& rubyContent, int& index, TTStringVector& nodeNames/*, TTBoolean isAudio*/)
	{
		char	objName[16];
		int		localIndex;
		
		index++;
		localIndex = index;
		snprintf(objName, 16, "obj%i", index);
		nodeNames.push_back(TTString(objName));
		
		rubyContent += objName;
		rubyContent += " = TTControl.new \"";
		rubyContent += mClassName->getString();
		rubyContent += "\"\n";
		
		for (TTGraphDescriptionIter input = mInputDescriptions.begin(); input != mInputDescriptions.end(); input++) {
			int inputIndex = input->exportRubyNode(rubyContent, index, nodeNames);
			rubyContent += objName;
			rubyContent += ".connect ";
			rubyContent += nodeNames[inputIndex];
			rubyContent += "\n";
		}
		return localIndex;
	}

	
	void exportCpp(const TTString& fullpathToFile);
	int exportCppNode(TTString& content, int& index, TTStringVector& nodeNames);
	
	void exportMax(const TTString& fullpathToFile);
	int exportMaxNode(TTString& content, int& index, TTStringVector& nodeNames);
	
	
};


#endif // __TTGRAPH_DESCRIPTION_H__
