/* 
 * TTObject to handle text file reading and writing
 * to be able to store / recall state of an object 
 * into/from text files.
 *
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_TEXT_HANDLER_H__
#define __TT_TEXT_HANDLER_H__

#include "TTModular.h"
#include <stdio.h>
#include <iostream>
#include <fstream>
using namespace std;

/** Write / Read mecanism
 
	writeAs<Format> / readFrom<Format> methods are not directly called using the classic message system.
	We should prefer use one of the exported TT<Format>Reader / TT<Format>Writer method which have :
		- an Object attribute : the TTObject you want it reads / writes a file
		or
		- the data structure to pass in order to read / write depending on the selected <Format>
 
	This allow us to use the same method to start reading / writing and even to ask to other objects to
	read / write recursively on the same data stucture.
 
 
	Exemple :
 
	If you want to read in Xml format you set the Object attribute as myTopObject then you call the Read message with 
	aValueContainingFullPathToaFile. Then this method (as a friend of your TTTopObject class) will automatically create 
	an XmlReader data structure and call ReadFromXml(aValueContainingAnXmlReader) on your myTopObject.
	
	Because your TTTopObject class used TTLowerObject to describe himself (and have to extract their xml description 
	from the xml file to set them up) the ReadFromXml method sets recursively the Object Attribute with aLowerObject 
	and then calls the Read message with an empty value : this would calls the ReadFromXml(aValueContainingAnXmlReader)
	on your TTLowerObject.
 
 */

class TTMODULAR_EXPORT TTTextHandler : public TTObject
{
	TTCLASS_SETUP(TTTextHandler)
	
public:	// use public for recursive access
	
	TTObjectPtr			mObject;						///< the last handled object
	TTSymbolPtr			mFilePath;						///< the path to the last writen/read file

	ofstream			*mWriter;
	ifstream			*mReader;

	/** TTTextWriter could takes absolute file path or nothing.
		In the path case, TTXmlWriter starts xml file writting and then calls the WriteAsXml 
		method of mObject attribute
		In the second case, it directly calls the WriteAsText method */
	TTErr Write(const TTValue& args);
	TTErr WriteAgain();
	
	/** TTTextReader could takes absolute file path or nothing.
		In the path case, TTXmlReader starts xml file reading and then calls the ReadFromXml 
		method of mObject attribute
		In the second case, it directly calls the ReadFromText method */
	TTErr Read(const TTValue& args);
	TTErr ReadAgain();
	
private :
	
	TTBoolean				mIsWriting;				///< a flag to know if it is writing a file
	TTBoolean				mIsReading;				///< a flag to know if it is reading a file
	
};

typedef TTTextHandler* TTTextHandlerPtr;


#endif // __TT_TEXT_HANDLER_H__
