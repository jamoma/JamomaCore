/** @file
 *
 * @ingroup foundationDataspaceLib
 *
 * @brief Specification for #TTDataspace, the base class of each dataspace.
 *
 * @authors Tim Place, Trond Lossius, ...
 *
 * @copyright Copyright © 2007 by Tim Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __TTDATASPACE_H__
#define __TTDATASPACE_H__

#include "TTDataspaceLib.h"
#include "TTDataspaceUnit.h"


/** Base class for each dataspace.
 */
class TTDataspace {
	
	/** Pointer to the input unit as a #TTObjectBasePtr.
	 @details We maintain individual pointers to the two base-classes for dataspace units so we can quickly access both without expensive casting during operation(multiple-inheritance).
	 */
	TTObjectBasePtr		inUnitTT;
	
	/** Pointer to the input unit as a #TTDataspaceUnitPtr.
	 @details We maintain individual pointers to the two base-classes for dataspace units so we can quickly access both without expensive casting during operation(multiple-inheritance).
	 */
	TTDataspaceUnitPtr  inUnit;
	
	/** Pointer to the output unit as a #TTObjectBasePtr.
	 @details We maintain individual pointers to the two base-classes for dataspace units so we can quickly access both without expensive casting during operation(multiple-inheritance).
	 */
	TTObjectBasePtr		outUnitTT;
	
	/** Pointer to the output unit as a #TTDataspaceUnitPtr.
	 @details We maintain individual pointers to the two base-classes for dataspace units so we can quickly access both without expensive casting during operation(multiple-inheritance).
	 */
	TTDataspaceUnitPtr  outUnit;
	
	/** Hash table lockup for this dataspace, for fast access to dataspace units.
	 */
	TTHashPtr			unitHash;
	
public:
	
	TTSymbol			neutralUnit;	///< The neutral unit of the dataspace as a symbol.
	
	/** Constructor.
	 */
	TTDataspace();
	
	/** Destructor.
	 */
	virtual ~TTDataspace();


	/**
	 @brief Converts a value from one unit to another.
	 @details				Internally in the dataspace the conversion is done in two steps: First the input value is converted to the neutral unit, and that value is then converted to the output value. If a dataspace has N alternative units, this prevents us from having to provide NxN methods for conversions. Instead we make do with 2xN methods, making the DataspaceLib more manageable and scaleable.
	 @param input			The input value, described using the input unit.
	 @param output			The output value, converted to the output unit.
	 @return				#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr convert(const TTValue& input, TTValue& output);

	
	/** Set the input unit type for this dataspace object by it's name as a symbol.
	 @param inUnitName		The input unit type for this dataspace object as a symbol.
	 @return				#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setInputUnit(TTSymbol& inUnitName);
	
	
	/** Get the input unit type for this dataspace object as a symbol.
	 @return				Input unit type for this dataspace object as a symbol.
	 */
	TTSymbol& getInputUnit();

	
	/** Set the output unit type for this dataspace object by it's name as a symbol.
	 @param outUnitName		The input unit type for this dataspace object as a symbol.
	 @return				#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setOutputUnit(TTSymbol& outUnitName);
	
	/** Get the output unit type for this dataspace object as a symbol.
	 @return				Output unit type for this dataspace object as a symbol.
	 */
	TTSymbol& getOutputUnit();

	
	/** Return a list of all available units for this dataspace.
	 @param unitNames		Returns a list of all available units for this dataspace.
	 @return				#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr getAvailableUnits(TTValue& unitNames);
	
protected:
	/** Called by subclasses to register units with the dataspace.
	 @param className
	 @param unitName
	 */
	void registerUnit(const TTSymbol& className, const TTSymbol& unitName);

};

typedef TTDataspace* TTDataspacePtr;


#endif // __TTDATASPACE_H__
