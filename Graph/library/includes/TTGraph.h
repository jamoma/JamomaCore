/* 
 * Jamoma Asynchronous Object Graph Layer
 * Creates a wrapper for TTObjectBases that can be used to build a control graph for asynchronous message passing.
 * Copyright © 2010, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TTGRAPH_H__
#define __TTGRAPH_H__

#include "TTDSP.h"


#ifdef TT_PLATFORM_WIN
	#include "windows.h"
	#if defined( _DLL_EXPORT ) && defined( TTGRAPH_EXPORTS )
		#define TTGRAPH_EXPORT __declspec(dllexport)
	#else
		#define TTGRAPH_EXPORT __declspec(dllimport)
	#endif

	#include <algorithm>
	using namespace std;
#else // TT_PLATFORM_MAC
	#ifdef TTGRAPH_EXPORTS
		#define TTGRAPH_EXPORT __attribute__((visibility("default")))
	#else
		#define TTGRAPH_EXPORT  
	#endif
#endif


/******************************************************************************************/


/** \ingroup bitmasks
 Flags to be used as a bitmask.
*/
enum TTGraphFlags {
	kTTGraphFlagsNone = 0x00,				///< No flags are set.
};


// data passed to all nodes in the graph when the graph is initialized
class TTGraphInitData {
public:
	TTUInt16 vectorSize;	// the global/recommended/initial vectorSize (which can be overriden during process)
};


class	TTGraphObject;
typedef TTGraphObject*					TTGraphObjectPtr;
typedef std::vector<TTGraphObjectPtr>	TTGraphObjectVector;
typedef TTGraphObjectVector::iterator	TTGraphObjectIter;

//#include "TTGraphInlet.h"
//#include "TTGraphOutlet.h"
//class	TTGraphOutlet;

//#include "TTGraphDescription.h"

/******************************************************************************************/

TTGRAPH_EXPORT void TTGraphInit(void);


#endif // __TTGRAPH_H__
