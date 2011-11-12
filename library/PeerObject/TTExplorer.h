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
	
	TTNodeAddressPtr	mAddress;						///< ATTRIBUTE : the node where to start the exploration (default : the local root)
	TTSymbolPtr			mOutput;						///< ATTRIBUTE : what returns the exploration from the node :
														///<	- address : any address below the node at any level (default)
														///<	- children : all names of the children's node
														///<	- instance : all instances of the node
														///<	- attribute : all attributes of the node
	
	TTNodeDirectoryPtr	mDirectory;						///< an explorer depends on a directory
	
	TTCallbackPtr		mAddressObserver;				///< an address life cycle observer
	TTCallbackPtr		mApplicationObserver;			///< an application life cycle observer
	TTCallbackPtr		mReturnValueCallback;			///< a way to return back value to the owner of this explorer
	TTHashPtr			mFilterBank;					///< a hash table containing TTDictionaryPtr to store filters
	TTListPtr			mFilterList;					///< a list containing TTSymbolPtr to retreive filters in the filter bank
	
	TTNodePtr			mTempNode;						///< remember the node on which the exploration have been done (Children and Instances cases)
	TTSymbolPtr			mTempName;						///< remember the name on which the exploration have been done (Instances case)
	TTNodeAddressPtr	mTempParent;					///< remember the parent address (Instances case)
	TTNodeAddressPtr	mTempObserve;					///< remember the observed address (Instances case)
	TTHashPtr			mResult;						///< hash table containing all elements found by the explorer
	TTValue				mLastResult;					///< keep the last result to filter unchanged list
		
	/** */
	TTErr Explore();
	
	/** Create a filter, add it to the bank and append it to the list
		< filterName filterKey1 filterValue1 filterKey2 filterValue2 ... >
		note : the schema of the filter is automatically detected by the keys */
	TTErr FilterSet(const TTValue& inputValue, TTValue& outputValue);
	
	/** Delete a filter from the bank using his name and remove it from the filter list */
	TTErr FilterRemove(const TTValue& inputValue, TTValue& outputValue);
	
	/** */
	// TODO : TTErr Dump();
	
	/** */
	TTErr getFilterList(TTValue& value);
	
	/** */
	TTErr setFilterList(const TTValue& value);
	
	/** */
	TTErr setOutput(const TTValue& value);
	
	/** */
	TTErr setAddress(const TTValue& value);
	
	/** */
	TTErr getObjectsByType(TTValue& value);
	
	/** */
	TTErr bindAddress();
	
	/**  */
	TTErr unbindAddress();
	
	/** */
	TTErr bindApplication();
	
	/** */
	TTErr unbindApplication();
	
	/**  needed to be handled by a TTXmlHandler */
	TTErr WriteAsOpml(const TTValue& inputValue, TTValue& outputValue);
	void writeNode(TTOpmlHandlerPtr anOpmlHandler, TTNodePtr aNode);
	
	/* TODO :
	 TTErr WriteAsText(const TTValue& value);			// pass an text buffer ?
	 TTErr ReadFromText(const TTValue& value);			// pass an text buffer ?
	 */
	
	friend TTErr TTMODULAR_EXPORT TTExplorerDirectoryCallback(TTPtr baton, TTValue& data);
	friend TTErr TTMODULAR_EXPORT TTExplorerApplicationManagerCallback(TTPtr baton, TTValue& data);
};

typedef TTExplorer* TTExplorerPtr;

/**	
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TTMODULAR_EXPORT TTExplorerDirectoryCallback(TTPtr baton, TTValue& data);

/**	
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TTMODULAR_EXPORT TTExplorerApplicationManagerCallback(TTPtr baton, TTValue& data);

#endif // __TT_EXPLORER_H__
