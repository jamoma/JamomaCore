/* 
 *	MaxAudioGraph
 *	A thin wrapper of the Lydbaer audio system for use in the Cycling '74 Max/MSP environment.
 *	Includes an automated class wrapper to make TTBlue object's available as objects for Max/MSP.
 *	Copyright © 2008 by Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_MAX_AUDIOGRAPH_H__
#define __TT_MAX_AUDIOGRAPH_H__

#include "ext.h"					// Max Header
#include "ext_obex.h"				// Max Object Extensions (attributes) Header
#include "ext_strings.h"			// String Functions
#include "commonsyms.h"				// Common symbols used by the Max 4.5 API
#include "z_dsp.h"					// MSP Header
#include "jpatcher_api.h"			// Required for patcher traversal code

#include "TTAudioGraphAPI.h"		// Definitions for Jamoma AudioGraph
#include "maxGraph.h"


#ifdef WIN_VERSION
#define TTCLASSWRAPPERMAX_EXPORT __declspec(dllexport) 
#else
#define TTCLASSWRAPPERMAX_EXPORT
#endif


// TYPE DEFINITIONS

typedef t_class*	ClassPtr;
typedef t_object*	ObjectPtr;
typedef t_symbol*	SymbolPtr;
typedef t_atom*		AtomPtr;
typedef long		AtomCount;
typedef t_max_err	MaxErr;
#ifndef SELF
#define SELF ObjectPtr(self)
#endif

typedef TTErr (*TTValidityCheckFunction)(const TTPtr data);         ///< A type that can be used to store a pointer to a validity checking function.

class MaxAudioGraphWrappedClassOptions;

typedef struct _MaxAudioGraphWrappedClass {
	ClassPtr							maxClass;					///< The Max class pointer.
	SymbolPtr							maxClassName;				///< The name to give the Max class.
	TTSymbolPtr							ttClassName;				///< The name of the class as registered with the TTBlue framework.
	TTValidityCheckFunction				validityCheck;				///< A function to call to validate the context for an object before it is instantiated.
	TTPtr								validityCheckArgument;		///< An argument to pass to the validityCheck function when it is called.
	MaxAudioGraphWrappedClassOptions*	options;					///< Additional configuration options specified for the class.
	t_hashtab*							maxNamesToTTNames;			///< names may not be direct mappings, as we downcase the first letter.
} MaxAudioGraphWrappedClass;



class MaxAudioGraphWrappedClassOptions {
protected:
	TTHash*	options;

public:
	MaxAudioGraphWrappedClassOptions()
	{
		options = new TTHash;
	}
	
	virtual ~MaxAudioGraphWrappedClassOptions()
	{
		delete options;
	}
	
	TTErr append(const TTSymbolPtr optionName, const TTValue& optionValue)
	{
		return options->append(optionName, optionValue);
	}
	
	/**	Returns an error if the requested option doesn't exist. */
	TTErr lookup(const TTSymbolPtr optionName, TTValue& optionValue)
	{
		return options->lookup(optionName, optionValue);
	}
	
};
	

typedef MaxAudioGraphWrappedClass* MaxAudioGraphWrappedClassPtr;						///< A pointer to a WrappedClass.
typedef MaxAudioGraphWrappedClassOptions* MaxAudioGraphWrappedClassOptionsPtr;			///< A pointer to WrappedClassOptions.


// FUNCTIONS

/**
 Wrap a TTBlue class as a Max class. 
 * @param ttClassName   Name of the Jamoma DSP class that will be wrapped
 * @param maxClassName  Name of the resulting Max external
 * @param c             Pointer to the wrapped class
 */
TTErr wrapAsMaxAudioGraph(TTSymbolPtr ttClassName, char* maxClassName, MaxAudioGraphWrappedClassPtr* c);

/** 
 This version can be passed a method that is called to make sure it is legit to instantiate the class. 
 * @param ttClassName   Name of the Jamoma DSP class that will be wrapped
 * @param maxClassName  Name of the resulting Max external
 * @param c             Pointer to the wrapped class
 * @param validityCheck
 */
TTErr wrapAsMaxAudioGraph(TTSymbolPtr ttClassName, char* maxClassName, MaxAudioGraphWrappedClassPtr* c, TTValidityCheckFunction validityCheck);

/**
 This version can be passed a method that is called to make sure it is legit to instantiate the class. 
 * @param ttClassName   Name of the Jamoma DSP class that will be wrapped
 * @param maxClassName  Name of the resulting Max external
 * @param c             Pointer to the wrapped class
 * @param validityCheck
 * @param validityCheckArgument
 */
TTErr wrapAsMaxAudioGraph(TTSymbolPtr ttClassName, char* maxClassName, MaxAudioGraphWrappedClassPtr* c, TTValidityCheckFunction validityCheck, TTPtr validityCheckArgument);


// These are versions of the above, but for which additional options can be specified.

/** Wrap a TTBlue class as a Max class. */
TTErr wrapAsMaxAudioGraph(TTSymbolPtr ttblueClassName, char* maxClassName, MaxAudioGraphWrappedClassPtr* c, MaxAudioGraphWrappedClassOptionsPtr options);

/** This version can be passed a method that is called to make sure it is legit to instantiate the class. */
TTErr wrapAsMaxAudioGraph(TTSymbolPtr ttblueClassName, char* maxClassName, MaxAudioGraphWrappedClassPtr* c, TTValidityCheckFunction validityCheck, MaxAudioGraphWrappedClassOptionsPtr options);

/** 
 This version can be passed a method that is called to make sure it is okay to instantiate the class. 
 This is useful, for example, if you need to have copy-protection for your external.
 * @param ttClassName           Name of the Jamoma Audio Graph class that will be wrapped.
 * @param maxClassName          Name of the resulting Max external.
 * @param c                     Address to a variable to hold the wrapped Max class upon return.
 * @param validityCheck			Pointer to a function that will return a true or false regarding whether or not it is okay to instantiate the object.
 * @param validityCheckArgument	An argument that will be passed to the validity check function, or NULL if you don't wish to pass an argument.
 * @param options               Pointer to additional options that will be forwarded to the wrapped object when instantiated.
 */
TTErr wrapAsMaxAudioGraph(TTSymbolPtr ttblueClassName, char* maxClassName, MaxAudioGraphWrappedClassPtr* c, TTValidityCheckFunction validityCheck, TTPtr validityCheckArgument, MaxAudioGraphWrappedClassOptionsPtr options);



/** 
 Method called when a connection from an upstream node is dropped
 * @param self                  This Max object.
 * @param inletNumber           The inlet of this object who is now loosing a connection.
 * @param sourceMaxObject       The upstream (source) object who is now disconnecting.
 * @param sourceOutletNumber    The outlet of the source object that is now being disconnected.
 */
TTErr MaxAudioGraphDrop(ObjectPtr self, long inletNumber, ObjectPtr sourceMaxObject, long sourceOutletNumber);

/**
 Returns a pointer to the Jamoma Audio Graph object that is wrapped by this Max object.
 * @param self                      This Max object.
 * @param returnedAudioGraphObject	Pointer to the wrapped Jamoma Audio Graph object.
 */
TTErr MaxAudioGraphObject(ObjectPtr self, TTAudioGraphObjectPtr* returnedAudioGraphObject);

/** 
 Method called when an upstream node is connected to this node
 * @param x						This Max object.
 * @param audioSourceObject     The upstream object/node that is now connecting
 * @param sourceOutletNumber    What outlet of the upstream object that is now connecting to this object
 */
TTErr MaxAudioGraphConnect(ObjectPtr x, TTAudioGraphObjectPtr audioSourceObject, TTUInt16 sourceOutletNumber);

/** 
 Clear the list of source objects from which this object will try to pull audio
 * @param x				This Max object.
 * @param vectorSize    Initial vector size, might be overruled by subsequent process calls.
 */
TTErr MaxAudioGraphReset(ObjectPtr x, long vectorSize);

/** 
 Set up fresh connections from this object to nodes that are connected downstream
 * @param self          This Max object.
 */
TTErr MaxAudioGraphSetup(ObjectPtr self);


#endif // __TT_MAX_AUDIOGRAPH_H__

