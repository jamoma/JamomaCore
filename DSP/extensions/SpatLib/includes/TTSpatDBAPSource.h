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

#ifndef __SPATDBAPSOURCE_H__
#define __SPATDBAPSOURCE_H__

#include "TTDSP.h"



class TTSpatDBAPSource : public TTSpatSource {
	// no specialization at this time
	TTFloat64 mWidth;			///< Width may be expressed in different ways?  Typically a normalized coefficient (0.0 to 1.0)
	
public:
	/** Get the current position of the point.
	 @param x				Cartesian x-coordinate of the point.
	 @param y				Cartesian y-coordinate of the point.
	 @param z				Cartesian z-coordinate of the point.
	 */
	void getWidth(TTFloat64& aWidth);
	
	
	/** Set the position of the point.
	 @param x				Cartesian x-coordinate of the point.
	 @param y				Cartesian y-coordinate of the point.
	 @param z				Cartesian z-coordinate of the point.
	 */
	void setWidth(TTFloat64 aWidth);
	
	
};


/** Pointer to a vector of #TTSpatEntity points.
 @ingroup typedefs
 */
typedef std::vector<TTSpatDBAPSource>	TTSpatDBAPSourceVector;



#endif // __SPATDBAPSOURCE_H__
