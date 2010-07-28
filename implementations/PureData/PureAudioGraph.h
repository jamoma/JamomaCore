/* 
 *	PureAudioGraph
 *	A thin wrapper of Jamoma AudioGraph for use in the PureData environment.
 *	Includes an automated class wrapper to make Jamoma DSP objects available as objects for Pd.
 *	Copyright © 2010 by Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __PURE_AUDIOGRAPH_H__
#define __PURE_AUDIOGRAPH_H__

#include "m_pd.h"
#include "TTAudioGraphAPI.h"			// Definitions for Jamoma AudioGraph



// TYPE DEFINITIONS

typedef t_class*	ClassPtr;
typedef t_object	Object;
typedef t_object*	ObjectPtr;
typedef t_symbol*	SymbolPtr;
typedef	t_atom		Atom;
typedef t_atom*		AtomPtr;
typedef long		AtomCount;
typedef int			MaxErr;
#ifndef SELF
#define SELF ObjectPtr(self)
#endif

typedef TTErr (*TTValidityCheckFunction)(const TTPtr data);		///< A type that can be used to store a pointer to a validity checking function.

class WrappedClassOptions;

typedef struct _wrappedClass {
	ClassPtr				maxClass;							///< The Max class pointer.
	SymbolPtr				maxClassName;						///< The name to give the Max class.
	TTSymbolPtr				ttClassName;						///< The name of the class as registered with the TTBlue framework.
	TTValidityCheckFunction validityCheck;						///< A function to call to validate the context for an object before it is instantiated.
	TTPtr					validityCheckArgument;				///< An argument to pass to the validityCheck function when it is called.
	WrappedClassOptions*	options;							///< Additional configuration options specified for the class.
//	t_hashtab*				maxAttrNamesToTTAttrNames;			///< names may not be direct mappings, as we downcase the first letter.
	TTHashPtr				pdAttrNamesToTTAttrNames;
} WrappedClass;



class WrappedClassOptions {
protected:
	TTHash*	options;

public:
	WrappedClassOptions()
	{
		options = new TTHash;
	}
	
	virtual ~WrappedClassOptions()
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
	

typedef WrappedClass* WrappedClassPtr;							///< A pointer to a WrappedClass.
typedef WrappedClassOptions* WrappedClassOptionsPtr;			///< A pointer to WrappedClassOptions.


// FUNCTIONS

// Wrap a TTBlue class as a Max class.
TTErr wrapAsMaxAudioGraph(TTSymbolPtr ttClassName, char* maxClassName, WrappedClassPtr* c);

// This version can be passed a method that is called to make sure it is legit to instantiate the class.
TTErr wrapAsMaxAudioGraph(TTSymbolPtr ttClassName, char* maxClassName, WrappedClassPtr* c, TTValidityCheckFunction validityCheck);

// This version can be passed a method that is called to make sure it is legit to instantiate the class.
TTErr wrapAsMaxAudioGraph(TTSymbolPtr ttClassName, char* maxClassName, WrappedClassPtr* c, TTValidityCheckFunction validityCheck, TTPtr validityCheckArgument);


// These are versions of the above, but for which additional options can be specified.
TTErr wrapAsMaxAudioGraph(TTSymbolPtr ttblueClassName, char* maxClassName, WrappedClassPtr* c, WrappedClassOptionsPtr options);
TTErr wrapAsMaxAudioGraph(TTSymbolPtr ttblueClassName, char* maxClassName, WrappedClassPtr* c, TTValidityCheckFunction validityCheck, WrappedClassOptionsPtr options);
TTErr wrapAsMaxAudioGraph(TTSymbolPtr ttblueClassName, char* maxClassName, WrappedClassPtr* c, TTValidityCheckFunction validityCheck, TTPtr validityCheckArgument, WrappedClassOptionsPtr options);


// NOTE: DUPLICATIONS FROM THE MSP WRAPPER

#ifdef __LP64__
TTInt64	AtomGetInt(AtomPtr a);
#else
int AtomGetInt(AtomPtr a);
#endif


#endif // __PURE_AUDIOGRAPH_H__

