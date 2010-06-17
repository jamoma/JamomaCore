/* 
 * A Sender Object
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_SENDER_H__
#define __TT_SENDER_H__

#include "TTModular.h"

/**	TTSender ... TODO : an explanation
 */
class TTMODULAR_EXPORT TTSender : public TTObject
{
	TTCLASS_SETUP(TTSender)
	
public:
	
	TTNodeDirectoryPtr	mDirectory;					///< the directory
	TTSymbolPtr			mAddress;					///< ATTRIBUTE: the address to bind
	TTSymbolPtr			mAttribute;					///< ATTRIBUTE: the attribute to bind (default : value)

private:
	
	TTBoolean			mIsSending;					///< a flag to lock the object in case of infinite loop
	TTListPtr			mAddressObjectCache;		///< a cache containing all binded addresses and the object for quick access
	TTObjectPtr			mObserver;					///< a life cycle observer
	
public:
	
	/**	Setter for mAddress attribute. */
	TTErr setAddress(const TTValue& value);
	
	/**	Setter for mAttribute attribute. */
	TTErr setAttribute(const TTValue& value);
	
	TTErr Send(TTValue& valueToSend);
	
private :
	
	
	TTErr bind();
	
	TTErr unbind();
	
	friend TTErr TTSenderDirectoryCallback(TTPtr baton, TTValue& data);
	
};

typedef TTSender* TTSenderPtr;

/**	
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TTMODULAR_EXPORT TTSenderDirectoryCallback(TTPtr baton, TTValue& data);

#endif // __TT_SENDER_H__
