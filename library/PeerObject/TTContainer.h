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

class TTMODULAR_EXPORT TTContainer : public TTDataObject
{
	TTCLASS_SETUP(TTContainer)
	
private:

	TTUInt8				mPriority;						///< ATTRIBUTE: does this container have a priority over other containers ?
	TTSymbolPtr			mDescription;					///< ATTRIBUTE: a text label to describe the role of this container
	TTSymbolPtr			mType;							///< ATTRIBUTE: a flag to precise if this part of our environnement is dedicated to 'audio', 'video' or 'control' processing
	TTBoolean			mInitialized;					///< ATTRIBUTE: is it initialized ?
	TTValue				mContent;						///< ATTRIBUTE: all contained relative address
	TTSymbolPtr			mAddress;						///< ATTRIBUTE: the address of the container in the directory
	TTValue				mActivityIn;					///< ATTRIBUTE : a local value to allow observation of incoming data
	TTValue				mActivityOut;					///< ATTRIBUTE : a local value to allow observation of outputing data
	
	
	TTCallbackPtr		mReturnAddressCallback;			///< a way to return back address to the owner of this container
	TTCallbackPtr		mReturnValueCallback;			///< a way to return back value to the owner of this container
	TTHashPtr			mObjectsObserversCache;			///< a hast table containing all <relativeAddress : Objects, ValueObserver, InitializedObserver> for quick access
	TTCallbackPtr		mObserver;						///< a life cycle observer
	TTBoolean			mIsSending;						///< a flag to lock the object in case of infinite loop 
	
	/** */
	TTErr Send(TTValue& AddressAttributeAndValue);
	
	/** */
	TTErr Init();
	
	/**  needed to be handled by a TTTextHandler */
	TTErr WriteAsText(const TTValue& value);
	
	/** */
	TTErr setAddress(const TTValue& value);
	
	/** */
	TTErr setActivityIn(const TTValue& value);
	
	/** */
	TTErr setActivityOut(const TTValue& value);
	
	/** */
	TTErr getContent(TTValue& value);
	
	/** */
	TTErr bind();
	
	/** */
	TTErr unbind();
	
	/** */
	TTErr makeCacheElement(TTNodePtr aNode);
	TTErr deleteCacheElement(TTNodePtr aNode);
	
	/** Generates table heading for Datas */
	void dataHeading(ofstream *file);
	
	/** CSS definitions -- we include them in the html file itself so that we don't have problems with paths to external references */
	void cssDefinition(ofstream *file);
	
	
	friend TTErr TTMODULAR_EXPORT TTContainerDirectoryCallback(TTPtr baton, TTValue& data);
	friend TTErr TTMODULAR_EXPORT TTContainerValueAttributeCallback(TTPtr baton, TTValue& data);
	friend TTErr TTMODULAR_EXPORT TTContainerCommandMessageCallback(TTPtr baton, TTValue& data);
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
TTErr TTMODULAR_EXPORT TTContainerCommandMessageCallback(TTPtr baton, TTValue& data);

/**	
 @param	baton						..
 @param	data						..
 @return							an error code */
TTBoolean TTMODULAR_EXPORT TTContainerTestObjectAndContext(TTNodePtr n, TTPtr args);

#endif // __TT_CONTAINER_H__
