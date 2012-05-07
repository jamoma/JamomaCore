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
	
	TTValue				mNamespace;			///< ATTRIBUTE : the set of addresses being in the script
	TTNodeAddressPtr	mContainerAddress;	///< AATRIBUTE : to allow the script to work using relative address
	
	TTListPtr			mLines;				///< a linked list containing all lines of the script
	TTBoolean			mInFold;			///< is the script inside a fold ? (we assume that a fold is closed before to open a new one)
	
	TTObjectPtr			mContainer;			///< to allow the script to work using relative address
	
	/**	get the set of addresses being in the script */
	TTErr	getNamespace(TTValue& value);
	
	/**	set address to use in case of relative address command	*/
	TTErr	setContainerAddress(const TTValue& value);
	
	/**	Clear all lines of the script	*/
	TTErr	Clear();
	
	/**	Run all command lines of the script (considering also wait flag lines) */
	TTErr	Run(const TTValue& newLine, TTValue& outputValue);
	
	/**	Append anything line to the script (a parsing will find which kind of line it is)	*/
	TTErr	Append(const TTValue& newLine, TTValue& outputValue);
	
	/**	Append a command line to the script
		<address, value, unit, ramp, ...>	*/
	TTErr	AppendCommand(const TTValue& newCommand, TTValue& outputValue);
	
	/**	Append a comment line to the script
		<comment>	*/
	TTErr	AppendComment(const TTValue& newComment, TTValue& outputValue);
	
	/**	Append a flag line to the script
		<name, arg1, arg2, ...>	*/
	TTErr	AppendFlag(const TTValue& newflagAndArguments, TTValue& outputValue);
	
	/**  needed to be handled by a TTXmlHandler	*/
	TTErr	WriteAsXml(const TTValue& inputValue, TTValue& outputValue);
	TTErr	ReadFromXml(const TTValue& inputValue, TTValue& outputValue);
	
	/**  needed to be handled by a TTTextHandler	*/
	TTErr	WriteAsText(const TTValue& inputValue, TTValue& outputValue);
	TTErr	ReadFromText(const TTValue& inputValue, TTValue& outputValue);
	
	/**  needed to be handled by a TTBufferHandler */
	TTErr	WriteAsBuffer(const TTValue& inputValue, TTValue& outputValue);
	TTErr	ReadFromBuffer(const TTValue& inputValue, TTValue& outputValue);
	
	
	TTSymbolPtr parseFlagName(TTSymbolPtr toParse);

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

/* Parse parenthesis around a flag name : (flagName) returns flagName */
TTSymbolPtr		TTMODULAR_EXPORT TTScriptParseFlagName(TTSymbolPtr toParse);

#endif // __TT_SCRIPT_H__
