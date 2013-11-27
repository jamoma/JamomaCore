/** @file
 *
 * @ingroup foundationDataspaceLib
 *
 * @brief Specification for #TTDataspaceConverter, the base class of dataspace converters. TODO: Could this be made more descriptive, making it easier to understand how this is distinguished as compared to TTDataspace and TTDataspaceUnit?
 *
 * @authors Tim Place, Trond Lossius, ...
 *
 * @copyright Copyright © 2007 by Tim Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TTDATASPACECONVERTER_H__
#define __TTDATASPACECONVERTER_H__

#include "TTDataspace.h"


/** TODO: What is the purpose of this class as compared to TTDataspace and TTdataspaceUnit?
 */
class TTDataspaceConverter : public TTDataObjectBase {
	TTCLASS_SETUP(TTDataspaceConverter)
	
	TTSymbol			mDataspace;			///< TODO
	TTObjectBasePtr		mDataspaceTTObject;	///< TODO - TTObject
	TTDataspacePtr		mDataspaceObject;	///< The above, cast to it's other parent class. TODO: This needs to be more descriptive.
	
	
	/** Set what dataspace to use.
	 @param newValue				The dataspace to use
	 @return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setDataspace(const TTValue& newValue);
	
	
	/** Converts input to output, possibly doing a unit conversion. TODO: How do this method differ from dictionary()?
	 @param anInputValue			The input value that is to be converted.
	 @param anOutputValue			The converted value.
	 @return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr convert(const TTValue& anInputValue, TTValue& anOutputValue);
	
	
	/** Converts input to output, possibly doing a unit conversion. TODO: How do this method differ from convert()?
	 @param anInputValue			TODO
	 @param anOutputValue			TODO
	 @return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr dictionary(const TTValue& anInputValue, TTValue& anOutputValue);

	
	/** Set the input unit type for this dataspace object by it's name as a symbol.
	 @inUnitName					Set the unit used for the input that is to be converted.
	 @return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setInputUnit(const TTValue& inUnitName);
	
	
	/** Get the input unit type for this dataspace object by it's name as a symbol.
	 @param inUnitName				Used to return what unit is used for the input value to the conversion.
	 @return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr getInputUnit(TTValue& inUnitName);

	
	/** Set the output unit type for this dataspace object by it's name as a symbol.
	 @param outUnitName				Set the unit used for the output from the conversion.
	 @return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setOutputUnit(const TTValue& outUnitName);
	
	
	/** Get the output unit type for this dataspace object by it's name as a symbol.
	 @param outUnitName				Used to return what unit is used for the output value from the conversion.
	 @return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr getOutputUnit(TTValue& inUnitName);
	
	
	/** Return a list of all available units for this dataspace.
	 @param anUnusedInoutValue		This is not being used.
	 @param unitNames				Used to return an array providing a list of available units for this dataspace.
	 @return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr getAvailableUnits(const TTValue& anUnusedInputValue, TTValue& unitNames);

	
	/**	Return a list of all dataspaces.
	 @param anUnusedInoutValue		This is not being used.
	 @param dataspaceNames			Used to return an array providing a list of available dataspaces.
	 @return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr getAvailableDataspaces(const TTValue& anUnusedInputValue, TTValue& dataspaceNames);
};


#endif // __TTDATASPACECONVERTER_H__
