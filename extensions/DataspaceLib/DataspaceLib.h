/*
 * Jamoma DataspaceLib Base Class
 * Copyright © 2007
 *
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html
 */

#ifndef __DATASPACELIB_H__
#define __DATASPACELIB_H__

//#ifdef WIN_VERSION
// #pragma warning(disable:4083) //warning C4083: expected 'newline'; found identifier 's'
//#endif // WIN_VERSION

#include "TTFoundationAPI.h"


// Macros used to export classes and methods so that we can use linking in performance-critical code
#if defined( TT_PLATFORM_MAC ) or defined ( TT_PLATFORM_LINUX )
	#define TT_DATASPACE_EXPORT TTFOUNDATION_EXPORT
#else
	#ifdef TT_DATASPACE_LIB
		#define TT_DATASPACE_EXPORT __declspec(dllexport)
	#else
		#define TT_DATASPACE_EXPORT __declspec(dllimport)
	#endif
#endif


// Constants used for trigonometric convertions:
static const double kRadiansToDegrees = 180.0 / 3.141592653589793238462643383279502884197169399375105820974944592307816406286208998628034825342117068;
static const double kDegreesToRadians = 3.141592653589793238462643383279502884197169399375105820974944592307816406286208998628034825342117068 / 180.0;

// This coeff is used in GainDataspace mapping MIDI to and from linear gain
// so that MIDI=100 equals 0 dB and MIDI = 127 equals +10 dB
static const double kGainMidiPower = log(pow(10.,10./20.))/log(127./100.);
static const double kGainMidiPowerInv = 1./kGainMidiPower;

// This coeff is used for some of the color convertions:
static const double inv255 = 1./255.;



#define TT_DATASPACELIB_CONSTRUCTOR \
	TTObjectPtr thisTTClass :: instantiate (TTSymbolPtr name, TTValue& arguments) {return new thisTTClass (arguments);} \
	\
	extern "C" void thisTTClass :: registerClass () {TTClassRegister( TT(thisTTClassName), thisTTClassTags, thisTTClass :: instantiate );} \
	\
	thisTTClass :: thisTTClass (TTValue& arguments) : DataspaceLib(arguments)


#define TT_DATASPACEUNIT_CONSTRUCTOR \
	TTObjectPtr thisTTClass :: instantiate (TTSymbolPtr name, TTValue& arguments) {return new thisTTClass (arguments);} \
	\
	extern "C" void thisTTClass :: registerClass () {TTClassRegister( TT(thisTTClassName), thisTTClassTags, thisTTClass :: instantiate );} \
	\
	thisTTClass :: thisTTClass (TTValue& arguments) : DataspaceUnit(arguments)


/****************************************************************************************************/
// Class Specification

// THESE ARE BASE CLASSES AND NEVER DIRECTLY INSTANTIATED -- THEREFORE NOT DIRECTLY REGISTERED WITH THE TTENVIRONMENT


// Specification for the base class of each DataspaceUnit
// A DataspaceUnit converts from a specific unit to a neutral unit
// and is used by a DataspaceLib to do a conversion
class TT_DATASPACE_EXPORT DataspaceUnit : public TTObject {
public:
	friend class TTEnvironment;	

	TTSymbolPtr name;				/// < name of this unit

	/** Constructor. Must be passed the name of this DataspaceUnit as a TTSymbolPtr. */
	DataspaceUnit(TTValue& arguments);

	/** Destructor */
	virtual ~DataspaceUnit();

	/** Converts from an actual unit to a 'neutral' unit that can be interpreted by other units within this dataspace.
		This must be defined by a sub-class.*/
	//virtual void convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output) = 0;
	virtual void convertToNeutral(const TTValue& input, TTValue& output) = 0;

	/** Converts from a neutral unit back to an actual unit.
		This must be defined by a sub-class.*/
	//virtual void convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms) = 0;
	virtual void convertFromNeutral(const TTValue& input, TTValue& output) = 0;
};

typedef DataspaceUnit* DataspaceUnitPtr;



// Specification of our base class
class TT_DATASPACE_EXPORT DataspaceLib : public TTObject {
public:
	friend class TTEnvironment;	

	private:
		DataspaceUnitPtr  inUnit;
		DataspaceUnitPtr  outUnit;
		TTHashPtr		  unitHash;

	protected:
		void registerUnit(void *unit, const TTSymbolPtr unitName);

	public:
		TTSymbolPtr	      neutralUnit;
		TTSymbolPtr		  name;

		/** Constructor.
			This constructor maintains a cache of all DataspaceUnits that are associated with
			the given dataspace.  To maintain the cache, the subclasses must register each unit.
			@param cName		The name of the total Dataspace as a C-string
			@param cNativeUnit	The name of the neutral unit that is used for translating
								between units within this Dataspace. */
		DataspaceLib(TTValue& arguments);
	
		/** Destructor */
		virtual ~DataspaceLib();

/*		JamomaError convert(long		inputNumArgs,
							t_atom		*inputAtoms,
							t_symbol	*inputDataspace,
							long		*outputNumArgs,
							t_atom		**outputAtoms,
							t_symbol	*outputDataspace,
							);
*/

		/** converts input to output, possibly doing a unit conversion.
			EXTREMELY IMPORTANT: We are expecting that **output atoms has its memory passed in already.
			We are not allocating it due to performance considerations */
//		TTErr convert(long		inputNumArgs,
	//						t_atom		*inputAtoms,
		//					long		*outputNumArgs,
			//				t_atom		**outputAtoms
				//			);


        // NOTE: For now we are going to use TTValue as we port from JamomaModular to the foundation...
        // TODO: evaluate performance once we have this working.
        TTErr convert(const TTValue& input, TTValue& output);

		// could also create a class that wraps a unit with it's dataspace information and args and whateverelse
		// and then have an alternative (overridden) version of the convert method

		/** set the input unit type for this dataspace object by it's name as a symbol */
		TTErr setInputUnit(TTSymbolPtr inUnitName);

		/** set the output unit type for this dataspace object by it's name as a symbol */
		TTErr setOutputUnit(TTSymbolPtr outUnitName);

		/** return a list of all available units for this dataspace */
		//void getAvailableUnits(long *numUnits, t_symbol ***unitNames);
		TTErr getAvailableUnits(TTValue& unitNames);
};


//extern "C" {

	/** Create a dataspace object by specifying the name of the dataspace you want as a symbol. */
//	TTErr	jamoma_getDataspace(t_symbol *dataspaceName, DataspaceLib **dataspace);
// TODO: obsolete -- see below

	/** Get a list of names of all the available dataspaces.
		The caller of this function is responsible for freeing memory allocated by this call. */
//	void	jamoma_getDataspaceList(long *numDataspaces, t_symbol ***dataspaceNames);

// TODO: implement using tags when the object is registered


//}

#endif // __DATASPACELIB_H__
