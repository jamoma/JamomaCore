/* 
 * TTCallback
 * Copyright © 2009, Théo de la Hogue & Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_CALLBACK_H__
#define __TT_CALLBACK_H__

#include "TTFoundationAPI.h"


/** 
	This class is used to create a backward communication
	to notify a client that something changed in the TTnode
	TODO : use the TTObject class fonctionnality besause TTNode is also a TTObject 
 */

class TTFOUNDATION_EXPORT TTCallback : public TTObject			///< we will subclass TTObject in order to gain some functionality -- like observers and notifications
{
	TTCLASS_SETUP(TTCallback)

	TTFunctionWithBatonAndValue	mFunction;	///< Function called when the notify message is engaged
	TTPtr						mBaton;		///< User data to be passed back when the callback is triggered
	
public:
	/**	message called because we are registered as an observer to some other object, and then 
		calls our external function. */
	TTErr notify(TTValue& arguments);
};

typedef TTCallback* TTCallbackPtr;


#endif // __TT_CALLBACK_H__
