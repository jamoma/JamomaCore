/* 
 * A Viewer Object
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_VIEWER_H__
#define __TT_VIEWER_H__

#include "TTModular.h"

/**	TTViewer ... TODO : an explanation
 */

class TTReceiver;
typedef TTReceiver* TTReceiverPtr;

class TTSender;
typedef TTSender* TTSenderPtr;

class TTMODULAR_EXPORT TTViewer : public TTObject
{
	TTCLASS_SETUP(TTViewer)
	
public:
	
	TTSymbolPtr			mAddressMain;				///< ATTRIBUTE : main part of the data address to bind
	TTSymbolPtr			mAddressSub;				///< ATTRIBUTE : sub part of the data address to bind
													/// So the viewer will bind on the data at /main/sub address
	TTBoolean			mFreeze;					///< ATTRIBUTE : Freeze data returning
	
private:
	
	TTNodeDirectoryPtr	mDirectory;					///< the directory
	TTReceiverPtr		mReceiver;					///< the receiver which binds on our data
	TTSenderPtr			mSender;					///< the sender which binds on our data
	
	TTCallbackPtr		mReturnValueCallback;		///< a way to return back value to the owner of this viewer
	
public:

	TTErr Refresh();
	
private :
	
	/** set the main part of the address */
	TTErr setAddressMain(const TTValue& value);
	
	/** set the sub part of the address */
	TTErr setAddressSub(const TTValue& value);
	
	/** set the freeze */
	TTErr setFreeze(const TTValue& value);
	
	TTErr send(TTValue& valueToSend);				// to -- lower case in order to hide the message during the Class wrapping process
	
	TTErr bind();
	
	friend TTErr TTMODULAR_EXPORT TTViewerReceiveAddressCallback(TTPtr baton, TTValue& data);
	friend TTErr TTMODULAR_EXPORT TTViewerReceiveValueCallback(TTPtr baton, TTValue& data);
};

typedef TTViewer* TTViewerPtr;

/**	
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TTMODULAR_EXPORT TTViewerReceiveAddressCallback(TTPtr baton, TTValue& data);

/**	
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TTMODULAR_EXPORT TTViewerReceiveValueCallback(TTPtr baton, TTValue& data);

#endif // __TT_VIEWER_H__
