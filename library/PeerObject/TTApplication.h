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
#include "Protocol.h"
#include "TTMirror.h"


/** TTApplication ... TODO : an explanation
 
 
 */
class TTApplication;
typedef TTApplication* TTApplicationPtr;

class TTApplicationManager;
typedef TTApplicationManager* TTApplicationManagerPtr;

class Protocol;
typedef Protocol* ProtocolPtr;

class TTMirror;
typedef TTMirror* TTMirrorPtr;

class TTXmlHandler;
typedef TTXmlHandler* TTXmlHandlerPtr;

// Macro to have a direct acces to a directory
#define	getDirectoryFrom(anAddress) TTApplicationGetDirectory(anAddress)

// Macro to have a direct acces to the local application directory
#define	getLocalDirectory TTApplicationGetDirectory(kTTAdrsRoot)

// Macro to convert a TTValue with tt names inside into a value with local application names inside.
#define	ToAppNames(ttNames, appNames) \
		getLocalApplication->sendMessage(kTTSym_ConvertToAppName, ttNames, appNames); \

// Macro to convert a TTValue with local application names inside into a value with tt names inside.
#define	ToTTNames(appNames, ttNames) \
		getLocalApplication->sendMessage(kTTSym_ConvertToTTName, appNames, ttNames); \

// Macro to convert a local application TTSymbol into a tt name
#define	ToAppName(ttName) \
		TTApplicationConvertTTNameToAppName(ttName) \

// Macro to convert a tt name TTSymbol into a local application name
#define	ToTTName(appName) \
		TTApplicationConvertAppNameToTTName(appName) \
		

class TTMODULAR_EXPORT TTApplication : public TTDataObject
{
	TTCLASS_SETUP(TTApplication)
	
public:
	TTBoolean					mDebug;				///< ATTRIBUTE : to enable the debug mode for the application (default : NO)

private:
	TTNodeDirectoryPtr			mDirectory;			///< ATTRIBUTE : the namespace directory of the application

	TTSymbol					mName;				///< ATTRIBUTE : the name of the application
	TTSymbol					mVersion;			///< ATTRIBUTE : the version of the application
	TTSymbol					mAuthor;			///< ATTRIBUTE : the author of the application
	
	TTBoolean					mActivity;			///< ATTRIBUTE : enable the activity mechanism
	TTValue						mActivityIn;		///< ATTRIBUTE : a local value to allow observation of incoming protocol messages
	TTValue						mActivityOut;		///< ATTRIBUTE : a local value to allow observation of outputing protocol messages
	
	TTHashPtr					mDirectoryListenersCache;	///< a hash table containing all <address, Listener> for quick access
	TTHashPtr					mAttributeListenersCache;	///< a hash table containing all <address:attribute, Listener> for quick access
	
	TTHashPtr					mAppToTT;			///< Hash table to convert Application names into TT names
	TTValue						mAllAppNames;		///< All Application names
	TTHashPtr					mTTToApp;			///< Hash table to convert TT names into Application names
	TTValue						mAllTTNames;		///< All TT names
	
	TTAddress					mTempAddress;		///< a temporary address to parse opml file
	
	/** Set name of the application (and his directory) */
	TTErr setName(const TTValue& value);
	
	/** */
	TTErr setActivity(const TTValue& value);
	
	/** */
	TTErr setActivityIn(const TTValue& value);
	
	/** */
	TTErr setActivityOut(const TTValue& value);

    /** Build the directory of an application (for distant application only) */
	TTErr DirectoryBuild();
    TTErr buildNode(ProtocolPtr aProtocol, TTAddress anAddress);
    
    /** Observe the directory of an application (for distant application only) */
	TTErr DirectoryObserve(const TTValue& inputValue, TTValue& outputValue);
    
	/** Add Directory observer */
	TTErr AddDirectoryListener(const TTValue& inputValue, TTValue& outputValue);
	
	/** Add Attribute observer */
	TTErr AddAttributeListener(const TTValue& inputValue, TTValue& outputValue);
	
	/** Remove Directory observer */
	TTErr RemoveDirectoryListener(const TTValue& inputValue, TTValue& outputValue);
	
	/** Remove Attribute observer */
	TTErr RemoveAttributeListener(const TTValue& inputValue, TTValue& outputValue);
	
	/** Update Directory (usually for distant application) */
	TTErr UpdateDirectory(const TTValue& inputValue, TTValue& outputValue);
	
	/** Update Attribute value (usually for Mirror objects) */
	TTErr UpdateAttribute(const TTValue& inputValue, TTValue& outputValue);
	

	/** Get all AppNames */
	TTErr getAllAppNames(TTValue& value);
	
	/** Get all AppNames */
	TTErr getAllTTNames(TTValue& value);
	
	/** Convert TTName into AppName */
	TTErr ConvertToAppName(const TTValue& inputValue, TTValue& outputValue);
	
	/** Convert AppName into TTName */
	TTErr ConvertToTTName(const TTValue& inputValue, TTValue& outputValue);
	
	/** needed to be handled by a TTXmlHandler 
		read/write the TTNodeDirectory */
	TTErr WriteAsXml(const TTValue& inputValue, TTValue& outputValue);
	TTErr ReadFromXml(const TTValue& inputValue, TTValue& outputValue);
    
    void writeNodeAsXml(TTXmlHandlerPtr aXmlHandler, TTNodePtr aNode);
    void readNodeFromXml(TTXmlHandlerPtr aXmlHandler);
	
	/** needed to be handled by a TTOpmlHandler 
		read a directory description */
	TTErr ReadFromOpml(const TTValue& inputValue, TTValue& outputValue);
    
    TTMirrorPtr appendMirror(ProtocolPtr aProtocol, TTAddress anAddress, TTSymbol objectName);
	
	friend TTNodeDirectoryPtr TTMODULAR_EXPORT TTApplicationGetDirectory(TTAddress anAddress);
	friend TTSymbol TTMODULAR_EXPORT TTApplicationConvertAppNameToTTName(TTSymbol anAppName);
	friend TTSymbol TTMODULAR_EXPORT TTApplicationConvertTTNameToAppName(TTSymbol aTTName);
};



/**	To get an application's directory with an address
 note : it uses the extern TTModularApplications variable
 @param						..
 @return					a TTNodeDirectoryPtr */
TTNodeDirectoryPtr TTMODULAR_EXPORT TTApplicationGetDirectory(TTAddress anAddress);

/**	To convert an application name into standard TT name
 @param						a TTsymbol
 @return					a TTsymbol */
TTSymbol TTMODULAR_EXPORT TTApplicationConvertAppNameToTTName(TTSymbol anAppName);

/**	To convert standard TT name into an application name
 @param						a TTsymbol
 @return					a TTsymbol */
TTSymbol TTMODULAR_EXPORT TTApplicationConvertTTNameToAppName(TTSymbol aTTName);

#endif // __TT_APPLICATION_H__


