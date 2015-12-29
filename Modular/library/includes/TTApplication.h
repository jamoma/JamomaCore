/** @file
 *
 * @ingroup modularLibrary
 *
 * @brief Handles application namespace using a #TTNodeDirectory and two tables to convert any TTName into a specific application name (AppName)
 *
 * @details some details about the class.

 * other details. @n@n

 * another details. @n@n

 *
 * @see TTApplicationManager, Protocol, TTMirror
 *
 * @copyright Copyright © 2010, Théo de la Hogue @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_APPLICATION_H__
#define __TT_APPLICATION_H__

#include "TTModularIncludes.h"
#include "TTProtocol.h"
#include "TTMirror.h"

class TTApplication;
typedef TTApplication* TTApplicationPtr;

class TTApplicationManager;
typedef TTApplicationManager* TTApplicationManagerPtr;

class TTProtocol;
typedef TTProtocol* TTProtocolPtr;

class TTMirror;
typedef TTMirror* TTMirrorPtr;

class TTXmlHandler;
typedef TTXmlHandler* TTXmlHandlerPtr;


/** Handles application data structure like a #TTNodeDirectory and a hash tables of names
 *
 * some details about the class.
 * other details.
 * another details.
 *
 * @see TTApplicationManager, Protocol
 */
class TTMODULAR_EXPORT TTApplication : public TTObjectBase
{
    TTCLASS_SETUP(TTApplication)

private:
    TTNodeDirectoryPtr			mDirectory;			///< ATTRIBUTE : the namespace directory of the application

    TTSymbol					mName;				///< ATTRIBUTE : the name of the application
    TTSymbol					mType;				///< ATTRIBUTE : the type of the application : local (default), mirror or proxy
    TTSymbol					mVersion;			///< ATTRIBUTE : the version of the application
    TTSymbol					mAuthor;			///< ATTRIBUTE : the author of the application

    TTBoolean					mMonitor;			///< ATTRIBUTE : enable the monitoring of any incoming or outputing messages
    TTBoolean					mDebug;				///< ATTRIBUTE : to enable the debug mode for the application (default : NO)
    TTBoolean					mLearn;             ///< ATTRIBUTE : enable the learning mechanism (see in UpdateAttribute)

    TTHash                      mCachedAttributes;  ///< ATTRIBUTE : all attribute names which need to be cached by a mirror application to reduce the number of network requests

    TTHash                      mDirectoryListenersCache;	///< hash table containing all <address, Listener> for quick access
    TTHash                      mAttributeListenersCache;	///< hash table containing all <address:attribute, Listener> for quick access

    TTHash                      mAppToTT;			///< hash table to convert Application names into TT names
    TTValue						mAllAppNames;		///< all Application names
    TTHash                      mTTToApp;			///< hash table to convert TT names into Application names
    TTValue						mAllTTNames;		///< all TT names

    TTAddress					mTempAddress;		///< a temporary address to parse xml file
    TTAddress					mFoldAddress;		///< a temporary address to duplicate address content
    TTUInt32                    mFolderSize;        ///< how many times the fold address have to be duplicated

#if 0
#pragma mark -
#pragma mark Attribute accesors
#endif

    /** Attribute accesor: set the name of the application
     @details set also the name of his #TTNodeDirectory
     @param  value     the new name
     @return #TTErr    always returns #kTTErrNone */
    TTErr setName(const TTValue& value);

    /** Attribute accesor: enable monitor
     @param  value
     @return #TTErr    always returns #kTTErrNone */
    TTErr setMonitor(const TTValue& value);

    /** Attribute accesor: get monitor in
     @param  value
     @return #TTErr    always returns #kTTErrNone */
    TTErr getMonitorIn(TTValue& value);

    /** Attribute accesor: set monitor in
     @param  value
     @return #TTErr    always returns #kTTErrNone */
    TTErr setMonitorIn(const TTValue& value);

    /** Attribute accesor: get monitor out
     @param  value
     @return #TTErr    always returns #kTTErrNone */
    TTErr getMonitorOut(TTValue& value);

    /** Attribute accesor: set monitor out
     @param  value
     @return #TTErr    always returns #kTTErrNone */
    TTErr setMonitorOut(const TTValue& value);

    /** Attribute accesor: get the cached attributes (for mirror application only)
     @param value      all cached attribute names
     @return #TTErr error code */
    TTErr getCachedAttributes(TTValue& value);

    /** Attribute accesor: set the attributes to cache (for mirror application only)
     @param value      all attribute names to cache
     @return #TTErr error code */
    TTErr setCachedAttributes(const TTValue& value);

    /** Convenient recursive method to cache or uncache an attribute of an object of a node and do the same under all its children
     @param aNode           a node to process
     @param attributeName   the name of the attribute
     @param cacheOrUncache  a boolean to cache (YES) or uncache (NO) the attribute
     @return #TTErr error code */
    TTErr cacheAttributeNode(TTNodePtr aNode, TTSymbol attributeName, TTBoolean cacheOrUncache);

#if 0
#pragma mark -
#pragma mark Directory management
#endif

    /** Init the application
     @return #TTErr    always returns #kTTErrNone */
    TTErr Init();
    TTErr initNode(TTNodePtr aNode);

    /** Clear the directory of an application (for distant application only)
     @return #TTErr    always returns #kTTErrNone */
    TTErr DirectoryClear();

    /** Build the directory of an application (for distant application only)
     @return #TTErr    always returns #kTTErrNone */
    TTErr DirectoryBuild();

    /** Convenient method to build the directory under an address using a protocol
     @return #TTErr error code
     @seealso DirectoryBuild */
    TTErr buildNode(TTProtocolPtr aProtocol, TTAddress anAddress);

    /** Observe the directory of an application (for distant application only)
     @param inputValue      #TTBoolean to enable or disable directory observation
     @param outputValue     nothing
     @return #TTErr error code */
    TTErr DirectoryObserve(const TTValue& inputValue, TTValue& outputValue);

    /** Add Directory observer
     @param inputValue
     @param outputValue
     @return #TTErr error code */
    TTErr AddDirectoryListener(const TTValue& inputValue, TTValue& outputValue);

    /** Add Attribute observer
     @param inputValue
     @param outputValue
     @return #TTErr error code */
    TTErr AddAttributeListener(const TTValue& inputValue, TTValue& outputValue);

    /** Remove Directory observer
     @param inputValue
     @param outputValue
     @return #TTErr error code */
    TTErr RemoveDirectoryListener(const TTValue& inputValue, TTValue& outputValue);

    /** Remove Attribute observer
     @param inputValue
     @param outputValue
     @return #TTErr error code */
    TTErr RemoveAttributeListener(const TTValue& inputValue, TTValue& outputValue);

    /** Update Directory (usually for distant application)
     @param inputValue
     @param outputValue
     @return #TTErr error code */
    TTErr UpdateDirectory(const TTValue& inputValue, TTValue& outputValue);

    /** Update Attribute value (usually for Mirror objects)
     @param inputValue
     @param outputValue
     @return #TTErr error code */
    TTErr UpdateAttribute(const TTValue& inputValue, TTValue& outputValue);

    /** Register an object into the application directory at an address
     @param inputValue      an address, an object and an optional context pointer
     @param outputValue     the effective registration address and the node
     @return #TTErr error code */
    TTErr ObjectRegister(const TTValue& inputValue, TTValue& outputValue);

    /** Unregister an object registered into the application directory at an address
     @param inputValue      the address
     @param outputValue     the registered object
     @return #TTErr error code */
    TTErr ObjectUnregister(const TTValue& inputValue, TTValue& outputValue);

    /** Change the name.instance part of the address of a registered object
     @param inputValue      a registered object, the new name.instance
     @param outputValue     the effective name.instance
     @return #TTErr error code */
    TTErr ObjectRename(const TTValue& inputValue, TTValue& outputValue);

    /** Retreive a registered object into the application directory at an address
     @param inputValue      an address
     @param outputValue     the registered object
     @return #TTErr error code */
    TTErr ObjectRetreive(const TTValue& inputValue, TTValue& outputValue);

    /** Send any value to a registered object into the application directory at an address
     @param inputValue      an address:attribute followed by any value
     @param outputValue     nothing
     @return #TTErr error code */
    TTErr ObjectSend(const TTValue& inputValue, TTValue& outputValue);

#if 0
#pragma mark -
#pragma mark TTName / AppName conversion
#endif

    /** Attribute accesor: Get all AppNames
     @return #TTErr error code */
    TTErr getAllAppNames(TTValue& value);

    /** Get all AppNames
     @return #TTErr error code */
    TTErr getAllTTNames(TTValue& value);

    /** Convert TTName into AppName
     @param inputValue      <TTSymbol toConvert>
     @param outputValue     <TTSymbol converted>
     @return #TTErr error code */
    TTErr ConvertToAppName(const TTValue& inputValue, TTValue& outputValue);

    /** Convert AppName into TTName
     @param inputValue      <TTSymbol toConvert>
     @param outputValue     <TTSymbol converted>
     @return #TTErr error code */
    TTErr ConvertToTTName(const TTValue& inputValue, TTValue& outputValue);

#if 0
#pragma mark -
#pragma mark Backup
#endif

    /**  Write application namespace
     @param inputValue      <TTXmlHandlerPtr aXmlHandler>
     @param outputValue     nothing
     @return #TTErr error code */
    TTErr WriteAsXml(const TTValue& inputValue, TTValue& outputValue);

    /**  Convenient method used to write a node
     @param aXmlHandler     a xml handler object
     @param aNode           a node object
     @return #TTErr error code
     @seealso WriteAsXml */
    void writeNodeAsXml(TTXmlHandlerPtr aXmlHandler, TTNodePtr aNode);

    /**  Read application namespace
     @param inputValue      <TTXmlHandlerPtr aXmlHandler>
     @param outputValue     nothing
     @return #TTErr error code */
    TTErr ReadFromXml(const TTValue& inputValue, TTValue& outputValue);

    /**  Convenient method used to read a node
     @param aXmlHandler     a xml handler object
     @seealso ReadFromXml */
    void readNodeFromXml(TTXmlHandlerPtr aXmlHandler);

    /* Instantiate and register a #TTData object
     note : this a temporary message to allow proxy data creation
     @param inputValue      an address, service of the data
     @param outputValue     the new object
     @return #TTErr error code */
    TTErr ProxyDataInstantiate(const TTValue& inputValue, TTValue& outputValue);

    /* Instantiate and register a #TTMirror object
     note : this a temporary message to allow mirror object creation
     @param inputValue      an address, an object type
     @param outputValue     the new object
     @return #TTErr error code */
    TTErr MirrorObjectInstantiate(const TTValue& inputValue, TTValue& outputValue);

    /**  Convenient method used to create a mirror object
     @param aProtocol       a protocol object
     @param anAddress       where to register the mirror object
     @param objectName      object type to mirror
     @param attributesName  attributes of the object to mirror
     @return #TTObject
     @seealso readNodeFromXml */
    TTObject appendMirrorObject(TTProtocolPtr aProtocol, TTAddress anAddress, TTSymbol objectName, TTValue& attributesName);

    /**  Convenient method used to create a data object
     @param aProtocol       a protocol object
     @param anAddress       where to register the data object
     @param service         data service
     @return #TTObject
     @seealso readNodeFromXml */
    TTObject appendProxyData(TTProtocolPtr aProtocol, TTAddress anAddress, TTSymbol service);

    /**  Convenient method used to create a container object
     @param aProtocol       a protocol object
     @param anAddress       where to register the container object
     @return #TTObject
     @seealso readNodeFromXml */
    TTObject appendProxyContainer(TTProtocolPtr aProtocol, TTAddress anAddress);

#if 0
#pragma mark -
#pragma mark Inline public methods useful to ease access to directory
#endif

public:

    /**  Get directory object
     @return a #TTNodeDirectoryPtr */
    inline TTNodeDirectoryPtr getDirectory() { return mDirectory; };

    /**  Get debug status
     @return a #TTBoolean */
    inline TTBoolean getDebug() { return mDebug; };

    /**	To convert an application name into standard TT name
     @param	anAppName       #TTSymbol
     @return #TTSymbol */
    inline TTSymbol convertAppNameToTTName(TTSymbol anAppName)
    {
        TTValue		c;
        TTSymbol	converted = anAppName;

        if (!mAppToTT.lookup(anAppName, c))
            converted = c[0];

        return converted;
    }

    /**	To convert standard TT name into an application name
     @param	aTTName     #TTSymbol
     @return #TTSymbol */
    inline TTSymbol convertTTNameToAppName(TTSymbol aTTName)
    {
        TTValue		c;
        TTSymbol	converted = aTTName;

        if (!mTTToApp.lookup(aTTName, c))
            converted = c[0];

        return converted;
    }

#if 0
#pragma mark -
#pragma mark Test
#endif

    /** Default (empty) template for unit tests.
     @param returnedTestInfo		Returned information on the outcome of the unit test(s)
     @return						#kTTErrNone if tests exists and they all pass, else #TTErr error codes depending on the outcome of the test.
     */
    virtual TTErr test(TTValue& returnedTestInfo);

#if 0
#pragma mark -
#pragma mark Friendship
#endif

    friend TTErr TTMODULAR_EXPORT TTApplicationProxyDataValueCallback(const TTValue& baton, const TTValue& data);
};

#if 0
#pragma mark -
#pragma mark Some Functions
#endif

/** A callback used by proxy data (see in appendData method)
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TTMODULAR_EXPORT TTApplicationProxyDataValueCallback(const TTValue& baton, const TTValue& data);

#endif // __TT_APPLICATION_H__
