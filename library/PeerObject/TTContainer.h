/* 
 * A Container object
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_CONTAINER_H__
#define __TT_CONTAINER_H__

#include "TTModular.h"

/*
 
 */

class TTMODULAR_EXPORT TTContainer : public TTObject
{
	
public:
	
	TTCLASS_SETUP(TTContainer)
	
	TTSymbolPtr			mAddress;					///< the address of the container in the directory
	TTUInt8				mPriority;					///< ATTRIBUTE: does this container have a priority over other containers ?
	TTString			mDescription;				///< ATTRIBUTE: a text label to describe the role of this container
	
private:
	
	TTNodeDirectoryPtr	mDirectory;					///< the directory
	TTCallbackPtr		mReturnAddressCallback;		///< a way to return received address to the owner of this receiver
	TTCallbackPtr		mReturnValueCallback;		///< a way to return received value to the owner of this receiver
	TTHashPtr			mParametersCache;			///< a cache containing all <relativeAddress : Parameter, Observer> for quick access
	TTObjectPtr			mObserver;					///< a life cycle observer
	
	friend TTErr TTMODULAR_EXPORT TTContainerDirectoryCallback(TTPtr baton, TTValue& data);
	
	friend TTErr TTMODULAR_EXPORT TTContainerAttributeCallback(TTPtr baton, TTValue& data);
	
public:
	
		TTErr Send(TTValue& valueToSend);
	
private:
	
	TTErr bind();
	
	TTErr unbind();
	
	TTErr makeCacheParameter(TTNodePtr aNode, TTValuePtr cacheParameter);
	
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
TTErr TTMODULAR_EXPORT TTContainerAttributeCallback(TTPtr baton, TTValue& data);

TTBoolean testObjectType(TTNodePtr node, void*args);

#endif // __TT_CONTAINER_H__
