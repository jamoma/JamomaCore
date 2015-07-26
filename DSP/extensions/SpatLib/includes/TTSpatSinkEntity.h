/** @file
 *
 * @ingroup dspSpatLib
 *
 * @brief #TTSpatSinkEntity describes the geometry of a point, and #TTSpatSource and #TTSpatSink specialise this further for the description of sources and sinks.
 *
 * @details
 *
 * @authors Trond Lossius, Timothy Place, Nils Peters, 
 *
 * @copyright Copyright © 2011 by Trond Lossius, Nils Peters, and Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __SPATSINKENTITY_H__
#define __SPATSINKENTITY_H__

#include "TTDSP.h"
#include <array>


/** The #TTSpatSink class extends and specialise the #TTSpatEntity class to provide attributes and methods suitable for the description of a sink.
 @details		Actually #TTSpatSink provides no specialization at this time
 */
class TTSpatSinkEntity : public TTSpatEntity {
	// no specialization at this time
	
	// TODO: Weights for DBAP ....
};


/** Pointer to a vector of #TTSpatSinkEntity points.
 @ingroup typedefs
 */
//typedef std::vector<TTSpatEntity>	TTSpatEntityVector;
typedef std::vector<TTSpatSinkEntity>		TTSpatSinkVector;



#endif // __SPATSINKENTITY_H__
