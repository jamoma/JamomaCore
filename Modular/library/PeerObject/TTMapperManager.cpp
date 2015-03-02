/** @file
 *
 * @ingroup modularLibrary
 *
 * @brief A MapperManager Object
 *
 * @details
 *
 * @authors Laurent Garnier
 *
 * @copyright © 2010, Laurent Garnier @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTMapperManager.h"
#include <libxml/encoding.h>
#include <libxml/xmlwriter.h>
#include <libxml/xmlreader.h>

#define thisTTClass			TTMapperManager
#define thisTTClassName		"MapperManager"
#define thisTTClassTags		"mapper, manager"


TT_MODULAR_CONSTRUCTOR,
mAddress(kTTAdrsEmpty)
{
	TTValue v;

	addAttributeWithSetter(Address, kTypeSymbol);

	addMessage(New);

	// needed to be handled by a TTXmlHandler
	addMessageWithArguments(WriteAsXml);
	addMessageWithArguments(ReadFromXml);
}

TTMapperManager::~TTMapperManager()
{
	New();
}

TTErr TTMapperManager::New()
{
	mMapperList.clear();
	return kTTErrNone;
}

TTErr TTMapperManager::WriteAsXml(const TTValue& inputValue, TTValue& outputValue)
{
    TTObject o = inputValue[0];
	TTXmlHandlerPtr aXmlHandler = (TTXmlHandlerPtr)o.instance();
    if (!aXmlHandler)
		return kTTErrGeneric;
    
	TTObject	aMapper;
	TTValue		v, attributes;
	TTSymbol	attributeName;
    TTString    s;
	
	// Browse the mapper list
	for (mMapperList.begin(); mMapperList.end(); mMapperList.next()) {
		
		xmlTextWriterStartElement((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "mapper");

		aMapper = mMapperList.current()[0];

		// Get mapper attributes
		aMapper.attributes(attributes);
		for (TTInt32 i = 0; i < (TTInt32) attributes.size(); i++) {

			attributeName = attributes[i];

			// Get string value and fill xml except for FunctionLibrary & FunctionSamples attributes (don't need in xml)
			if (attributeName != TTSymbol("functionLibrary") && attributeName != TTSymbol("functionSamples") && attributeName != TTSymbol("functionParameters")) {

				aMapper.get(attributeName, v);
                v.toString();
                s = TTString(v[0]);
				xmlTextWriterWriteFormatAttribute((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST attributeName.c_str(), "%s", BAD_CAST s.c_str());
			}
		}
		
		aXmlHandler->setAttributeValue(kTTSym_object, aMapper);
		aXmlHandler->sendMessage(TTSymbol("Write"));
		
		// End a mapper
		xmlTextWriterEndElement((xmlTextWriterPtr)aXmlHandler->mWriter);
	}

	return kTTErrNone;
}

TTErr TTMapperManager::ReadFromXml(const TTValue& inputValue, TTValue& outputValue)
{
    TTObject o = inputValue[0];
	TTXmlHandlerPtr aXmlHandler = (TTXmlHandlerPtr)o.instance();
    if (!aXmlHandler)
		return kTTErrGeneric;
    
	TTSymbol	attributeName, mute;
	TTObject	newMapper;
	TTValue		v;

	// Switch on the name of the XML node

	// Starts reading
	if (aXmlHandler->mXmlNodeName == TTSymbol("start")) {
		New();
		return kTTErrNone;
	}

	// Ends reading
	if (aXmlHandler->mXmlNodeName == TTSymbol("end"))
		return kTTErrNone;


	// Comment node
	if (aXmlHandler->mXmlNodeName == TTSymbol("#comment"))
		return kTTErrNone;

	// Mapper node
	if (aXmlHandler->mXmlNodeName == TTSymbol("mapper")) {
		mute = TTSymbol("false");

		// get mute state
		if (xmlTextReaderMoveToAttribute((xmlTextReaderPtr)aXmlHandler->mReader, BAD_CAST "mute") == 1) {
			aXmlHandler->fromXmlChar(xmlTextReaderValue((xmlTextReaderPtr)aXmlHandler->mReader), v);
            
            if (v.size() == 1)
                if (v[0].type() == kTypeSymbol)
                    mute = v[0];
		}
		
		if (mute == TTSymbol("false")) {

			// Create a new mapper
			newMapper = TTObject(kTTSym_Mapper);

			// Browse attributes in xml
			while (xmlTextReaderMoveToNextAttribute((xmlTextReaderPtr)aXmlHandler->mReader) == 1) {

				// Get attribute name
				aXmlHandler->fromXmlChar(xmlTextReaderName((xmlTextReaderPtr)aXmlHandler->mReader), v);
                
                if (v.size() == 1) {
                    if (v[0].type() == kTypeSymbol) {
                        attributeName = v[0];
                        v.clear();
                        
                        // Get attribute value
                        aXmlHandler->fromXmlChar(xmlTextReaderValue((xmlTextReaderPtr)aXmlHandler->mReader), v);
                        
                        // fill the current mapper
                        newMapper.set(attributeName, v);
                    }
                }
			}

			// Add Mapper in the list
			mMapperList.append(newMapper);
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
