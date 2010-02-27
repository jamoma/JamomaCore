/* 
 * Jamoma Asynchronous Object Graph Layer
 * Creates a wrapper for TTObjects that can be used to build a control graph for asynchronous message passing.
 * Copyright © 2010, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TTGRAPH_H__
#define __TTGRAPH_H__

#include "TTDSP.h"


#ifdef TT_PLATFORM_WIN
	#include "windows.h"
	#ifdef _DLL_EXPORT
		#define TTGRAPH_EXPORT __declspec(dllexport)
	#else
		#define TTGRAPH_EXPORT __declspec(dllimport)
	#endif

	#include <algorithm>
	using namespace std;
#else // TT_PLATFORM_MAC
	#ifdef _DLL_EXPORT
		#define TTGRAPH_EXPORT __attribute__((visibility("default")))
	#else
		#define TTGRAPH_EXPORT  
	#endif
#endif


/******************************************************************************************/


// values to be used as a bitmask
enum TTGraphFlags {
	kTTGraphFlagsNone = 0x00,
};


// data passed to all nodes in the graph when the graph is initialized
class TTGraphInitData {
public:
	TTUInt16 vectorSize;	// the global/recommended/initial vectorSize (which can be overriden during process)
};


class	TTGraphObject;
typedef TTGraphObject*					TTGraphObjectPtr;
typedef vector<TTGraphObjectPtr>		TTGraphObjectVector;
typedef TTGraphObjectVector::iterator	TTGraphObjectIter;

class	TTGraphInlet;
typedef TTGraphInlet*					TTGraphInletPtr;
typedef vector<TTGraphInlet>			TTGraphInletVector;
typedef TTGraphInletVector::iterator	TTGraphInletIter;

class	TTGraphOutlet;
typedef TTGraphOutlet*					TTGraphOutletPtr;
typedef vector<TTGraphOutlet>			TTGraphOutletVector;
typedef TTGraphOutletVector::iterator	TTGraphOutletIter;

#include "TTGraphDescription.h"

/******************************************************************************************/

TTGRAPH_EXPORT void TTGraphInit(void);


#endif // __TTGRAPH_H__
