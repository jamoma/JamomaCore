/* 
 * A Namespace Explorer Object
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_EXPLORER_H__
#define __TT_EXPLORER_H__

#include "TTModular.h"


/**	TTExplorer ... TODO : an explanation

 
 */



class TTMODULAR_EXPORT TTExplorer : public TTObject
{
	TTCLASS_SETUP(TTExplorer)
	
public:
	
private:
	
	TTNodeDirectoryPtr	mDirectory;						///< the directory
public:
	
private :
	
	TTErr writeAsXml(const TTValue& value);
	TTErr readFromXml(const TTValue& value);
	
	/* TODO :
	 TTErr WriteAsText(const TTValue& value);			// pass an text buffer ?
	 TTErr ReadFromText(const TTValue& value);			// pass an text buffer ?
	 */
};

typedef TTExplorer* TTExplorerPtr;

#endif // __TT_EXPLORER_H__
