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
	TTValue				mTag;							///< ATTRIBUTE: tag list for this container (to -- why keep the type attribute in this case ?)
	TTBoolean			mInitialized;					///< ATTRIBUTE: is it initialized ?
	TTNodeAddressPtr	mAddress;						///< ATTRIBUTE: the address of the container in the directory
	TTNodeAddressPtr	mAlias;							///< ATTRIBUTE: an alias address to retrieve the container using another address
	TTValue				mActivityIn;					///< ATTRIBUTE : a local value to allow observation of incoming data
	TTValue				mActivityOut;					///< ATTRIBUTE : a local value to allow observation of outputing data
	
	
	TTCallbackPtr		mReturnAddressCallback;			///< a way to return back address to the owner of this container
	TTCallbackPtr		mReturnValueCallback;			///< a way to return back value to the owner of this container
	TTHashPtr			mObjectsObserversCache;			///< a hash table containing all <relativeAddress : Objects, ValueObserver, InitializedObserver> for quick access
	TTCallbackPtr		mObserver;						///< a life cycle observer
	TTBoolean			mIsSending;						///< a flag to lock the object in case of infinite loop 
	
	/** */
	TTErr Send(TTValue& AddressAndValue, TTValue& outputValue);
	
	/** */
	TTErr Init();
	
	/** */
	TTErr AliasRemove();
	
	/**  needed to be handled by a TTTextHandler */
	TTErr WriteAsText(const TTValue& inputValue, TTValue& outputValue);
	
	/** */
	TTErr setAddress(const TTValue& value);
	
	/** */
	TTErr setAlias(const TTValue& value);
	
	/** */
	TTErr setActivityIn(const TTValue& value);
	
	/** */
	TTErr setActivityOut(const TTValue& value);
	
	/**	Setter for mTag attribute. */
	TTErr setTag(const TTValue& value);
	
	/**	Setter for mPriority attribute. */
	TTErr setPriority(const TTValue& value);
	
	/** */
	TTErr bind();
	
	/** */
	TTErr unbind();
	
	/** cacheElement contains all info needed to handle all objects registered below this container in the directory 
		< object, observer1, observer2, node > */
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

/** compare priority attribute of object's
 @param	v1							< relativeAddress, a pointer to a value containing a pointer to a TTObject >
 @param	v2							< relativeAddress, a pointer to a value containing a pointer to a TTObject >
 @return							is the priority of v1 is smaller than v2 (except if equal 0) ? */ 
TTBoolean TTMODULAR_EXPORT	TTContainerCompareObjectPriority(TTValue& v1, TTValue& v2);


#endif // __TT_CONTAINER_H__
