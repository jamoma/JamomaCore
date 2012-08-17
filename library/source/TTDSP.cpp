/* 
 * TTBlue Library
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTDSP.h"
#include "TTAudioEngine.h"


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
		
		// create audio engine and
		// store the audio engine singleton instance as an attribute of the environment
		{
			TTObjectPtr engine = TTAudioEngine::create();
			TTValue		v(engine);
			
			ttEnvironment->registerAttribute(TT("audioEngine"), kTypeLocalValue, NULL);
			ttEnvironment->setAttributeValue(TT("audioEngine"), v);
		}
	}
}

#ifdef TT_PLATFORM_LINUX
int main(void)
{
	// TODO: should we call TTDSPInit() here?
	return 0;
}
#endif

// FIXME: this is never called right now!
void TTDSPShutdown()
{
	TTAudioEngine::destroy();
}


/****************************************************************************************************/

// Core
#include "TTAudioObjectArray.h"
#include "TTAudioSignal.h"
#include "TTBuffer.h"
#include "TTDelay.h"


void TTDSPRegisterInternalClasses()
{
	TTAudioObjectArray::registerClass();
	TTAudioSignal::registerClass();
	TTAudioSignalArray::registerClass();
	TTBuffer::registerClass();
	TTDelay::registerClass();
	TTSampleMatrix::registerClass();
		
	TTAudioEngine::registerClass();	
}


/****************************************************************************************************/

TTErr TTObjectInstantiate(const TTSymbolPtr className, TTAudioObjectPtr* returnedObjectPtr, TTValue& arguments)
{
	return ttEnvironment->createInstance(className, (TTObjectPtr*)returnedObjectPtr, arguments);
}

TTErr TTObjectInstantiate(const TTSymbolPtr className, TTAudioSignalPtr* returnedObjectPtr, TTValue& arguments)
{
	return ttEnvironment->createInstance(className, (TTObjectPtr*)returnedObjectPtr, arguments);
}


TTErr TTObjectInstantiate(const TTSymbolPtr className, TTAudioObjectPtr* returnedObjectPtr, const TTValue& arguments)
{
	return ttEnvironment->createInstance(className, (TTObjectPtr*)returnedObjectPtr, arguments);
}

TTErr TTObjectInstantiate(const TTSymbolPtr className, TTAudioSignalPtr* returnedObjectPtr, const TTValue& arguments)
{
	return ttEnvironment->createInstance(className, (TTObjectPtr*)returnedObjectPtr, arguments);
}


TTErr TTObjectInstantiate(const TTSymbolPtr className, TTAudioObjectPtr* returnedObjectPtr, const TTUInt16 arguments)
{
	TTValue	v(arguments);
	return ttEnvironment->createInstance(className, (TTObjectPtr*)returnedObjectPtr, v);
}

TTErr TTObjectInstantiate(const TTSymbolPtr className, TTAudioSignalPtr* returnedObjectPtr, const TTUInt16 arguments)
{
	TTValue	v(arguments);
	return ttEnvironment->createInstance(className, (TTObjectPtr*)returnedObjectPtr, v);
}


TTAudioObjectPtr TTObjectReference(TTAudioObjectPtr anObject)
{
	return (TTAudioObjectPtr)ttEnvironment->referenceInstance((TTObjectPtr)anObject);
}

TTAudioSignalPtr TTObjectReference(TTAudioSignalPtr anObject)
{
	return (TTAudioSignalPtr)ttEnvironment->referenceInstance((TTObjectPtr)anObject);
}


TTErr TTObjectRelease(TTAudioObjectPtr* anObject)
{
	if (*anObject)
		return ttEnvironment->releaseInstance((TTObjectPtr*)anObject);
	else
		return kTTErrNone;
}

TTErr TTObjectRelease(TTAudioSignalPtr* anObject)
{
	if (*anObject)
		return ttEnvironment->releaseInstance((TTObjectPtr*)anObject);
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

