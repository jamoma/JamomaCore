// Le bloc ifdef suivant est la façon standard de créer des macros qui facilitent l'exportation 
// à partir d'une DLL. Tous les fichiers contenus dans cette DLL sont compilés avec le symbole NAMESPACE_EXPORTS
// défini sur la ligne de commande. Ce symbole ne doit pas être défini dans les projets
// qui utilisent cette DLL. De cette manière, les autres projets dont les fichiers sources comprennent ce fichier considèrent les fonctions 
// NAMESPACE_API comme étant importées à partir d'une DLL, tandis que cette DLL considère les symboles
// définis avec cette macro comme étant exportés.
#ifdef NAMESPACE_STATIC
#define NAMESPACE_API
#endif

#ifdef NAMESPACE_EXPORTS
	#define NAMESPACE_API __declspec(dllexport)
#else
#ifdef NAMESPACE_STATIC
	#define NAMESPACE_API
#else
	#define NAMESPACE_API __declspec(dllimport)
#endif
#endif


#include "Includes.h"
#include "xmlParser.h"

/** Symbols that can be used to access parameter attributes, types, and something else */

//#define NSPValue				//< A value constructor that can take any type as parameter
//#define NSPSymbol				//< A symbol that represents an attribute symbol type
//
//#define NSPType_ARRAY			//< NSP Value type symbols
//#define NSPType_BOOL
//#define NSPType_INT
//#define NSPType_FLOAT
//#define NSPType_STRING
//#define NSPType_GENERIC
//
//#define NSPAttr_VAL			//< NSP Parameter attribute symbols
//#define NSPAttr_DEFAULT
//#define NSPAttr_TYPE
//#define NSPAttr_RANGE
//#define NSPAttr_STEP
//#define NSPAttr_PRIORITY
//#define NSPAttr_DESCRIPTION
//
//#define NSPTask_CREATE		//< NSP Task symbols
//#define NSPTask_DESTROY

/* Returned Error Codes */
enum NAMESPACE_API NSPStatus { NSP_NO_ERROR, NSP_INIT_ERROR, NSP_RELEASE_ERROR, NSP_INVALID_APPNAME, NSP_INVALID_ADDRESS, NSP_INVALID_ATTRIBUTE, NSP_FILE_NOTFOUND, NSP_XMLPARSING_ERROR, NSP_XMLFORMAT_ERROR };


// Cette classe est exportée de Namespace.dll
class NAMESPACE_API Namespace {
public:
	/** Constructor */
	Namespace(std::string appName, std::string appVersion, std::string creatorName);

	/** Destructor */
	~Namespace(void);

	/** Initialise the global namespace directory */
	NSPStatus namespaceInit(void);

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

	
private:
	std::string m_appName;
	std::string m_appVersion;
	std::string m_creatorName;

	void parseXmlParameters(XMLNode xmlNode);
};

