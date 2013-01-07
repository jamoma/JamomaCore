/** @file
 *
 * @ingroup audioGraphLibrary
 *
 * @brief Describe a node in an audio processing graph
 *
 * @details
 *
 * @authors Timothy Place, Trond Lossius
 *
 * @copyright Copyright © 2010, Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTAudioGraphDescription.h"
#include <fstream>
#include <iostream>

using namespace std;


void TTAudioGraphDescription::exportRuby(const TTString& fullpathToFile)
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


// WARNING: this code has been largely duplicated to TTGraphDescription.h
int TTAudioGraphDescription::exportRubyNode(TTString& content, int& index, TTStringVector& nodeNames)
{
	char	objName[16];
	int		localIndex;
	
	index++;
	localIndex = index;
	snprintf(objName, 16, "obj%i", index);
	nodeNames.push_back(TTString(objName));
	
	content += objName;
	content += " = TTAudio.new \"";
	content += mClassName.c_str();
	content += "\"\n";
#ifdef SORRY_THIS_IS_BROKEN
	for (TTAudioGraphDescriptionIter input = mAudioDescriptions.begin(); input != mAudioDescriptions.end(); input++) {
		int inputIndex = input->exportRubyNode(content, index, nodeNames);
		content += objName;
		content += ".connect_audio ";
		content += nodeNames[inputIndex];
		content += "\n";
	}
	for (TTGraphDescriptionIter input = mControlDescription.mInputDescriptions.begin(); input != mControlDescription.mInputDescriptions.end(); input++) {
		int inputIndex = input->exportRubyNode(content, index, nodeNames); // note: calls into TTGraph's exportRubyNode
		content += objName;
		content += ".connect ";
		content += nodeNames[inputIndex];
		content += "\n";
	}
#endif	
	return localIndex;
}


void TTAudioGraphDescription::exportCpp(const TTString& fullpathToFile)
{
	TTString		content;
	int				index = -1;
	TTStringVector	nodeNames;
	ofstream		aFile(fullpathToFile.c_str());
	
	content += "#include \"TTAudioGraphAPI.h\"\n\n";
	content += "int main()\n{\n";
	content += "	TTAudioGraphInit();\n\n";
			
	exportCppNode(content, index, nodeNames);
	
	content += "	return 0;\n";
	content += "}\n";
	aFile.write(content.c_str(), content.size());
	aFile.close();
}

int TTAudioGraphDescription::exportCppNode(TTString& content, int& index, TTStringVector& nodeNames)
{
	char	objName[16];
	int		localIndex;
	
	index++;
	localIndex = index;
	snprintf(objName, 16, "obj%i", index);
	nodeNames.push_back(TTString(objName));
	
	content += "	TTAudioGraphObjectPtr ";
	content += objName;
	content += ";\n";
	content += "	TTObjectBaseInstantiate(TT(\"audio.object\"), (TTObjectBasePtr*)&";
	content += objName;
	content += ", TTValue(TT(\"";
	content += mClassName.c_str();
	content += "\")))\n\n";
#ifdef SORRY_THIS_IS_BROKEN
	
	for (TTAudioGraphDescriptionIter input = mAudioDescriptions.begin(); input != mAudioDescriptions.end(); input++) {
		int inputIndex = input->exportCppNode(content, index, nodeNames);
		content += "	";
		content += objName;
		content += "->connectAudio(";
		content += nodeNames[inputIndex];
		content += ");\n";
	}
	for (TTGraphDescriptionIter input = mControlDescription.mInputDescriptions.begin(); input != mControlDescription.mInputDescriptions.end(); input++) {
		int inputIndex = input->exportCppNode(content, index, nodeNames); // note: calls into TTGraph's exportCppNode
		content += "	";
		content += objName;
		content += "->connect(";
		content += nodeNames[inputIndex];
		content += ");\n";
	}	
#endif
	return localIndex;
}


void TTAudioGraphDescription::exportMax(const TTString& fullpathToFile)
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

int TTAudioGraphDescription::exportMaxNode(TTString& content, int& index, TTStringVector& nodeNames)
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
	//if (mClassName == TT("dac"))
	//	content += "dac";
	//else if (mClassName == TT("adc"))
	//	content += "adc";
	//else
	if (mClassName == TT("operator"))
		content += "op";
	else
		content += mClassName.c_str();
	
	content += "≈\",\n";
	content += "					\"patching_rect\" : [ 50.0, ";
	snprintf(location, 16, "%f", 400.0 - (index * 40.0));
	content += location;
	content += ", 100.0, 20.0]\n";
	content += "				}\n";
	content += "			}\n";
#ifdef SORRY_THIS_IS_BROKEN
	
	for (TTAudioGraphDescriptionIter input = mAudioDescriptions.begin(); input != mAudioDescriptions.end(); input++) {
		int inputIndex;
		
		inputIndex = input->exportMaxNode(content, index, nodeNames);

		if (input == mAudioDescriptions.begin()) {
			for (TTGraphDescriptionIter graphInput = mControlDescription.mInputDescriptions.begin(); graphInput != mControlDescription.mInputDescriptions.end(); graphInput++) {
				int graphInputIndex = graphInput->exportMaxNode(content, index, nodeNames); // note: calls into TTGraph's exportMaxNode
				
				if (index == graphInputIndex) { // I think this means that we are processing the top of the chain?)
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
				content += nodeNames[graphInputIndex];
				content += "\", 0]\n";
				content += "				}\n";
				content += "			}\n";
			}
		}
		
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
#endif		
	
	return localIndex;
}
