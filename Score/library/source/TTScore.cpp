/** @file
 *
 * @ingroup scoreLibrary
 *
 * @brief the Score Application Programming Interface
 *
 * @details The Score API allows to simply includes all the files needed to use Score inside another application @n@n
 *
 * @see TTScore
 *
 * @authors Théo de la Hogue & Clément Bossut
 *
 * @copyright Copyright © 2013, Théo de la Hogue & Clément Bossut @n
 * This code is licensed under the terms of the "CeCILL-C" @n
 * http://www.cecill.info
 */

#include "TTScore.h"
#include "TTScore.test.h"

#if 0
#pragma mark -
#pragma mark Initialisation
#endif

// is the Score library have been initilialized ?
static bool TTScoreInitialized = false;

#ifdef TT_PLATFORM_LINUX
int main(void)
{
	return 0;
}
#endif

void TTScoreInit(const char* binaries)
{
    // Initialized Foundation framework
	TTFoundationInit(binaries);
    
	if (!TTScoreInitialized) {
		
		TTScoreInitialized = true;
		
		// register classes -- both internal and external
        TTCurve::registerClass();
        TTTimeCondition::registerClass();
        TTTimeContainer::registerClass();
        TTTimeEvent::registerClass();
        TTTimeProcess::registerClass();
        
		TTScoreTest::registerClass();
        
#ifdef TT_DEBUG
		TTLogMessage("Score -- Version %s -- Debugging Enabled\n", TTSCORE_VERSION_STRING);
#else
		TTLogMessage("Score -- Version %s\n", TTSCORE_VERSION_STRING);
#endif
        
	}
}