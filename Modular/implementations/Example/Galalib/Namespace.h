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

#ifdef NSP_PLATFORM_WIN
	#ifdef NAMESPACE_EXPORTS
		#define NAMESPACE_API __declspec(dllexport)
	#else
	#ifdef NAMESPACE_STATIC
		#define NAMESPACE_API
	#else
		#define NAMESPACE_API __declspec(dllimport)
	#endif
	#endif
#else //PLATFORM MAC, LINUX
	#ifdef NAMESPACE_EXPORTS
		#define NAMESPACE_API __attribute__((visibility("default")))
	#else
		#define NAMESPACE_API
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

//#define NSPAttr_VAL				//< value
//#define NSPAttr_DEFAULT			//< valueDefault
//#define NSPAttr_TYPE				//< type			(could be array, boolean, integer, decimal, string, generic)
//#define NSPAttr_RANGE				//< rangeBounds		(list of two values, if type="decimal" or type="integer")
//#define NSPAttr_RANGECLIPMODE		//< rangeClipmode	(could be both, high, low, none, wrap, fold)
//#define NSPAttr_STEP				//< valueStepsize	(a value that represents incrementation step)
//#define NSPAttr_PRIORITY			//< priority		(an integer)
//#define NSPAttr_DESCRIPTION		//< description		(a string)
//#define NSPAttr_REPETITION		//< repetitionsFilter("true" or "false")
//#define NSPAttr_READONLY			//< readonly		("true" or "false")
//#define NSPAttr_DYNAMIC			//< dynamicInstances("true" or "false")
//#define NSPAttr_INSTANCEBOUNDS    //< instanceBounds	(list of two int values, instance bounds that can be dynamically created)

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

	/** Create a parameter object and register it in the namespace directory
		address			:	osc like address of the parameter data in the namespace directory
							application name is automatically added at the beginning of the address : /"appName"
		instanceNumber	:	create several instances of this parameter
							instanceNumber = 3 will create : "address" , "address.1" , "address.2"
		object			:	pointer to an object that created the parameter
		callbacks		:	callback methods can be passed to process the value and/or address of the 
							parameter value attribute when change */
	NSPStatus namespaceParameterCreate(std::string address, int instanceNumber = 1,  void* object = NULL, void (*returnValueCallback)	(void*, NSPValue&) = NULL
																										, void (*returnAddressCallback)(void*, NSPValue&) = NULL);
	 
	/** Set the value of a parameter attribute (usefull to init it) 
		address			:	osc like address of the parameter data in the namespace directory
							application name is automatically added at the beginning of the address : /"appName" 
		instance		:	number of the instance you want to set the value
		attribute		:	symbol representing the attribute name to set (attribute symbols are defined on top)
		value			:	the value to set */
	NSPStatus namespaceAttributeSet(std::string address, NSPSymbol attribute, NSPValue value, int instance = 0);

	/** Get the value of a parameter attribute 
		address			:	osc like address of the parameter data in the namespace directory
							application name is automatically added at the beginning of the address : /"appName" 
		instance		:	number of the instance you want to get the value
		attribute		:	symbol representing the attribute name to set (attribute symbols are defined on top)
		value			:	the value that will be got */
	NSPStatus namespaceAttributeGet(std::string address, NSPSymbol attribute, NSPValue& value, int instance = 0);

	/** Create an oserver object on a parameter attribute which could execute callback methods when attribute value is updated 
		address			:	osc like address of the parameter data in the namespace directory
							application name is automatically added at the beginning of the address : /"appName"
		attribute		:	symbol representing the attribute name to set (attribute symbols are defined on top)
		instance		:	number of the instance you want to observe the attribute value
		object			:	pointer to an object that will process the parameter attribute value
		callbacks		:	callback methods that will process the value and/or address of the 
							parameter attribute value when change */
	NSPStatus namespaceObserverCreate(std::string address, NSPSymbol attribute, void* object, void (*returnValueCallback)		(void*, NSPValue&)
																							, void (*returnAddressCallback)		(void*, NSPValue&)
																							, int instance = 0);

	/** Send a value to update a parameter attribute 
		Each registrated observer on this parameter attribute will be notified by this update 
		address			:	osc like address of the parameter data in the namespace directory
							application name is automatically added at the beginning of the address : /"appName" 
		instance		:	number of the instance you want to set the value
		attribute		:	symbol representing the attribute name to set (attribute symbols are defined on top)
		value			:	the value that will be sent */
	NSPStatus namespaceValueSend(std::string address, NSPSymbol attribute, NSPValue value, int instance = 0);
	
	/** Display namespace addresses on console (usefull to debug) */
	NSPStatus namespaceDisplay(void);

	/** Save the namespace in a xml file */
	NSPStatus namespaceSaveToXml(std::string filepath);

	/** Load and build a namespace tree by parsing a xml file 
		Note that namespace observers are not created */
	NSPStatus namespaceLoadFromXml(std::string filepath);

	/** Load and build a mapping on the namespace tree by parsing a xml file */
	NSPStatus namespaceMappingLoadFromXml(std::string filepath);
	
	/** Load and build preset manager on namespace tree parameters by parsing a xml file */
	NSPStatus namespacePresetsLoadFromXml(std::string filepath);
	
	/** Call a specific preset listed by the preset manager using it name */
	NSPStatus namespacePresetCall(std::string name);

	/** Call a specific preset listed by the preset manager using it number */
	NSPStatus namespacePresetCall(int number);
	
	/** Get the number of instance of a parameter */
	int namespaceParameterGetInstanceNumber(std::string address);
	
	/** Methods to get and set the private variables */
	void setAppName		(const std::string _appName);
	void setAppVersion	(const std::string _appVersion);
	void setCreatorName	(const std::string _creatorName);
	std::string getAppName()		const;
	std::string getAppVersion()		const;
	std::string getCreatorName()	const;

	
private:
	std::string m_appName;
	std::string m_appVersion;
	std::string m_creatorName;

	void parseXmlParameters(XMLNode xmlNode, std::string address);
	
	TTPresetManagerPtr m_presetManager;
	TTDeviceManagerPtr m_deMan;
	
};

#endif /*NAMESPACE_H*/