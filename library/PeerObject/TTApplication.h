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

// Macro to have a direct acces to the Directory 
// This maro have to be used on a TTObject with a mApplication member.
#define	getDirectoryFrom(aTTObject) TTApplicationGetDirectory((TTObjectPtr)aTTObject->mApplication)

// Macro to convert a TTSymbolPtr ttName into an application name.
// This maro have tobe used inside a TTObject with a mApplication member.
#define	ToAppName(ttName) \
		mApplication->sendMessage(kTTSym_AppName, TTValue(ttName)); \

// Macro to convert a TTSymbolPtr appName into a TT name.
// This maro have tobe used inside a TTObject with a mApplication member.
#define	ToTTName(appName) \
		mApplication->sendMessage(kTTSym_TTName, TTValue(appName)); \

class TTMODULAR_EXPORT TTApplication : public TTObject
{
	TTCLASS_SETUP(TTApplication)
	
private:

	TTSymbolPtr					mName;				// ATTRIBUTE : the name of the application
	TTSymbolPtr					mVersion;			// ATTRIBUTE : the version of the application
	TTNodeDirectoryPtr			mDirectory;			// ATTRIBUTE : the namespace directory of the application
	
	TTHashPtr					mAppToTT;			// Hash table to convert Application names into TT names
	TTHashPtr					mTTToApp;			// Hash table to convert TT names into Application names
	
public:
	
	/** Convert TTName into AppName */
	TTErr AppName(TTValue& value);
	
	/** Convert AppName into TTName */
	TTErr TTName(TTValue& value);
	
	friend TTNodeDirectoryPtr TTMODULAR_EXPORT TTApplicationGetDirectory(TTObjectPtr anApplication);
	
};

/**	To have a direct acces on the directory
 @param	baton						..
 @param	data						..
 @return							an error code */
TTNodeDirectoryPtr	TTMODULAR_EXPORT TTApplicationGetDirectory(TTObjectPtr anApplication);

#endif // __TT_APPLICATION_H__
