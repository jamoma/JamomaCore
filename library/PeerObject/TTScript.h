/* 
 * A Script Object
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_SCRIPT_H__
#define __TT_SCRIPT_H__

#include "TTModular.h"

/**	TTScript ... TODO : an explanation
 
 
 */

/** About line schemas :
 
	kTTSym_command : 
		address : a TTNodeAddress
		value : the value to send
		unit : the unit to use
		ramp : a ramp time
 
	kTTSym_comment : 
		value : the comment
 
	kTTSym_flag : 
		name : the name of the flag
		value : a TTvalue containing any extra info relative to this flag
 
 */

class TTMODULAR_EXPORT TTScript : public TTDataObject
{
	TTCLASS_SETUP(TTScript)
	
private:
	
	TTListPtr			mLines;				///< a linked list containing all lines of the script
	
	TTObjectPtr			mSubScript;			///< the current sub script to manage
	TTObjectPtr			mParentScript;		///< the current parent script to manage (usefull for ReadFrom method)
	
	/** */
	TTErr	getLines(TTValue& value);
	
	/**	Clear all lines of the script	*/
	TTErr	Clear();
	
	/**	Run all command lines of the script (considering also wait flag lines) */
	TTErr	Run(const TTValue& inputValue, TTValue& outputValue);
	
	/**	Process all command lines of the script to bind on each TTObject.
		This is usefull for client which have to manage lines depending on their object */
	TTErr	Bind(const TTValue& inputValue, TTValue& outputValue);
	
	/**	Append anything line to the script (a parsing will find which kind of line it is)	*/
	TTErr	Append(const TTValue& newLine, TTValue& outputValue);
	
	/**	Append a command line to the script and output the dictionnary associated to the parsed line
		<address, value, unit, ramp, ...>	*/
	TTErr	AppendCommand(const TTValue& newCommand, TTValue& outputValue);
	
	/**	Append a comment line to the script and output the dictionnary associated to the parsed line
		<comment>	*/
	TTErr	AppendComment(const TTValue& newComment, TTValue& outputValue);
	
	/**	Append a flag line to the script and output the dictionnary associated to the parsed line
		<name, arg1, arg2, ...>	*/
	TTErr	AppendFlag(const TTValue& newflagAndArguments, TTValue& outputValue);
	
	/**	Append a sub script */
	TTErr	AppendScript(const TTValue& newScript, TTValue& outputValue);
	
	/**  needed to be handled by a TTXmlHandler	*/
	TTErr	WriteAsXml(const TTValue& inputValue, TTValue& outputValue);
	TTErr	ReadFromXml(const TTValue& inputValue, TTValue& outputValue);
	
	/**  needed to be handled by a TTTextHandler	*/
	TTErr	WriteAsText(const TTValue& inputValue, TTValue& outputValue);
	TTErr	ReadFromText(const TTValue& inputValue, TTValue& outputValue);
	
	friend	TTErr TTMODULAR_EXPORT TTScriptInterpolate(TTScriptPtr script1, TTScriptPtr script2, TTFloat64 position);
	friend	TTErr TTMODULAR_EXPORT TTScriptMix(const TTValue& scripts, const TTValue& factors);
	friend	TTErr TTMODULAR_EXPORT TTScriptMerge(TTScriptPtr scriptToMerge, TTScriptPtr mergedScript);
	friend	TTErr TTMODULAR_EXPORT TTScriptOptimize(TTScriptPtr aScriptToOptimize, TTScriptPtr aScript, TTScriptPtr optimizedScript);
	
};

typedef TTScript* TTScriptPtr;


/* Parse a value into a comment, a flag or a command line.
   Returns NULL in case of error */
TTDictionaryPtr TTMODULAR_EXPORT TTScriptParseLine(const TTValue& newLine);

/* Parse a value into a comment line 
   Returns NULL in case of error */
TTDictionaryPtr TTMODULAR_EXPORT TTScriptParseComment(const TTValue& newComment);

/* Parse a value into a flag line 
   Returns NULL in case of error */
TTDictionaryPtr TTMODULAR_EXPORT TTScriptParseFlag(const TTValue& newflagAndArguments);

/* Parse a value into a command line. 
   Returns NULL in case of error */
TTDictionaryPtr TTMODULAR_EXPORT TTScriptParseCommand(const TTValue& newCommand);

/* Parse a value into a sub script line. 
   Returns NULL in case of error */
TTDictionaryPtr TTMODULAR_EXPORT TTScriptParseScript(const TTValue& newScript);

/* Interpolate between two scripts
   note : we assume that the Bind method have been called before on the two scripts */
TTErr			TTMODULAR_EXPORT TTScriptInterpolate(TTScriptPtr script1, TTScriptPtr script2, TTFloat64 position);

/* Mix several scripts together
   note : we assume that the Bind method have been called before on each scripts */
TTErr			TTMODULAR_EXPORT TTScriptMix(const TTValue& scripts, const TTValue& factors);
TTFloat64		TTMODULAR_EXPORT TTScriptMixLine(TTDictionaryPtr lineToMix, TTSymbol dataType, TTUInt32 mixSize, TTFloat64 factor, TTValue& mixedValue, TTBoolean init=NO);

/* Merge a script into another without redundant command lines */
TTErr			TTMODULAR_EXPORT TTScriptMerge(TTScriptPtr scriptToMerge, TTScriptPtr mergedScript);

/* Optimize a script comparing to another to remove redundant command lines */
TTErr			TTMODULAR_EXPORT TTScriptOptimize(TTScriptPtr aScriptToOptimize, TTScriptPtr aScript, TTScriptPtr optimizedScript);

/* a TTFunctionMatch to find a line in the script depending on the object it binds */
void			TTMODULAR_EXPORT TTScriptFindObject(const TTValue& lineValue, TTPtr objectPtrToMatch, TTBoolean& found);

/* a TTFunctionMatch to find a line in the script depending on the address */
void			TTMODULAR_EXPORT TTScriptFindAddress(const TTValue& lineValue, TTPtr addressPtrToMatch, TTBoolean& found);

/* Copy a line */
TTDictionaryPtr	TTMODULAR_EXPORT TTScriptCopyLine(TTDictionaryPtr lineTocopy);


#endif // __TT_SCRIPT_H__
