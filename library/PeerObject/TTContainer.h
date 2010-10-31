/* 
 * A Container object
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_CONTAINER_H__
#define __TT_CONTAINER_H__

#include "TTModular.h"

/** TTContainer ... TODO : an explanation
 
 
 */

class TTApplication;
typedef TTApplication* TTApplicationPtr;

class TTMODULAR_EXPORT TTContainer : public TTObject
{
	TTCLASS_SETUP(TTContainer)
	
public:

	TTUInt8				mPriority;						///< ATTRIBUTE: does this container have a priority over other containers ?
	TTSymbolPtr			mDescription;					///< ATTRIBUTE: a text label to describe the role of this container
	TTSymbolPtr			mType;							///< ATTRIBUTE: a flag to precise if this part of our environnement is dedicated to 'audio', 'video' or 'control' processing
	TTBoolean			mInitialized;					///< ATTRIBUTE: is all TTDatas below have been initialized ?
	TTValue				mContent;						///< ATTRIBUTE: all contained relative address
	
private:
	
	TTSymbolPtr			maddress;						///< ATTRIBUTE: the address of the container in the directory
	
	TTApplicationPtr	mApplication;					///< the application
	TTCallbackPtr		mReturnAddressCallback;			///< a way to return back address to the owner of this container
	TTCallbackPtr		mReturnValueCallback;			///< a way to return back value to the owner of this container
	TTHashPtr			mObjectsObserversCache;			///< a hast table containing all <relativeAddress : Objects, ValueObserver, InitializedObserver> for quick access
	TTObjectPtr			mObserver;						///< a life cycle observer
	TTBoolean			mIsSending;						///< a flag to lock the object in case of infinite loop 
	
	friend TTErr TTMODULAR_EXPORT TTContainerDirectoryCallback(TTPtr baton, TTValue& data);
	
	friend TTErr TTMODULAR_EXPORT TTContainerValueAttributeCallback(TTPtr baton, TTValue& data);
	
	friend TTErr TTMODULAR_EXPORT TTContainerInitializedAttributeCallback(TTPtr baton, TTValue& data);
	
public:
	
	TTErr send(TTValue& AddressAndValue);
	
private:
	
	TTErr setaddress(const TTValue& value);
	
	TTErr getContent(TTValue& value);
	
	TTErr bind();
	TTErr unbind();
	
	TTErr makeCacheElement(TTNodePtr aNode);
	TTErr deleteCacheElement(TTNodePtr aNode);
	
	TTErr isInitialized();
	
	/**  needed to be handled by a TTTextHandler */
	TTErr writeAsText(const TTValue& value);
	void dataHeading(ofstream *file);		// Generates table heading for Datas
	void cssDefinition(ofstream *file);		// CSS definitions -- we include them in the html file itself so that we don't have problems with paths to external references
	
};

typedef TTContainer* TTContainerPtr;

/**	
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TTMODULAR_EXPORT TTContainerDirectoryCallback(TTPtr baton, TTValue& data);

/**	
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TTMODULAR_EXPORT TTContainerValueAttributeCallback(TTPtr baton, TTValue& data);

/**	
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TTMODULAR_EXPORT TTContainerInitializedAttributeCallback(TTPtr baton, TTValue& data);

/**	
 @param	baton						..
 @param	data						..
 @return							an error code */
TTBoolean TTMODULAR_EXPORT TTContainerTestObjectAndContext(TTNodePtr n, TTPtr args);

#endif // __TT_CONTAINER_H__
