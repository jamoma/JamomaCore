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
#include <fstream>
#include <iostream>

using namespace std;

/******************************************************************************************/

class TTMulticoreDescription;
typedef std::vector<TTMulticoreDescription>		TTMulticoreDescriptionVector;
typedef TTMulticoreDescriptionVector::iterator	TTMulticoreDescriptionIter;

typedef std::vector<TTString>	TTStringVector;

/**	This object represents a single 'outlet' from a TTMulticoreObject.
	TTMulticoreObject maintains a vector of these outlets.
*/

class TTMulticoreDescription {
public:
	TTSymbolPtr						mClassName;
	TTMulticoreDescriptionVector	mInputDescriptions;
	

	void exportRuby(const TTString& fullpathToFile)
	{
		TTString		rubyContent;
		int				index = -1;
		TTStringVector	nodeNames;
		ofstream		rubyFile(fullpathToFile.c_str());
		
		rubyContent += "require \"TTRuby\"\n\n";
		exportRubyNode(rubyContent, index, nodeNames);
		rubyFile.write(rubyContent.c_str(), rubyContent.size());
		rubyFile.close();
	}
	
	int exportRubyNode(TTString& rubyContent, int& index, TTStringVector& nodeNames)
	{
		char	objName[16];
		char	inputName[16];
		int		localIndex;
		
		index++;
		localIndex = index;
		snprintf(objName, 16, "obj%i", index);
		nodeNames.push_back(TTString(objName));
		
		rubyContent += objName;
		rubyContent += " = TTAudio.new \"";
		rubyContent += mClassName->getString();
		rubyContent += "\"\n";

		for (TTMulticoreDescriptionIter input = mInputDescriptions.begin(); input != mInputDescriptions.end(); input++) {
			int inputIndex;
			
			inputIndex = input->exportRubyNode(rubyContent, index, nodeNames);
			rubyContent += objName;
			rubyContent += ".connect ";
			//snprintf(inputName, 16, "obj%i", index);
			rubyContent += nodeNames[inputIndex];
			rubyContent += "\n";
		}
		return localIndex;
	}
	
	
	// TODO: export C++ source code snippet

	
	// TODO: export a Max patcher
	
	
	
};


#endif // __TTMULTICORE_DESCRIPTION_H__
