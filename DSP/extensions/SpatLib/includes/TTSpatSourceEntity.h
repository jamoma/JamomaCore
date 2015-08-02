/** @file
 *
 * @ingroup dspSpatLib
 *
 * @brief #TTSpatSource specialise #TTSpatEntity for the description of sources and sinks.
 *
 * @details
 *
 * @authors Trond Lossius, Timothy Place, Nils Peters, Jan Schacher
 *
 * @copyright Copyright © 2011 by Trond Lossius, Nils Peters, Timothy Place and Jan Schacher @n
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
	
	// Parameters common to many spat renderers
	TTFloat64				width;			///< Source width (SpatDIF Core compliant)
	
	// Parameters specific to one or a few spat renderers
	TTFloat64				order;			///< Ambisonic order - used by ambipanning
};


/** Pointer to a vector of #TTSpatSourceEntity points.
 @ingroup typedefs
 */
typedef std::vector<TTSpatSourceEntity>	TTSpatSourceVector;



#endif // __SPATSOURCEENTITY_H__
