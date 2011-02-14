/* 
 * Jamoma Asynchronous Object Graph Layer
 * Creates a wrapper for TTObjects that can be used to build a control graph for asynchronous message passing.
 * Copyright © 2010, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTGraphDescription.h"
#include <fstream>
#include <iostream>

using namespace std;


TTInt32 TTGraphDescription::sIndex = 0;


void TTGraphDescription::exportRuby(const TTString& fullpathToFile)
{
	TTString		rubyContent;
	int				index = -1;
	TTStringVector	nodeNames;
	ofstream		rubyFile(fullpathToFile.c_str());
	
	rubyContent += "require \"Jamoma\"\n\n";
	exportRubyNode(rubyContent, index, nodeNames);
	rubyFile.write(rubyContent.c_str(), rubyContent.size());
	rubyFile.close();
}

int TTGraphDescription::exportRubyNode(TTString& content, int& index, TTStringVector& nodeNames)
{
	char	objName[16];
	int		localIndex;
	
	index++;
	localIndex = index;
	snprintf(objName, 16, "obj%i", index);
	nodeNames.push_back(TTString(objName));
	
	content += objName;
	content += " = TTControl.new \"";
	content += mClassName->getString();
	content += "\"\n";
	
	for (TTGraphDescriptionIter input = mInputDescriptions.begin(); input != mInputDescriptions.end(); input++) {
		int inputIndex = input->exportRubyNode(content, index, nodeNames);
		content += objName;
		content += ".connect ";
		content += nodeNames[inputIndex];
		content += "\n";
	}
	return localIndex;
}


void TTGraphDescription::exportCpp(const TTString& fullpathToFile)
{
	TTString		content;
	int				index = -1;
	TTStringVector	nodeNames;
	ofstream		aFile(fullpathToFile.c_str());
	
	content += "#include \"TTGraphAPI.h\"\n\n";
	content += "int main()\n{\n";
	content += "	TTGraphInit();\n\n";
			
	exportCppNode(content, index, nodeNames);
	
	content += "	return 0;\n";
	content += "}\n";
	aFile.write(content.c_str(), content.size());
	aFile.close();
}

int TTGraphDescription::exportCppNode(TTString& content, int& index, TTStringVector& nodeNames)
{
	char	objName[16];
	int		localIndex;
	
	index++;
	localIndex = index;
	snprintf(objName, 16, "obj%i", index);
	nodeNames.push_back(TTString(objName));
	
	content += "	TTGraphObjectPtr ";
	content += objName;
	content += ";\n";
	content += "	TTObjectInstantiate(TT(\"graph.object\"), (TTObjectPtr*)&";
	content += objName;
	content += ", TTValue(TT(\"";
	content += mClassName->getString();
	content += "\")))\n\n";
	
	for (TTGraphDescriptionIter input = mInputDescriptions.begin(); input != mInputDescriptions.end(); input++) {
		int inputIndex = input->exportCppNode(content, index, nodeNames); // note: calls into TTGraph's exportRubyNode
		content += "	";
		content += objName;
		content += "->connect(";
		content += nodeNames[inputIndex];
		content += ");\n";
	}	
	return localIndex;
}


void TTGraphDescription::exportMax(const TTString& fullpathToFile)
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

int TTGraphDescription::exportMaxNode(TTString& content, int& index, TTStringVector& nodeNames)
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
	if (mClassName == TT("operator"))
		content += "op";
	else if (mClassName == TT("graph.input"))
		content += "pack";
	else if (mClassName == TT("graph.output"))
		content += "unpack";
	else
		content += mClassName->getString();
	
	content += "#\",\n";
	content += "					\"patching_rect\" : [ 50.0, ";
	snprintf(location, 16, "%f", 400.0 - (index * 40.0));
	content += location;
	content += ", 100.0, 20.0]\n";
	content += "				}\n";
	content += "			}\n";
		
	for (TTGraphDescriptionIter input = mInputDescriptions.begin(); input != mInputDescriptions.end(); input++) {
		int inputIndex = input->exportMaxNode(content, index, nodeNames);

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
