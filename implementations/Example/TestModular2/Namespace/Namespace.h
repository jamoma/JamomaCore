/* 
 * Namespace.h v0.1
 * interface for creating and managing namespaces
 *
 * Based on TTModular & TTFoundation libraries developped by Theo de la Hogue & Tim Place
 * and DeviceManager developped by Laurent Garnier & Theo de la Hogue, copyright LaBRI - Blue Yeti - GMEA
 *
 * Author: Laurent Garnier, 2010
 *
 * Copyright Galamus Software. All rights reserved.
 *
 */

#ifndef NAMESPACE_H
#define NAMESPACE_H

#ifdef NAMESPACE_EXPORTS
	#define NAMESPACE_API __declspec(dllexport)
#else
#ifdef NAMESPACE_STATIC
	#define NAMESPACE_API
#else
	#define NAMESPACE_API __declspec(dllimport)
#endif
#endif


#include "NSPIncludes.h"
#include "xmlParser.h"

/** Symbols that can be used to access parameter attributes, types, and something else */

//#define NSPValue					//< A value constructor that can take any type as parameter
//#define NSPSymbol					//< A symbol that represents an attribute symbol type
//#define NSPLog					//< Could be used to print a message on console

/** NSP Value type symbols			:	type names in the xml */
									
//#define NSPType_ARRAY				//< array
//#define NSPType_BOOL				//< boolean
//#define NSPType_INT				//< integer
//#define NSPType_FLOAT				//< decimal
//#define NSPType_STRING			//< string
//#define NSPType_GENERIC			//< generic

/** NSP Parameter attribute symbols :	attribute names in the xml*/

//#define NSPAttr_VAL				//< Value
//#define NSPAttr_DEFAULT			//< ValueDefault
//#define NSPAttr_TYPE				//< Type			(could be array, boolean, integer, decimal, string, generic)
//#define NSPAttr_RANGE				//< RangeBounds		(list of two values, if type="decimal" or type="integer")
//#define NSPAttr_RANGECLIPMODE		//< RangeClipmode	(could be both, high, low, none, wrap, fold)
//#define NSPAttr_STEP				//< ValueStepsize	(a value that represents incrementation step)
//#define NSPAttr_PRIORITY			//< Priority		(an integer)
//#define NSPAttr_DESCRIPTION		//< Description		(a string)
//#define NSPAttr_REPETITION		//< RepetitionsAllow("true" or "false")
//#define NSPAttr_READONLY			//< Readonly		("true" or "false")

/** NSP Task symbols */

//#define NSPTask_CREATE 
//#define NSPTask_DESTROY

/* Returned Error Codes */
enum NAMESPACE_API NSPStatus { NSP_NO_ERROR, NSP_INIT_ERROR, NSP_RELEASE_ERROR, NSP_INVALID_APPNAME, NSP_INVALID_ADDRESS, NSP_INVALID_ATTRIBUTE, NSP_FILE_NOTFOUND, NSP_XMLPARSING_ERROR, NSP_XMLFORMAT_ERROR };


class NAMESPACE_API Namespace {
public:
	/** Constructor */
	Namespace(std::string appName, std::string appVersion, std::string creatorName);

	/** Destructor */
	~Namespace(void);

	/** Initialise the global namespace directory */
	NSPStatus namespaceInit(bool useDeviceManager = false);

	/** Free the global namespace directory */
	NSPStatus namespaceFree(void);

	/** Create a parameter object and register it in the namespace according to address arg 
		Callback methods can be passed to process the value and/or address of the parameter value attribute when change */
	NSPStatus namespaceParameterCreate(std::string address, void* object, void (*returnValueCallback)	 (void*, NSPValue&) = NULL
																		, void (*returnAddressCallback)  (void*, NSPValue&) = NULL);
	
	/** Set the value of a parameter attribute (usefull to init it) */
	NSPStatus namespaceAttributeSet(std::string address, NSPSymbol attribute, NSPValue value);

	/** Get the value of a parameter attribute */
	NSPStatus namespaceAttributeGet(std::string address, NSPSymbol attribute, NSPValue& value);

	/** Create an oserver object on a parameter attribute which could execute callback methods when attribute value is updated */
	NSPStatus namespaceObserverCreate(std::string address, NSPSymbol attribute, void* object, void (*returnValueCallback)	 (void*, NSPValue&)
																						    , void (*returnAddressCallback)  (void*, NSPValue&));

	/** Send a value to update a parameter attribute 
		Each registrated observer on this parameter attribute will be notified by this update */
	NSPStatus namespaceValueSend(std::string address, NSPSymbol attribute, NSPValue value);
	
	/** Display the namespace keys on console (usefull to debug) */
	NSPStatus namespaceDisplay(void);

	/** Save the namespace in a xml file */
	NSPStatus namespaceSaveToXml(std::string filepath);

	/** Load and build a namespace tree by parsing a xml file 
		Note that namespace observers are not created */
	NSPStatus namespaceLoadFromXml(std::string filepath);

	void namespaceMapperCreate(void (*returnValueCallback)	(void*, NSPValue&));

	/** Methods to get and set the private variables */
	void setAppName(const std::string _appName);
	void setAppVersion(const std::string _appVersion);
	void setCreatorName(const std::string _creatorName);
	std::string getAppName() const;
	std::string getAppVersion() const;
	std::string getCreatorName() const;

	
private:
	std::string m_appName;
	std::string m_appVersion;
	std::string m_creatorName;

	void parseXmlParameters(XMLNode xmlNode, std::string address);
};

#endif /*NAMESPACE_H*/