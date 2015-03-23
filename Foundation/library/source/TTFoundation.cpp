/*
 * Jamoma Foundation
 * Copyright © 2008, Timothy Place
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTFoundation.h"
#include "TTSymbolTable.h"
#include "TTEnvironment.h"
#include "TTSymbolCache.h"
#include "TTCallback.h"
#include "TTExtensionLoader.h"

// Nodelib currently requires Boost Regex, which we don't have on the iOS
#ifndef DISABLE_NODELIB
#include "TTNodeLib.h"
#include "TTPath.h"
#endif

// Unit Tests
#include "TTMatrixBase.h"
#include "TTMatrixArray.h"
#include "TTObjectTest.h"
#include "TTInterpolate.test.h"
#include "TTString.test.h"
#include "TTSymbol.test.h"
#include "TTValue.test.h"
#include "TTDictionary.test.h"
#include "TTList.test.h"
// Nodelib currently requires Boost Regex, which we don't have on the iOS
#ifndef DISABLE_NODELIB
#include "TTNodeLib.test.h"
#endif


TTString        TTFoundationBinaryPath = "";

static bool		TTFoundationHasInitialized = false;

TTObjectBasePtr	TTFoundationInstantiateInternalClass(TTSymbol className, TTValue& arguments);

/****************************************************************************************************/
void TTFoundationInit(const char* pathToBinaries, bool loadFromOtherPaths)
{
	if (!TTFoundationHasInitialized) {
		TTFoundationHasInitialized = true;

		if (pathToBinaries)
			TTFoundationBinaryPath = pathToBinaries;

		for (int i=0; i<kNumTTDataTypes; i++)
			TTDataInfo::addDataInfoForType(TTDataType(i));

		// Regex requires Boost libraries, not available for iOS for the time-being
#ifndef DISABLE_NODELIB
		TTNodeLibInit();
#endif

		ttEnvironment = new TTEnvironment;

		// Regex requires Boost libraries, not available for iOS for the time-being
		//#ifndef DISABLE_NODELIB
		//		TTAddressCacheInit();
		//#endif

#ifdef TT_DEBUG
		TTLogMessage("JamomaFoundation (TT_DEBUG) -- Version %s", TTFOUNDATION_VERSION_STRING);
		ttEnvironment->mDebugBasic = true;
#else
		TTLogMessage("JamomaFoundation -- Version %s", TTFOUNDATION_VERSION_STRING);
#endif
		if (pathToBinaries)
			TTLogMessage("-- Path %s\n", pathToBinaries);
		else
			TTLogMessage("\n");

		// register classes -- both internal and external
		TTCallback::registerClass();
		TTMatrixBase::registerClass();
		TTMatrixArray::registerClass();
		TTObjectTest::registerClass();
		TTStringTest::registerClass();
		TTSymbolTest::registerClass();
		TTValueTest::registerClass();
		TTInterpolateTest::registerClass();
		TTDictionaryTest::registerClass();
		TTListTest::registerClass();
		// Regex requires Boost libraries, not available for iOS for the time-being
#ifndef DISABLE_NODELIB
		TTNodeLibTest::registerClass();
#endif

		TTLoadExtensions(pathToBinaries, loadFromOtherPaths);
	}
}

void TTFoundationShutdown();
void TTFoundationShutdown()
{
	// FIXME: How do we call this (i.e. TTDSPShutdown()?) -- do we need to setup an observer of some sort on the environment class?
	// TODO: we need to free singletons like the environment here!

	// Note : it is possible to do this using atexit();
}

