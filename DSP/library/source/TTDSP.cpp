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




// This one from http://www.gamedev.net/community/forums/topic.asp?topic_id=315623

TTPtr TTAlignedMalloc(size_t size, int byteAlign)
{
	void *mallocPtr = malloc(size + byteAlign + sizeof(void*));
	size_t ptrInt = (size_t)mallocPtr;
	
	ptrInt = (ptrInt + byteAlign + sizeof(void*)) / byteAlign * byteAlign;
	*(((void**)ptrInt) - 1) = mallocPtr;
	
    return (void*)ptrInt;
}

void TTAlignedFree(void *ptr)
{
	if (ptr)
		free(*(((void**)ptr) - 1));
}



// see http://stackoverflow.com/questions/1919183/how-to-allocate-and-free-aligned-memory-in-c for details
TTPtr TTMalloc16(size_t numBytes) 
{
//	TTPtr	mem = malloc(numBytes + 16 + sizeof(TTPtr));
//	long	l = (long(mem) + 16 + sizeof(TTPtr)) & ~(16-1);
//	TTPtr*	ptr = (TTPtr*) l;
//	ptr[-1] = mem;
//	return ptr;
	return TTAlignedMalloc(numBytes, 16);
}

void TTFree16(TTPtr ptr) 
{
	//   free(((TTPtr*)ptr)[-1]);
	TTAlignedFree(ptr);
}


// TODO: if we need it at some point, we can also override the new operator
// see http://bytes.com/topic/c/answers/591742-overload-new-delete-memalign-malloc

