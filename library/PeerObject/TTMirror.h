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
		@param	name	The TTSymbol name of the attribute.
		@param	type	The type of the value.
 */
#define addMirrorAttribute(name, type)		TTObject::registerAttribute(name, type, NULL, (TTGetterMethod)& TTMirror::getMirrorAttribute, (TTSetterMethod)& TTMirror::setMirrorAttribute )

/** TODO : how to have TTGetterMethod and TTSetterMethod for Mirror attribute Property ?
 
	A convenience macro to be used for registering properties of mirror attributes.
	Note that we don't lower the attribute name because we use the name of an existing attribute.
		@param	name			The TTSymbol name of the attribute.
		@param	propertyName	The name of the property.
		@param	initialValue	The value of the property.
 */
//#define addMirrorAttributeProperty(name, propertyName, initialValue)		registerAttributeProperty(name, TT(#propertyName), initialValue, (TTGetterMethod)& TTAttribute::get##propertyName , (TTSetterMethod)& TTAttribute::set##propertyName )


/**	A convenience macro to be used for registering mirror message.
		@param	name	The name of the message.
		@param	flag	The flag of the message.
 */
#define addMirrorMessage(name, flag)		TTObject::registerMessage(name, (TTMethod)& TTMirror::sendMirrorMessage , flag)

/** TODO : how to have TTGetterMethod and TTSetterMethod for Mirror message Property ?
	
	A convenience macro to be used for registering properties of messages.
	Note that we don't lower the message name because we use the name of an existing attribute.
		@param	name			The TTSymbol name of the attribute.
		@param	propertyName	The name of the property.
		@param	initialValue	The value of the property.
 */
//#define addMessageProperty(name, propertyName, initialValue)		registerMessageProperty(name, TT(#propertyName), initialValue, (TTGetterMethod)& TTMessage::get##propertyName , (TTSetterMethod)& TTMessage::set##propertyName )


class TTMODULAR_EXPORT TTMirror : public TTDataObject
{
	TTCLASS_SETUP(TTMirror)
	
private:
	
	TTSymbol					mType;							///< ATTRIBUTE : the type of the object binded by the mirror
	
	TTCallbackPtr				mGetAttributeCallback;			///< a way to get the attribute value
	TTCallbackPtr				mSetAttributeCallback;			///< a way to set the attribute value
	TTCallbackPtr				mSendMessageCallback;			///< a way to send a message
	TTCallbackPtr				mListenAttributeCallback;		///< a way to listen the attribute value
	
	TTErr						getMirrorAttribute(const TTAttribute& anAttribute, TTValue& value);
	TTErr						setMirrorAttribute(const TTAttribute& anAttribute, const TTValue& value);
	TTErr						sendMirrorMessage(const TTSymbol* messageName, const TTValue& inputValue, TTValue& outputValue);
	
	
public:
	TTErr						updateAttributeValue(const TTSymbol attributeName, TTValue& value);
	TTErr						enableListening(const TTAttribute& anAttribute, TTBoolean enable);
	
};

typedef TTMirror* TTMirrorPtr;

#endif // __TT_MIRROR_H__
