/** @file
 *
 * @ingroup modularLibrary
 *
 * @brief A Receiver Object
 *
 * @details
 *
 * @authors Théo de la Hogue
 *
 * @copyright © 2010, Théo de la Hogue @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __TT_RECEIVER_H__
#define __TT_RECEIVER_H__

#include "TTModular.h"

/**	TTReceiver ... TODO : an explanation
 
 
 */

class TTMODULAR_EXPORT TTReceiver : public TTDataObjectBase
{
	TTCLASS_SETUP(TTReceiver)
	
public:	// use public for quick acces during signal processing
	
	TTObjectBasePtr				mSignal;					///< any data structure to receive complex signal
	
private:
	
	TTAddress                   mAddress;					///< ATTRIBUTE : the address to bind
	TTBoolean					mActive;					///< ATTRIBUTE : if false, received data won't be output without unregister the attribute observer (default true).
	
	TTNodeDirectoryPtr			mDirectory;					///< a receiver depends on a directory
	TTCallbackPtr				mReturnAddressCallback;		///< a way to return received address to the owner of this receiver
	TTCallbackPtr				mReturnValueCallback;		///< a way to return received value to the owner of this receiver
	TTCallbackPtr				mAddressObserver;			///< an address life cycle observer
	TTCallbackPtr				mApplicationObserver;		///< an application life cycle observer
	TTList                      mNodesObserversCache;		///< a list containing <aNode, anAttrObserver>
	TTList                      mObjectCache;				///< ATTRIBUTE : a cache containing all binded objects for quick access
	
	/**	Setter for mAddress attribute. */
	TTErr setAddress(const TTValue& value);
	
	/**	Setter for mActive attribute. */
	TTErr setActive(const TTValue& value);
    
    /**	Getter for mObjectCache attribute. */
	TTErr getObjectCache(TTValue& value);
	
	/** Ask the value and use the callback to return it */
	TTErr Get();
    
    /** Ask the value and use the outputValue to return it.
        This method is not relevant with address containing wildcards */
	TTErr Grab(const TTValue& inputValue, TTValue& outputValue);
	
	/** */
	TTErr bindAddress();
	
	/**  */
	TTErr unbindAddress();
	
	/** */
	TTErr bindApplication();
	
	/** */
	TTErr unbindApplication();
	
	friend TTErr TTMODULAR_EXPORT TTReceiverDirectoryCallback(TTPtr baton, TTValue& data);
	friend TTErr TTMODULAR_EXPORT TTReceiverAttributeCallback(TTPtr baton, TTValue& data);
	friend TTErr TTMODULAR_EXPORT TTReceiverApplicationManagerCallback(TTPtr baton, TTValue& data);
	
};

typedef TTReceiver* TTReceiverPtr;

/**	
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TTMODULAR_EXPORT TTReceiverDirectoryCallback(TTPtr baton, TTValue& data);

/**	
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TTMODULAR_EXPORT TTReceiverAttributeCallback(TTPtr baton, TTValue& data);

/**	
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TTMODULAR_EXPORT TTReceiverApplicationManagerCallback(TTPtr baton, TTValue& data);

#endif // __TT_RECEIVER_H__
