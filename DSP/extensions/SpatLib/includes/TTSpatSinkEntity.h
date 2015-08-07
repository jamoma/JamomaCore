/** @file
 *
 * @ingroup dspSpatLib
 *
 * @brief #TTSpatSink specialise #TTSpatSinkEntity for the description of sinks.
 *
 * @details
 *
 * @authors Trond Lossius, Timothy Place, Nils Peters, Jan Schacher.
 *
 * @copyright Copyright © 2011 by Trond Lossius, Nils Peters, Timothy Place, Jan Shcacher @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __SPATSINKENTITY_H__
#define __SPATSINKENTITY_H__

#include "TTDSP.h"
#include "TTSpatEntity.h"
#include <array>


/** The #TTSpatSink class extends and specialise the #TTSpatEntity class to provide attributes and methods suitable for the description of a sink.
 @details		Actually #TTSpatSink provides no specialization at this time
 */
class TTSpatSinkEntity : public TTSpatEntity {
	
	// No specialization have been introduced so far
	
	// TODO: Weights for DBAP ....
	
public:
	
	TTSpatSinkEntity();
	~TTSpatSinkEntity();
	
};


/** Pointer to a vector of #TTSpatSinkEntity points.
 @ingroup typedefs
 */
//typedef std::vector<TTSpatEntity>	TTSpatEntityVector;
typedef std::vector<TTSpatSinkEntity>		TTSpatSinkVector;



#endif // __SPATSINKENTITY_H__
