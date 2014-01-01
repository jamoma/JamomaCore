/** @file
 *
 * @ingroup modularLibrary
 *
 * @brief An MVC viewer object.
 *
 * @details In the Max implementation this is a j.remote object.
 *
 * @authors Théo de la Hogue
 *
 * @copyright © 2010, Théo de la Hogue @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __TT_VIEWER_H__
#define __TT_VIEWER_H__

#include "TTModular.h"


class TTReceiver;
typedef TTReceiver* TTReceiverPtr;

class TTSender;
typedef TTSender* TTSenderPtr;

class TTApplicationManager;
typedef TTApplicationManager* TTApplicationManagerPtr;

class TTMODULAR_EXPORT TTViewer : public TTDataObjectBase
{
	TTCLASS_SETUP(TTViewer)
	
private:
	
	TTAddress                   mAddress;					///< ATTRIBUTE : data address to bind
	TTSymbol					mDescription;				///< ATTRIBUTE : text to describe the role of this data
	TTSymbol					mType;						///< ATTRIBUTE : type of the gui
	TTSymbol					mTag;						///< ATTRIBUTE : a tag for this viewer
	TTBoolean					mHighlight;					///< ATTRIBUTE : highlight state of the gui
	TTBoolean					mFreeze;					///< ATTRIBUTE : freeze data returning
	
	TTSymbol					mDataspace;					///< ATTRIBUTE : The dataspace that this view uses (default is 'none')
	TTSymbol					mDataspaceUnit;				///< ATTRIBUTE : The unit within the dataspace.
	TTObjectBasePtr				mDataspaceConverter;		///< Performs conversions from data unit to the view unit
	TTReceiverPtr				mDataspaceObserver;			///< the receiver which observe the data's dataspace attribute
	TTReceiverPtr				mDataspaceUnitObserver;		///< the receiver which observe the data's unit attribute
	
	TTBoolean					mActive;					///< ATTRIBUTE : if false, received data won't be output
	TTValue						mReturnedValue;				///< ATTRIBUTE : a local value to allow observation of this viewer
	
	TTReceiverPtr				mReceiver;					///< the receiver which binds on our data
	TTSenderPtr					mSender;					///< the sender which binds on our data
	
	TTCallbackPtr				mReturnValueCallback;		///< a way to return back value to the owner of this viewer
	
	/** set the address */
	TTErr setAddress(const TTValue& value);
	
	/** set the attribute */
	TTErr setAttribute(const TTValue& value);
	
	/** set mActive */
	TTErr setActive(const TTValue& value);
    
    /** set the highlight */
	TTErr setHighlight(const TTValue& value);
	
	/** set the freeze */
	TTErr setFreeze(const TTValue& value);
	
	/**	Setter for mDataspaceUnit attribute. */
	TTErr setDataspaceUnit(const TTValue& value);
	
	/** set the returnedValue */
	TTErr setReturnedValue(const TTValue& value);
	
	/** */
	TTErr Send(const TTValue& valueToSend, TTValue& outputValue);
	
	/** */
	TTErr bind();
	TTErr refresh();
	TTErr convertUnit(const TTValue& inputValue, TTValue& outputValue);
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
