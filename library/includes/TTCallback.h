/** @file
 * @ingroup foundation
 *
 * @brief This class is used to create a backward communication channel to notify a client that something changed in the #TTnode.
 *
 * @details
 *
 * @todo Use the TTObject class functionnality because TTNode is also a TTObject
 *
 * @authors Théo de la Hogue, Tim Place, Nathan Wolek, Trond Lossius
 *
 * @copyright This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_CALLBACK_H__
#define __TT_CALLBACK_H__

#include "TTFoundationAPI.h"


/** 
 This class is used to create a backward communication to notify a client that something changed in the #TTnode.
 We will subclass TTObject in order to gain some functionality -- like observers and notifications.
 */
class TTFOUNDATION_EXPORT TTCallback : public TTObject
{
	TTCLASS_SETUP(TTCallback)

protected:

	TTFunctionWithBatonAndValue	mFunction;	///< Function called when the notify message is engaged.
	TTPtr						mBaton;		///< User data to be passed back when the callback is triggered.
	
public:
	
	TTSymbol					mOwner;		///< A symbol usefull to know the owner of the TTCallback
	
	/**	Message called because we are registered as an observer to some other object, and then 
	 calls our external function.
	 @param anInputValue			TODO: Add info
	 @param anUnusedOutputValue		TODO: Add info
	 @return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr notify(const TTValue& anInputValue, TTValue &anUnusedOutputValue);
	
	/**	Usefull to easily free the baton in case the pointer is a TTValue of something which need to be freed corectly.
	 @return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTPtr getBaton(){return mBaton;};
	
	/** Set the owner of this callback object.
	 @param input					TODO: Add info
	 @return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setOwner(const TTValue& input);

};

/** Pointer to a #TTCallback object.
 @ingroup typedefs
 */
typedef TTCallback* TTCallbackPtr;


#endif // __TT_CALLBACK_H__
