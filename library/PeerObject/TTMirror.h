/* 
 * A Mirror Object
 * Copyright © 2011, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_MIRROR_H__
#define __TT_MIRROR_H__

#include "TTModular.h"

/**	TTMirror ... TODO : an explanation
 
 
 */


/**	A convenience macro to be used for registering mirror attribute.
	Note that we don't lower the attribute name because we use the name of an existing attribute.
		@param	name	The name of the attribute.
		@param	type	The type of the value.
 */
#define addMirrorAttribute(name, type)		TTObject::registerAttribute(name, type, NULL, (TTGetterMethod)& TTMirror::getMirrorAttribute, (TTSetterMethod)& TTMirror::setMirrorAttribute )

/**	A convenience macro to be used for registering mirror message.
		@param	name	The name of the message.
		@param	flag	The flag of the message.
 */
#define addMirrorMessage(name, flag)		TTObject::registerMessage(name, (TTMethod)& TTMirror::sendMirrorMessage , flag)


class TTMODULAR_EXPORT TTMirror : public TTDataObject
{
	TTCLASS_SETUP(TTMirror)
	
private:
	
	TTSymbolPtr					mType;							///< ATTRIBUTE : the type of the object binded by the mirror
	
	TTCallbackPtr				mGetAttributeCallback;			///< a way to get the attribute value
	TTCallbackPtr				mSetAttributeCallback;			///< a way to set the attribute value
	TTCallbackPtr				mSendMessageCallback;			///< a way to send a message
	TTCallbackPtr				mListenAttributeCallback;		///< a way to listen the attribute value
	
	TTErr						getMirrorAttribute(const TTAttribute& anAttribute, TTValue& value);
	TTErr						setMirrorAttribute(const TTAttribute& anAttribute, const TTValue& value);
	TTErr						sendMirrorMessage(const TTSymbol* messageName, TTValue& value);
	
public:
	TTErr						enableListening(const TTAttribute& anAttribute, TTBoolean enable);
	
};

typedef TTMirror* TTMirrorPtr;

#endif // __TT_MIRROR_H__
