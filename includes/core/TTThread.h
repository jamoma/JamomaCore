/* 
 * TTBlue Class for working with threads
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_THREAD_H__
#define __TT_THREAD_H__

#include "TTElement.h"


/****************************************************************************************************/
// Class Specification

/**
	The TTThread class implements a cross-platform thread manager.
	It is not yet full featured, as features are being added on an as-needed basis.
*/
class TTThread : public TTElement {
private:

public:
	TTThread();
	virtual	~TTThread();

	/** Tells the thread to go dormant for an amount of time specified in milliseconds */
	static void sleep(TTUInt32 millisecondsToSleep);
};


#endif // __TT_THREAD_H__
