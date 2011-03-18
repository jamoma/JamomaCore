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

/** TTApplication ... TODO : an explanation
 
 
 */

// Macro to convert a TTValue with tt names inside into a value with application names inside.
// This maro have tobe used inside a TTObject with a mApplication member.
#define	ToAppName(ttNames) \
		mApplication->sendMessage(kTTSym_ConvertToAppName, ttNames); \

// Macro to convert a TTValue with application names inside into a value with tt names inside.
// This maro have tobe used inside a TTObject with a mApplication member.
#define	ToTTName(appNames) \
		mApplication->sendMessage(kTTSym_ConvertToTTName, appNames); \

class TTMODULAR_EXPORT TTApplication : public TTDataObject
{
	TTCLASS_SETUP(TTApplication)
	
private:

	TTSymbolPtr					mName;				// ATTRIBUTE : the name of the application
	TTSymbolPtr					mVersion;			// ATTRIBUTE : the version of the application
	TTNodeDirectoryPtr			mDirectory;			// ATTRIBUTE : the namespace directory of the application
	
	TTSymbolPtr					mCommPlugin;		// ATTRIBUTE : kTTSymEmpty for local application
	TTHashPtr					mCommParameters;	// ATTRIBUTE : NULL for local application
	
	TTApplicationManager		mManager;
	
	TTHashPtr					mAppToTT;			// Hash table to convert Application names into TT names
	TTValue						mAllAppNames;		// All Application names
	TTHashPtr					mTTToApp;			// Hash table to convert TT names into Application names
	TTValue						mAllTTNames;		// All TT names
	
	/** Get all AppNames */
	TTErr getAllAppNames(TTValue& value);
	
	/** Get all AppNames */
	TTErr getAllTTNames(TTValue& value);
	
	/** Convert TTName into AppName */
	TTErr ConvertToAppName(TTValue& value);
	
	/** Convert AppName into TTName */
	TTErr ConvertToTTName(TTValue& value);
	
	/**  needed to be handled by a TTXmlHandler */
	TTErr WriteAsXml(const TTValue& value);
	TTErr ReadFromXml(const TTValue& value);
	
	friend TTNodeDirectoryPtr TTMODULAR_EXPORT TTApplicationGetDirectory(TTObjectPtr anApplication);
	
};

typedef TTApplication* TTApplicationPtr;

#endif // __TT_APPLICATION_H__
