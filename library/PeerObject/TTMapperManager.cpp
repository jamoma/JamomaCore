/* 
 * A Mapper Manager Object
 * Copyright © 2010, Laurent Garnier
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD
 */

#include "TTMapperManager.h"

#define thisTTClass			TTMapperManager
#define thisTTClassName		"MapperManager"
#define thisTTClassTags		"mapper, manager"

char* convertAttributeFromJamoma(TTSymbolPtr attribute);
TTSymbolPtr convertAttributeToJamoma(TTSymbolPtr attribute);

TT_MODULAR_CONSTRUCTOR,
mAddress(kTTSymEmpty),
mDirectory(NULL),
mMapperList(NULL)
{
	TTValue v;

	arguments.get(0, (TTPtr*)&mDirectory);
	TT_ASSERT("Directory passed to TTMapperManager is not NULL", mDirectory);

	addAttributeWithSetter(Address, kTypeSymbol);

	addMessage(New);

	// needed to be handled by a TTXmlHandler
	addMessageWithArgument(writeAsXml);
	addMessageWithArgument(readFromXml);

	mMapperList = new TTList();
}

TTMapperManager::~TTMapperManager()
{
	New();

	delete mMapperList;
	mMapperList = NULL;
}

TTErr TTMapperManager::New()
{
	TTMapperPtr oldMapper;

	for (mMapperList->begin(); mMapperList->end(); mMapperList->next()) {
		mMapperList->current().get(0, (TTPtr*)&oldMapper);
		TTObjectRelease(TTObjectHandle(&oldMapper));
	}

	delete mMapperList;
	mMapperList = NULL;
	mMapperList = new TTList();

	return kTTErrNone;
}

TTErr TTMapperManager::writeAsXml(const TTValue& value)
{
	TTXmlHandlerPtr		aXmlHandler;
	TTMapperPtr			aMapper;
	TTValue				v, attributesList;
	TTSymbolPtr			attributeName;
	TTString			s;
	
	value.get(0, (TTPtr*)&aXmlHandler);
	
	// Browse the mapper list
	for (mMapperList->begin(); mMapperList->end(); mMapperList->next()) {
		
		xmlTextWriterStartElement(aXmlHandler->mWriter, BAD_CAST "mapper");

		mMapperList->current().get(0, (TTPtr*)&aMapper);

		// Get mapper attributes
		aMapper->getAttributeNames(attributesList);
		for (int i = 0; i < attributesList.getSize(); i++) {

			attributesList.get(i, &attributeName);

			// Get string value and fill xml except for FunctionLibrary & FunctionSamples attributes (don't need in xml)
			if (attributeName != TT("FunctionLibrary") && attributeName != TT("FunctionSamples")) {

				aMapper->getAttributeValue(attributeName, v);
				v.toString();
				v.get(0, s);

				xmlTextWriterWriteFormatAttribute(aXmlHandler->mWriter, BAD_CAST convertAttributeFromJamoma(attributeName), "%s", BAD_CAST s.c_str());
				v.clear();
				s.clear();
			}
		}
		
		v.clear();
		v = TTValue(TTPtr(aMapper));
		aXmlHandler->setAttributeValue(kTTSym_Object, v);
		aXmlHandler->sendMessage(TT("Write"));
		
		// End a mapper
		xmlTextWriterEndElement(aXmlHandler->mWriter);
		
	}

	return kTTErrNone;
}

TTErr TTMapperManager::readFromXml(const TTValue& value)
{
	TTXmlHandlerPtr	aXmlHandler = NULL;	
	TTSymbolPtr		attributeName, mute;
	TTMapperPtr		newMapper;
	TTValue			v, args;

	value.get(0, (TTPtr*)&aXmlHandler);
	if (!aXmlHandler)
		return kTTErrGeneric;

	// Switch on the name of the XML node

	// Starts reading
	if (aXmlHandler->mXmlNodeName == TT("start")) {
		New();
		return kTTErrNone;
	}

	// Ends reading
	if (aXmlHandler->mXmlNodeName == TT("end")) {

		return kTTErrNone;
	}

	// Comment node
	if (aXmlHandler->mXmlNodeName == TT("#comment"))
		return kTTErrNone;

	// Mapper node
	if (aXmlHandler->mXmlNodeName == TT("mapper")) {
		mute = TT("false");

		// get mute state
		if (xmlTextReaderMoveToAttribute(aXmlHandler->mReader, BAD_CAST "mute") == 1) {
			aXmlHandler->fromXmlChar(xmlTextReaderValue(aXmlHandler->mReader), v);
			if (v.getType() == kTypeSymbol)
				v.get(0, &mute);
		}
		
		if (mute == TT("false")) {

			// Create a new mapper
			newMapper = NULL;
			args.append(mDirectory);
			TTObjectInstantiate(TT("Mapper"), TTObjectHandle(&newMapper), args);

			// Browse attributes in xml
			while (xmlTextReaderMoveToNextAttribute(aXmlHandler->mReader) == 1) {

				// Get attribute name
				aXmlHandler->fromXmlChar(xmlTextReaderName(aXmlHandler->mReader), v);
				if (v.getType() == kTypeSymbol) {
					v.get(0, &attributeName);
					v.clear();

					// Get attribute value
					aXmlHandler->fromXmlChar(xmlTextReaderValue(aXmlHandler->mReader), v);
					
					// fill the current mapper
					newMapper->setAttributeValue(convertAttributeToJamoma(attributeName), v);
				}
			}

			// Add Mapper in the list
			mMapperList->append(new TTValue((TTPtr)newMapper));
		}
	}

	return kTTErrNone;
}

TTErr TTMapperManager::setAddress(const TTValue& value)
{	
	New();
	mAddress = value;
	return kTTErrNone;
}


// Convert Jamoma attributes into / from xml attributes
////////////////////////////////////////////////////////////////

char* convertAttributeFromJamoma(TTSymbolPtr attribute)
{
	if(attribute == TT("Input"))
		return "input";

	if(attribute == TT("Output"))
		return "output";

	if(attribute == TT("InputMin"))
		return "inputMin";

	if(attribute == TT("InputMax"))
		return "inputMax";

	if(attribute == TT("OutputMin"))
		return "outputMin";

	if(attribute == TT("OutputMax"))
		return "outputMax";

	if(attribute == TT("Function"))
		return "function";

	if(attribute == TT("FunctionDatas"))
		return "functionDatas";

	return "";
}

TTSymbolPtr convertAttributeToJamoma(TTSymbolPtr attribute)
{
	if(attribute == TT("input"))
		return TT("Input");

	if(attribute == TT("output"))
		return TT("Output");

	if(attribute == TT("inputMin"))
		return TT("InputMin");

	if(attribute == TT("inputMax"))
		return TT("InputMax");

	if(attribute == TT("outputMin"))
		return TT("OutputMin");

	if(attribute == TT("outputMax"))
		return TT("OutputMax");

	if(attribute == TT("function"))
		return TT("Function");

	if(attribute == TT("functionDatas"))
		return TT("FunctionDatas");

	return kTTSymEmpty;
}
