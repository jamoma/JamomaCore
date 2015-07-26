/** @file
 *
 * @ingroup dspSpatLib
 *
 * @brief #TTSpatEntity describes the geometry of a point, and #TTSpatSource and #TTSpatSink specialise this further for the description of sources and sinks.
 *
 * @details
 *
 * @authors Trond Lossius, Timothy Place, Nils Peters, 
 *
 * @copyright Copyright © 2011 by Trond Lossius, Nils Peters, and Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __SPATSOURCEENTITY_H__
#define __SPATSOURCEENTITY_H__

#include "TTDSP.h"
#include <array>


/** The #TTSpatSource class extends and specialise the #TTSpatEntity class to provide attributes and methods suitable for the description of a source.
 @details		Actually #TTSpatSource provides no specialization at this time
 */
class TTSpatSourceEntity : public TTSpatEntity {
	TTFloat64				width;			// SpatDIF Core compliant
	TTFloat64				order;			// Used by ambipanning
};


/** Pointer to a vector of #TTSpatSourceEntity points.
 @ingroup typedefs
 */
typedef std::vector<TTSpatSourceEntity>	TTSpatSourceVector;



#endif // __SPATSOURCEENTITY_H__
