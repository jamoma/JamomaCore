/** @file
 *
 * @ingroup dspSpatLib
 *
 * @brief Describe the geometry of a point
 *
 * @details This can be used to describe sources or sinks.
 *
 * @authors Trond Lossius, Timothy Place, Nils Peters, 
 *
 * @copyright Copyright © 2011 by Trond Lossius, Nils Peters, and Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTDSP.h"


/** This class describes the geometry of a point.
 It can be used to describe a source or a sink, and includes the minimum
 amount of descriptors as defined in the core section of the SpatDIF specs.
 */
class TTSpatEntity {
	
	TTFloat64 position[3];		///< Position as Cartesian coordinates
	TTFloat64 orientation[4];	///< The orientation of the object using Euler coordinates
	
protected:
	
	
	
public:
	
	TTSpatEntity();
	
	~TTSpatEntity();
	
	void getPosition(TTFloat64& x, TTFloat64& y, TTFloat64& z);
	
	void setPosition(TTFloat64 x, TTFloat64 y, TTFloat64 z);
	
	void getOrientation(TTFloat64& q1, TTFloat64& q2, TTFloat64& q3, TTFloat64& q4);
	
	void setOrientation(TTFloat64 q1, TTFloat64 q2, TTFloat64 q3, TTFloat64 q4);
};



typedef std::vector<TTSpatEntity> TTSpatEntityVector;
