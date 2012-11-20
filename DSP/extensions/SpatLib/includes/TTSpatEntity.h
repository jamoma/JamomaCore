/** @file
 *
 * @ingroup dspSpatLib
 *
 * @brief Describe the geometry of a point
 *
 * @details This can be used to describe the sources or sinks of sound spatialisation renderers, etc.
 *
 * @authors Trond Lossius, Timothy Place, Nils Peters, 
 *
 * @copyright Copyright © 2011 by Trond Lossius, Nils Peters, and Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTDSP.h"


/** The TTSpatEntity class describes the geometry of a point.
 It can be used to describe a source or a sink, and includes the minimum
 amount of descriptors as defined in the core section of the SpatDIF specs.
 */
class TTSpatEntity {
	
	TTFloat64 position[3];		///< Position as Cartesian coordinates
	TTFloat64 orientation[4];	///< The orientation of the object using Euler coordinates
	
protected:
	
	
	
public:
	
	/** Constructor.
	 */
	TTSpatEntity();
	
	
	/** Destructor.
	 */
	~TTSpatEntity();
	
	
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
typedef std::vector<TTSpatEntity> TTSpatEntityVector;
