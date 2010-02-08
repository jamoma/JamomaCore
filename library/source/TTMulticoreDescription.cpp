/* 
 * Multicore Audio Graph Layer for Jamoma DSP
 * Describe a node in an audio processing graph.
 * Copyright © 2010, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTMulticoreDescription.h"
#include <fstream>
#include <iostream>

using namespace std;


void TTMulticoreDescription::exportRuby(const TTString& fullpathToFile)
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

int TTMulticoreDescription::exportRubyNode(TTString& rubyContent, int& index, TTStringVector& nodeNames)
{
	char	objName[16];
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


void TTMulticoreDescription::exportCpp(const TTString& fullpathToFile)
{
	TTString		content;
	int				index = -1;
	TTStringVector	nodeNames;
	ofstream		aFile(fullpathToFile.c_str());
	
	content += "#include \"TTMulticoreAPI.h\"\n\n";
	content += "int main()\n{\n";
	content += "	TTMulticoreInit();\n\n";
			
	exportCppNode(content, index, nodeNames);
	
	content += "	return 0;\n";
	content += "}\n";
	aFile.write(content.c_str(), content.size());
	aFile.close();
}

int TTMulticoreDescription::exportCppNode(TTString& content, int& index, TTStringVector& nodeNames)
{
	char	objName[16];
	int		localIndex;
	
	index++;
	localIndex = index;
	snprintf(objName, 16, "obj%i", index);
	nodeNames.push_back(TTString(objName));
	
	content += "	TTMulticoreObjectPtr ";
	content += objName;
	content += ";\n";
	content += "	TTObjectInstantiate(TT(\"multicore.object\"), (TTObjectPtr*)&";
	content += objName;
	content += ", TTValue(TT(\"";
	content += mClassName->getString();
	content += "\")))\n\n";
	
	for (TTMulticoreDescriptionIter input = mInputDescriptions.begin(); input != mInputDescriptions.end(); input++) {
		int inputIndex;
		
		inputIndex = input->exportCppNode(content, index, nodeNames);
		content += "	";
		content += objName;
		content += "->connect(";
		//snprintf(inputName, 16, "obj%i", index);
		content += nodeNames[inputIndex];
		content += ");\n";
	}
	return localIndex;
}


void TTMulticoreDescription::exportMax(const TTString& fullpathToFile)
{
	TTString		content;
	int				index = -1;
	TTStringVector	nodeNames;
	ofstream		aFile(fullpathToFile.c_str());
	
	content += "{\n";
	content += "	\"patcher\" : {\n";
	content += "		\"boxes\" : [\n";
	
	exportMaxNode(content, index, nodeNames);
	
	content += "		]\n";
	content += "	}\n";
	content += "}\n";
	aFile.write(content.c_str(), content.size());
	aFile.close();
}

int TTMulticoreDescription::exportMaxNode(TTString& content, int& index, TTStringVector& nodeNames)
{
	char	objName[16];
	char	location[16];
	int		localIndex;
	
	index++;
	localIndex = index;
	snprintf(objName, 16, "obj%i", index);
	nodeNames.push_back(TTString(objName));
	
	if (index > 0)
		content += ",\n";
	
	content += "			{\n";
	content += "				\"box\" : {\n";
	content += "					\"id\" : \"";
	content += objName;
	content += "\",\n";
	content += "					\"maxclass\" : \"newobj\",\n";
	content += "					\"text\" : \"jcom.";
	
	// TODO: is there a better way to know about object name mappings?
	if (mClassName == TT("multicore.output"))
		content += "dac";
	else
		content += mClassName->getString();
	
	content += "≈\",\n";
	content += "					\"patching_rect\" : [ 50.0, ";
	snprintf(location, 16, "%f", 400.0 - (index * 40.0));
	content += location;
	content += ", 100.0, 20.0]\n";
	content += "				}\n";
	content += "			}\n";
		
	for (TTMulticoreDescriptionIter input = mInputDescriptions.begin(); input != mInputDescriptions.end(); input++) {
		int inputIndex;
		
		inputIndex = input->exportMaxNode(content, index, nodeNames);

		if (index == inputIndex) { // I think this means that we are processing the top of the chain?)
			content += "		],";
			content += "		\"lines\" : [";
		}
		else
			content += ",\n";
		
		content += "			{\n";
		content += "				\"patchline\" : {\n";
		content += "					\"destination\" : [ \"";
		content += objName;
		content += "\", 0],\n";
		content += "					\"source\" : [ \"";
		content += nodeNames[inputIndex];
		content += "\", 0]\n";
		content += "				}\n";
		content += "			}\n";
	}
	return localIndex;
}
