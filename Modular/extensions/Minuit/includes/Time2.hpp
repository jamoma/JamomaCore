/** @file
 *
 * @ingroup modularMinuit
 *
 * @brief It's the Minuit protocol which use the Open Sound Control protocol
 *
 * @details
 *
 * @authors Laurent Garnier, Theo Delahogue
 *
 * @copyright © 2011, LaBRI (http://www.labri.fr) - BlueYeti (http://www.blueyeti.fr) - GMEA (http://www.gmea.net) @n
 * This code is licensed under the terms of the CeCILL-C license as circulated by CEA, CNRS and INRIA at the following URL @n
 * http://www.cecill.info
 */


#ifndef TIME2_HPP_
#define TIME2_HPP_

#include <windows.h>
#include <time.h>

class Time2 {
public:
	int gettimeofday(struct timeval* tp, void* tzp) {
		DWORD t;
		t = timeGetTime();
		tp->tv_sec = t / 1000;
		tp->tv_usec = (t % 1000) * 1000;
		/* 0 indicates that the call succeeded. */
		return 0;
	}
};

#endif
