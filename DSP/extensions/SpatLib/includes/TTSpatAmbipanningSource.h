/** @file
 *
 * @ingroup dspSpatLib
 *
 * @brief The #TTSpatAmbipanningSource class provides an extended description of a source as compared to the #TTSpatSource class that it inherits from.
 *
 * @details It is extended to describe source width.
 *
 * @authors Trond Lossius, Timothy Place, Nils Peters,
 *
 * @copyright Copyright © 2011 by Trond Lossius, Nils Peters, and Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __SPATAmbipanningSOURCE_H__
#define __SPATAmbipanningSOURCE_H__

#include "TTDSP.h"
#include "TTSpatEntity.h"


class TTSpatAmbipanningSource : public TTSpatSource {
	
public:
	
	TTSpatAmbipanningSource();
	~TTSpatAmbipanningSource();
	
	/** Order of ambipanning processing
	 */
	void getOrder(TTFloat64& aOrder);
	/** Order of ambipanning processing
	 */
	void setOrder(TTFloat64 aOrder);
	
	
};


/** Pointer to a vector of #TTSpatEntity points.
 @ingroup typedefs
 */
typedef std::vector<TTSpatAmbipanningSource>	TTSpatAmbipanningSourceVector;



#endif // __SPATAmbipanningSOURCE_H__
