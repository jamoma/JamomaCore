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

class TTApplicationManager;
typedef TTApplicationManager* TTApplicationManagerPtr;

class TTMODULAR_EXPORT TTViewer : public TTDataObject
{
	TTCLASS_SETUP(TTViewer)
	
private:
	
	TTSymbolPtr					mAddress;					///< ATTRIBUTE : data address to bind
	TTSymbolPtr					mDescription;				///< ATTRIBUTE : text to describe the role of this data
	TTSymbolPtr					mType;						///< ATTRIBUTE : type of the gui
	TTSymbolPtr					mTag;						///< ATTRIBUTE: a tag for this viewer
	TTBoolean					mSelected;					///< ATTRIBUTE : selection state of the gui
	TTBoolean					mFreeze;					///< ATTRIBUTE : freeze data returning
	
	TTSymbolPtr					mDataspace;					///< ATTRIBUTE: The dataspace that this view uses (default is 'none')
	TTSymbolPtr					mDataspaceUnit;				///< ATTRIBUTE: The unit within the dataspace.
	TTObjectPtr					mDataspaceConverter;		///< Performs conversions from data unit to the view unit
	TTReceiverPtr				mDataspaceObserver;			///< the receiver which observe the data's dataspace attribute
	TTReceiverPtr				mDataspaceUnitObserver;		///< the receiver which observe the data's unit attribute
	
	TTBoolean					mEnable;					///< ATTRIBUTE: if false, received data won't be output
	TTValue						mReturnedValue;				///< ATTRIBUTE : a local value to allow observation of this viewer
	
	TTReceiverPtr				mReceiver;					///< the receiver which binds on our data
	TTSenderPtr					mSender;					///< the sender which binds on our data
	
	TTCallbackPtr				mReturnValueCallback;		///< a way to return back value to the owner of this viewer
	
	/** */
	TTErr Refresh();
	
	/** set the address */
	TTErr setAddress(const TTValue& value);
	
	/** set the attribute */
	TTErr setAttribute(const TTValue& value);
	
	/** set the enable */
	TTErr setEnable(const TTValue& value);
	
	/** set the freeze */
	TTErr setFreeze(const TTValue& value);
	
	/**	Setter for mDataspaceUnit attribute. */
	TTErr setDataspaceUnit(const TTValue& value);
	
	/** set the returnedValue */
	TTErr setReturnedValue(const TTValue& value);
	
	/** */
	TTErr Send(TTValue& valueToSend);
	
	/** */
	TTErr bind();
	TTErr convertUnit(TTValue& value);
	TTErr observeDataspace();
	TTErr observeDataspaceUnit();
	
	friend TTErr TTMODULAR_EXPORT TTViewerReceiveAddressCallback(TTPtr baton, TTValue& data);
	friend TTErr TTMODULAR_EXPORT TTViewerReceiveValueCallback(TTPtr baton, TTValue& data);
	friend TTErr TTMODULAR_EXPORT TTViewerDataspaceCallback(TTPtr baton, TTValue& data);
	friend TTErr TTMODULAR_EXPORT TTViewerDataspaceUnitCallback(TTPtr baton, TTValue& data);
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

/**	
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TTMODULAR_EXPORT TTViewerDataspaceCallback(TTPtr baton, TTValue& data);

/**	
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TTMODULAR_EXPORT TTViewerDataspaceUnitCallback(TTPtr baton, TTValue& data);

#endif // __TT_VIEWER_H__
