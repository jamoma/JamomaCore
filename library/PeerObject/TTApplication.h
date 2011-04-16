/* 
 * TTObject to handle application data structure
 * like a TTNodeDirectory and a hash tables of names
 *
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_APPLICATION_H__
#define __TT_APPLICATION_H__

#include "TTModular.h"
#include "TTPluginHandler.h"

/** TTApplication ... TODO : an explanation
 
 
 */

class TTApplicationManager;
typedef TTApplicationManager* TTApplicationManagerPtr;

class TTPluginHandler;
typedef TTPluginHandler* TTPluginHandlerPtr;


// Macro to have a direct acces to a directory
#define	getDirectoryFrom(anAddress) TTApplicationManagerGetApplication(anAddress)->mDirectory

// Macro to convert a TTValue with tt names inside into a value with local application names inside.
#define	ToAppName(ttNames) \
		TTApplicationManagerGetApplication(kTTSym_localApplicationName)->sendMessage(kTTSym_ConvertToAppName, ttNames); \

// Macro to convert a TTValue with local application names inside into a value with tt names inside.
#define	ToTTName(appNames) \
		TTApplicationManagerGetApplication(kTTSym_localApplicationName)->sendMessage(kTTSym_ConvertToTTName, appNames); \

class TTMODULAR_EXPORT TTApplication : public TTDataObject
{
	TTCLASS_SETUP(TTApplication)
	
public:
	
	TTNodeDirectoryPtr			mDirectory;			///< ATTRIBUTE : the namespace directory of the application
	
private:

	TTSymbolPtr					mName;				///< ATTRIBUTE : the name of the application
	TTSymbolPtr					mVersion;			///< ATTRIBUTE : the version of the application
	
	TTHashPtr					mPluginParameters;	///< ATTRIBUTE : hash table containing hash table of parameters 
													///< for each plugin used for communication with this application
													///< <TTSymbolPtr pluginName, <TTSymbolPtr parameterName, TTValue value>>
	
	TTValue						mPluginNames;		///< ATTRIBUTE : names of all plugins used by the application
	
	TTHashPtr					mAppToTT;			///< Hash table to convert Application names into TT names
	TTValue						mAllAppNames;		///< All Application names
	TTHashPtr					mTTToApp;			///< Hash table to convert TT names into Application names
	TTValue						mAllTTNames;		///< All TT names
	
	
	/** Set the plugin parameters hash table */
	TTErr setPluginParameters(const TTValue& value);
	
	/** Get all AppNames */
	TTErr getAllAppNames(TTValue& value);
	
	/** Get all AppNames */
	TTErr getAllTTNames(TTValue& value);
	
	/** Convert TTName into AppName */
	TTErr ConvertToAppName(TTValue& value);
	
	/** Convert AppName into TTName */
	TTErr ConvertToTTName(TTValue& value);
	
	/** needed to be handled by a TTXmlHandler 
		read/write plugin parameters */
	TTErr WriteAsXml(const TTValue& value);
	TTErr ReadFromXml(const TTValue& value);

};

typedef TTApplication* TTApplicationPtr;

#endif // __TT_APPLICATION_H__
