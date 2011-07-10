/* 
 * A Namespace Explorer Object
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_EXPLORER_H__
#define __TT_EXPLORER_H__

#include "TTModular.h"


/**	TTExplorer ... TODO : an explanation

 
 */

class TTOpmlHandler;
typedef TTOpmlHandler* TTOpmlHandlerPtr;

class TTMODULAR_EXPORT TTExplorer : public TTDataObject
{
	TTCLASS_SETUP(TTExplorer)
	
private:
	
	TTNodeAddressPtr	mAddress;						///< ATTRIBUTE : 
	TTSymbolPtr			mLookfor;						///< ATTRIBUTE : what the explorer is looking for from the address (Children, Instance, Attribute else use ObjectCriteria table)
	TTValue				mEqual;							///< ATTRIBUTE : each found elements have to be equal to one element of this attribute (use KTTValNone to don't use this)
	TTValue				mDifferent;						///< ATTRIBUTE : each found elements have to be different from all elements of this attribute (use KTTValNone to don't use this)
	
	TTNodeDirectoryPtr	mDirectory;						///< an explorer depends on a directory
	
	TTCallbackPtr		mAddressObserver;				///< an address life cycle observer
	TTCallbackPtr		mReturnValueCallback;			///< a way to return back value to the owner of this explorer
	TTHashPtr			mLookforObjectCriteria;			///< hash table of hash table containing <ObjectType, <AttributeName, Value>>
														///<	- if the Attribute hash table is empty this means any object of the given type matches the test.
														///<	- if a value is KTTValNone this means any value matches the test.
	
	TTNodePtr			mTempNode;						///< remember the node on which the exploration have been done (Children and Instances cases)
	TTSymbolPtr			mTempName;						///< remember the name on which the exploration have been done (Instances case)
	TTNodeAddressPtr	mTempParent;					///< remember the parent address (Instances case)
	TTNodeAddressPtr	mTempObserve;					///< remember the observed address (Instances case)
	TTHashPtr			mResult;						///< hash table containing all elements found by the explorer
	TTValue				mLastResult;					///< keep the last result to filter unchanged list
		
	/** */
	TTErr Explore();
	
	/** */
	TTErr CriteriaInclude(const TTValue& value);
	
	/** */
	TTErr CriteriaClear();
	
	/** */
	// TODO : TTErr Dump();
	
	/** */
	TTErr setLookfor(const TTValue& value);
	
	/** */
	TTErr setAddress(const TTValue& value);
	
	/** */
	TTErr setUpdate(const TTValue& value);
	
	/** */
	TTErr getObjectsByType(TTValue& value);
	
	/**  needed to be handled by a TTXmlHandler */
	TTErr WriteAsOpml(const TTValue& value);
	void writeNode(TTOpmlHandlerPtr anOpmlHandler, TTNodePtr aNode);
	
	/* TODO :
	 TTErr WriteAsText(const TTValue& value);			// pass an text buffer ?
	 TTErr ReadFromText(const TTValue& value);			// pass an text buffer ?
	 */
	
	friend TTErr TTMODULAR_EXPORT TTExplorerDirectoryCallback(TTPtr baton, TTValue& data);
};

typedef TTExplorer* TTExplorerPtr;

/**	
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TTMODULAR_EXPORT TTExplorerDirectoryCallback(TTPtr baton, TTValue& data);

#endif // __TT_EXPLORER_H__
