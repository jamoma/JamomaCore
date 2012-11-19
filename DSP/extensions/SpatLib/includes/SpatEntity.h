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
	
	TTFLoat64 position[3];		///< Position as Cartesian coordinates
	TTFLoat64 orientation[4];	///< The orientation of the object using Euler coordinates
	
protected:
	
	
	
public:
	
	TTSpatEntity();
	
	~TTSpatEntity();
	
	void getPosition(TTFLoat64& x, TTFLoat64& y, TTFLoat64& z);
	
	void setPosition(TTFLoat64 x, TTFLoat64 y, TTFLoat64 z);
	
	void getOrientation(TTFLoat64& q1, TTFLoat64& q2, TTFLoat64& q3, TTFLoat64& q4);
	
	void setOrientation(TTFLoat64 q1, TTFLoat64 q2, TTFLoat64 q3, TTFLoat64 q4);
}



typedef std::vector<TTSpatEntity> TTSpatEntityVector;
