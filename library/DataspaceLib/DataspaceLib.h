/* 
 * Jamoma DataspaceLib Base Class
 * Copyright © 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __DATASPACELIB_H__
#define __DATASPACELIB_H__

#ifdef WIN_VERSION
 #pragma warning(disable:4083) //warning C4083: expected 'newline'; found identifier 's'
#endif // WIN_VERSION

#include "TTModular.h"

// Constants used for trigonometric convertions:
static const double kRadiansToDegrees = 180.0 / 3.141592653589793238462643383279502884197169399375105820974944592307816406286208998628034825342117068;
static const double kDegreesToRadians = 3.141592653589793238462643383279502884197169399375105820974944592307816406286208998628034825342117068 / 180.0;

// This coeff is used in GainDataspace mapping MIDI to and from linear gain 
// so that MIDI=100 equals 0 dB and MIDI = 127 equals +10 dB
static const double kGainMidiPower = log(pow(10.,10./20.))/log(127./100.);
static const double kGainMidiPowerInv = 1./kGainMidiPower;

// This coeff is used for some of the color convertions:
static const double inv255 = 1./255.;




/****************************************************************************************************/
// Class Specification


// Specification for the base class of each DataspaceUnit
// A DataspaceUnit converts from a specific unit to a neutral unit
// and is used by a DataspaceLib to do a conversion
class TTMODULAR_EXPORT DataspaceUnit {
	
	public:
		TTSymbolPtr	name;				/// < name of this unit

		/** Constructor. Must be passed the name of this DataspaceUnit as a C-string. */
		DataspaceUnit(const char *cName);
		
		/** Destructor */
		virtual ~DataspaceUnit();
		
		/** Converts from an actual unit to a 'neutral' unit that can be interpreted by other units within this dataspace.
			This must be defined by a sub-class.*/
		virtual void convertToNeutral(const TTValue& inValue, TTValue& neutralValue) = 0;
		//virtual void convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output) = 0;

		/** Converts from a neutral unit back to an actual unit. 
			This must be defined by a sub-class.*/
		virtual void convertFromNeutral(TTValue& neutralValue, TTValue& outValue) = 0;
		//virtual void convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms) = 0;
};



// Specification of our base class
class TTMODULAR_EXPORT DataspaceLib {
	
	private:
		DataspaceUnit	*inUnit;
		DataspaceUnit	*outUnit;
		TTHashPtr		unitHash;

	protected:
		void		registerUnit(void *unit, TTSymbolPtr unitName);
		
	public:
		TTSymbolPtr		neutralUnit;
		TTSymbolPtr		name;

		/** Constructor. 
			This constructor maintains a cache of all DataspaceUnits that are associated with
			the given dataspace.  To maintain the cache, the subclasses must register each unit.
			@param cName		The name of the total Dataspace as a C-string
			@param cNativeUnit	The name of the neutral unit that is used for translating
								between units within this Dataspace. */
		DataspaceLib(const char *cName, const char *cNeutralUnit);
		
		/** Destructor. */
		virtual ~DataspaceLib();

		/** converts input to output, possibly doing a unit conversion. */
		TTErr		convert(const TTValue& inValue, TTValue& outValue);
		// could also create a class that wraps a unit with it's dataspace information and args and whateverelse
		// and then have an alternative (overridden) version of the convert method
		
		/** set the input unit type for this dataspace object by it's name as a symbol */
		TTErr		setInputUnit(TTSymbolPtr inUnitName);

		/** set the output unit type for this dataspace object by it's name as a symbol */
		TTErr		setOutputUnit(TTSymbolPtr outUnitName);
		
		/** return a list of all available units for this dataspace */
		void		getAvailableUnits(TTValue& unitNames);
};


extern "C" {

	/** Create a dataspace object by specifying the name of the dataspace you want as a symbol.
	 @param	dataspaceName				..
	 @param	dataspace					..
	 @return							an error code */
	TTErr TTMODULAR_EXPORT	getDataspace(TTSymbolPtr dataspaceName, DataspaceLib **dataspace);

	/** Get a list of names of all the available dataspaces.  
		The caller of this function is responsible for freeing memory allocated by this call.
	 @param	dataspaceNames				.. */
	void TTMODULAR_EXPORT	getDataspaceList(TTValue& dataspaceNames);

}

#endif // __DATASPACELIB_H__
