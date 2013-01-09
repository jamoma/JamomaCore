/* 
 * A Mapper Manager Object
 * Copyright � 2010, Laurent Garnier
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD
 */

#include "TTMapperManager.h"
#include <libxml/encoding.h>
#include <libxml/xmlwriter.h>
#include <libxml/xmlreader.h>

#define thisTTClass			TTMapperManager
#define thisTTClassName		"MapperManager"
#define thisTTClassTags		"mapper, manager"


TT_MODULAR_CONSTRUCTOR,
mAddress(kTTAdrsEmpty),
mMapperList(NULL)
{
	TTValue v;

	addAttributeWithSetter(Address, kTypeSymbol);

	addMessage(New);

	// needed to be handled by a TTXmlHandler
	addMessageWithArguments(WriteAsXml);
	addMessageWithArguments(ReadFromXml);

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
		mMapperList->current()[0] (TTPtr*)&oldMapper);
		TTObjectRelease(TTObjectHandle(&oldMapper));
	}

	delete mMapperList;
	mMapperList = NULL;
	mMapperList = new TTList();

	return kTTErrNone;
}

TTErr TTMapperManager::WriteAsXml(const TTValue& inputValue, TTValue& outputValue)
{
	TTXmlHandlerPtr		aXmlHandler;
	TTMapperPtr			aMapper;
	TTValue				v, attributesList;
	TTSymbol			attributeName;
	TTString			s;
	
	aXmlHandler = TTXmlHandlerPtr((TTPtr)inputValue[0]);
	
	// Browse the mapper list
	for (mMapperList->begin(); mMapperList->end(); mMapperList->next()) {
		
		xmlTextWriterStartElement((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "mapper");

		mMapperList->current()[0] (TTPtr*)&aMapper);

		// Get mapper attributes
		aMapper->getAttributeNames(attributesList);
		for (int i = 0; i < attributesList.size(); i++) {

			attributesList.get(i, attributeName);

			// Get string value and fill xml except for FunctionLibrary & FunctionSamples attributes (don't need in xml)
			if (attributeName != TTSymbol("functionLibrary") && attributeName != TTSymbol("functionSamples") && attributeName != TTSymbol("functionParameters")) {

				aMapper->getAttributeValue(attributeName, v);
				v.toString();
				v[0] s);

				xmlTextWriterWriteFormatAttribute((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST attributeName.c_str(), "%s", BAD_CAST s.c_str());
				v.clear();
				s.clear();
			}
		}
		
		v.clear();
		v = TTValue(TTPtr(aMapper));
		aXmlHandler->setAttributeValue(kTTSym_object, v);
		aXmlHandler->sendMessage(TTSymbol("Write"));
		
		// End a mapper
		xmlTextWriterEndElement((xmlTextWriterPtr)aXmlHandler->mWriter);
		
	}

	return kTTErrNone;
}

TTErr TTMapperManager::ReadFromXml(const TTValue& inputValue, TTValue& outputValue)
{
	TTXmlHandlerPtr	aXmlHandler = NULL;	
	TTSymbol		attributeName, mute;
	TTMapperPtr		newMapper;
	TTValue			v, args;

	aXmlHandler = TTXmlHandlerPtr((TTPtr)inputValue[0]);
	if (!aXmlHandler)
		return kTTErrGeneric;

	// Switch on the name of the XML node

	// Starts reading
	if (aXmlHandler->mXmlNodeName == TTSymbol("start")) {
		New();
		return kTTErrNone;
	}

	// Ends reading
	if (aXmlHandler->mXmlNodeName == TTSymbol("end")) {

		return kTTErrNone;
	}

	// Comment node
	if (aXmlHandler->mXmlNodeName == TTSymbol("#comment"))
		return kTTErrNone;

	// Mapper node
	if (aXmlHandler->mXmlNodeName == TTSymbol("mapper")) {
		mute = TTSymbol("false");

		// get mute state
		if (xmlTextReaderMoveToAttribute((xmlTextReaderPtr)aXmlHandler->mReader, BAD_CAST "mute") == 1) {
			aXmlHandler->fromXmlChar(xmlTextReaderValue((xmlTextReaderPtr)aXmlHandler->mReader), v);
			if (v[0].type() == kTypeSymbol)
				v[0] mute);
		}
		
		if (mute == TTSymbol("false")) {

			// Create a new mapper
			newMapper = NULL;
			TTObjectInstantiate(kTTSym_Mapper, TTObjectHandle(&newMapper), args);

			// Browse attributes in xml
			while (xmlTextReaderMoveToNextAttribute((xmlTextReaderPtr)aXmlHandler->mReader) == 1) {

				// Get attribute name
				aXmlHandler->fromXmlChar(xmlTextReaderName((xmlTextReaderPtr)aXmlHandler->mReader), v);
				if (v[0].type() == kTypeSymbol) {
					v[0] attributeName);
					v.clear();

					// Get attribute value
					aXmlHandler->fromXmlChar(xmlTextReaderValue((xmlTextReaderPtr)aXmlHandler->mReader), v);
					
					// fill the current mapper
					newMapper->setAttributeValue(attributeName, v);
				}
			}

			// Add Mapper in the list
			mMapperList->append((TTPtr)newMapper);
		}
	}

	return kTTErrNone;
}

TTErr TTMapperManager::setAddress(const TTValue& value)
{	
	New();
	mAddress = value[0];
	return kTTErrNone;
}
