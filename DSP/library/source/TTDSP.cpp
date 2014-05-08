/** @file
 *
 * @ingroup dspLibrary
 *
 * @brief Jamoma DSP Library
 *
 * @details
 *
 * @authors Tim Place, Trond Lossius
 *
 * @copyright Copyright © 2008 by Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTDSP.h"

static bool TTDSPHasInitialized = false;

const TTChannelCount kTTMaxChannelsPossible = 65535;



void TTDSPRegisterInternalClasses();


/****************************************************************************************************/

void TTDSPInit(const char* pathToBinaries)
{
	TTFoundationInit(pathToBinaries);
	
	if (!TTDSPHasInitialized) {
		TTDSPHasInitialized = true;
				
		// TODO: someday implement these so that we have project-scoped caches and don't stuff everything into the foundation?
		//TTDSPSymbolCacheInit();
		//TTDSPValueCacheInit();
		
#ifdef TT_DEBUG
		TTLogMessage("JamomaDSP -- Version %s -- Debugging Enabled\n", TTDSP_VERSION_STRING);
#else
		TTLogMessage("JamomaDSP -- Version %s\n", TTDSP_VERSION_STRING);
#endif
		TTDSPRegisterInternalClasses();
	}
}

#ifdef TT_PLATFORM_LINUX
int main(void)
{
	return 0;
}
#endif


/****************************************************************************************************/

// Core
#include "TTAudioObjectArray.h"
#include "TTAudioSignal.h"
#include "TTBuffer.h"
#include "TTDCBlock.h"
#include "TTDelay.h"
#include "TTOperator.h"
#include "TTMixer.h"
#include "TTMultiMixer.h"


void TTDSPRegisterInternalClasses()
{
	TTAudioObjectBaseArray::registerClass();
	TTAudioSignal::registerClass();
	TTAudioSignalArray::registerClass();
	TTBuffer::registerClass();
	TTDCBlock::registerClass();
	TTDelay::registerClass();
	TTOperator::registerClass();
	TTMixer::registerClass();
	TTMultiMixer::registerClass();
	TTSampleMatrix::registerClass();
}


/****************************************************************************************************/

TTErr TTObjectBaseInstantiate(const TTSymbol& className, TTAudioObjectBasePtr* returnedObjectPtr, TTValue& arguments)
{
	return ttEnvironment->createInstance(className, (TTObjectBasePtr*)returnedObjectPtr, arguments);
}


TTErr TTObjectBaseInstantiate(const TTSymbol& className, TTAudioSignalPtr* returnedObjectPtr, TTValue& arguments)
{
	return ttEnvironment->createInstance(className, (TTObjectBasePtr*)returnedObjectPtr, arguments);
}


TTErr TTObjectBaseInstantiate(const TTSymbol& className, TTAudioObjectBasePtr* returnedObjectPtr, const TTValue& arguments)
{
	return ttEnvironment->createInstance(className, (TTObjectBasePtr*)returnedObjectPtr, arguments);
}


TTErr TTObjectBaseInstantiate(const TTSymbol& className, TTAudioSignalPtr* returnedObjectPtr, const TTValue& arguments)
{
	return ttEnvironment->createInstance(className, (TTObjectBasePtr*)returnedObjectPtr, arguments);
}


TTErr TTObjectBaseInstantiate(const TTSymbol& className, TTAudioObjectBasePtr* returnedObjectPtr, const TTUInt16 arguments)
{
	TTValue	v(arguments);
	return ttEnvironment->createInstance(className, (TTObjectBasePtr*)returnedObjectPtr, v);
}


TTErr TTObjectBaseInstantiate(const TTSymbol& className, TTAudioSignalPtr* returnedObjectPtr, const TTUInt16 arguments)
{
	TTValue	v(arguments);
	return ttEnvironment->createInstance(className, (TTObjectBasePtr*)returnedObjectPtr, v);
}




TTAudioObjectBasePtr TTObjectBaseReference(TTAudioObjectBasePtr anObject)
{
	return (TTAudioObjectBasePtr)ttEnvironment->referenceInstance((TTObjectBasePtr)anObject);
}


TTAudioSignalPtr TTObjectBaseReference(TTAudioSignalPtr anObject)
{
	return (TTAudioSignalPtr)ttEnvironment->referenceInstance((TTObjectBasePtr)anObject);
}




TTErr TTObjectBaseRelease(TTAudioObjectBasePtr* anObject)
{
	if (*anObject)
		return ttEnvironment->releaseInstance((TTObjectBasePtr*)anObject);
	else
		return kTTErrNone;
}


TTErr TTObjectBaseRelease(TTAudioSignalPtr* anObject)
{
	if (*anObject)
		return ttEnvironment->releaseInstance((TTObjectBasePtr*)anObject);
	else
		return kTTErrNone;
}

