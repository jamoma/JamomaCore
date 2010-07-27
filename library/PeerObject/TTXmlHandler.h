/* 
 * TTObject to handle xml file reading and writing
 * to be able to store / recall state of an object 
 * into/from xml files.
 *
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_XML_HANDLER_H__
#define __TT_XML_HANDLER_H__

#include "TTModular.h"
#include <libxml/encoding.h>
#include <libxml/xmlwriter.h>
#include <libxml/xmlreader.h>

#define TTMODULAR_XML_ENCODING "ISO-8859-1"

/** Write / Read mecanism
 
	writeAs<Format> / readFrom<Format> methods are not directly called using the classic message system.
	We should prefer use one of the exported TT<Format>Reader / TT<Format>Writer method which take in 
	argument :
		- the TTObject you want it reads / writes a file 
		or
	- the data structure to pass in order to read / write depending on the selected <Format>
 
	This allow us to use the same method to start reading / writing and even to ask to other objects to
	read / write recursively on the same data stucture.
 
 
	Exemple :
 
	If you wan't to read in Xml format you call the exported TTXmlReader(myTopObject, aValueContainingFullPathToFile); .
	Then this method (as a friend of your TTTopObject class) will automatically create an XmlReader data structure and
	call readFromXml(aValueContainingAnXmlReader) on your myTopObject.
	
	Because your TTTopObject class used TTLowerObject to describe himself (and have to extract their xml description 
	from the xml file to set them up) the readFromXml method calls recursively TTXmlReader(aLowerObject, aValueContainingAnXmlReader); 
 
 */

class TTMODULAR_EXPORT TTXmlHandler : public TTObject
{
	TTCLASS_SETUP(TTXmlHandler)
	
public:
	
	TTObjectPtr			mObject;						///< the last handled object
	TTSymbolPtr			mFilePath;						///< the path to the last writen/read file
	
	xmlTextWriterPtr	mWriter;
	xmlTextReaderPtr	mReader;
	
	TTSymbolPtr			mXmlNodeName;					///< the Node being read by the Reader
	

	/** TTXmlWriter could takes absolute file path or xmlTextWritterPtr as second arguments
		In the path case, TTXmlWriter starts xml file writting and then calls the writeAsXml 
		method of the given TTObject (first argument)
		In the second case, it directly calls the writeAsXml method */
	TTErr Write(const TTValue& args);
	TTErr WriteAgain();
	
	
	/** TTXmlReader could takes absolute file path or xmlTextReaderPtr as second argument
		In the path case, TTXmlReader starts xml file reading and then calls the readFromXml 
		method of the given TTObject (first argument)
		In the second case, it directly calls the readFromXml method */
	TTErr Read(const TTValue& args);
	TTErr ReadAgain();
	
	/** TTXmlReader make a TTValue from an xmlChar* using the fromString method (see in TTValue.h) */
	TTErr fromXmlChar(const xmlChar* xCh, TTValue& v);
	
private :
	
	TTBoolean				mIsWriting;				///< a flag to know if the preset manager is writing a file
	TTBoolean				mIsReading;				///< a flag to know if the preset manager is reading a file
	
};

typedef TTXmlHandler* TTXmlHandlerPtr;


#endif // __TT_XML_HANDLER_H__
