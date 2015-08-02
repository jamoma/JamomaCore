/** @file
 *
 * @ingroup dspSpatLib
 *
 * @brief #TTSpatEntity describes the geometry of a point, and #TTSpatSource and #TTSpatSink specialise this further for the description of sources and sinks.
 *
 * @details
 *
 * @authors Trond Lossius, Timothy Place, Nils Peters,  Jan Schacher
 *
 * @copyright Copyright © 2011 by Trond Lossius, Nils Peters, Timothy Place and Jan Schacher @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __SPATENTITY_H__
#define __SPATENTITY_H__

#include "TTDSP.h"
#include <array>

/** The TTSpatEntity class describes the geometry of a point.
 It can be used to describe a source or a sink, and includes the minimum
 amount of descriptors as defined in the core section of the SpatDIF specs [1].
 [1] www.spatdif.org
 */
class TTSpatEntity {
protected:
	
	std::array<TTFloat64, 3> mPosition;		///< Position as Cartesian coordinates, with x to the right, y forward and z upwards.
	std::array<TTFloat64, 4> mOrientation;	///< The orientation of the object using Euler coordinates
		
public:
	
	/** Constructor.
	 */
	TTSpatEntity();
	
	
	/** Destructor.
	 */
	virtual ~TTSpatEntity();
	
	
	/** Get the current position of the point.
	 @param x				Cartesian x-coordinate of the point.
	 @param y				Cartesian y-coordinate of the point.
	 @param z				Cartesian z-coordinate of the point.
	 */
	void getPosition(TTFloat64& x, TTFloat64& y, TTFloat64& z);
	
	
	/** Set the position of the point.
	 @param x				Cartesian x-coordinate of the point.
	 @param y				Cartesian y-coordinate of the point.
	 @param z				Cartesian z-coordinate of the point.
	 */
	void setPosition(TTFloat64 x, TTFloat64 y, TTFloat64 z);
	
	
	/** Get the orientation of the point expressed as quaternions.
	 @param q1				First coordinate of the point.
	 @param q2				Second coordinate of the point.
	 @param q3				Third coordinate of the point.
	 @param q4				Fourth coordinate of the point.
	 */
	void getOrientation(TTFloat64& q1, TTFloat64& q2, TTFloat64& q3, TTFloat64& q4);
	
	
	/** Set the orientation of the point expressed as quaternions.
	 @param q1				First coordinate of the point.
	 @param q2				Second coordinate of the point.
	 @param q3				Third coordinate of the point.
	 @param q4				Fourth coordinate of the point.
	 */
	void setOrientation(TTFloat64 q1, TTFloat64 q2, TTFloat64 q3, TTFloat64 q4);
};


/** Pointer to a vector of #TTSpatEntity points.
 @ingroup typedefs
 */
typedef std::vector<TTSpatEntity>	TTSpatEntityVector;


#endif // __SPATENTITY_H__
