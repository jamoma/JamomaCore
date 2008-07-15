/* 
 * TTBlue Library
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTBlue.h"
#include "TTSymbolTable.h"
#include "TTEnvironment.h"
#include "TTGlobal.h"
#include "TTSymbolCache.h"
#include "TTValueCache.h"

static bool TTBlueHasInitialized = false;

void TTBlueRegisterInternalClasses();
TTObject* TTBlueInstantiateInternalClass(TTSymbol* className, TTValue& arguments);


/****************************************************************************************************/
void TTBlueInit()
{
	if(!TTBlueHasInitialized){
		ttSymbolTable = new TTSymbolTable;
		ttEnvironment = new TTEnvironment;
		ttGlobalObject = new TTGlobal;

		TTSymbolCacheInit();
		TTValueCacheInit();

		printf("TTBlue -- Version 0.5.3\n");
		
		TTBlueRegisterInternalClasses();
		
		// do we need to do anything with the global object?
		// init the queue -- runs in a new thread
	
		TTBlueHasInitialized = true;
	}
}


/****************************************************************************************************/
#include "TTBuffer.h"
#include "TTCrossfade.h"
#include "TTDegrade.h"
#include "TTDelay.h"
#include "TTOperator.h"
#include "TTOverdrive.h"

void TTBlueRegisterInternalClasses()
{
	TTClassRegister(TT("buffer"), &TTBlueInstantiateInternalClass);
	TTClassRegister(TT("crossfade"), &TTBlueInstantiateInternalClass);
	TTClassRegister(TT("degrade"), &TTBlueInstantiateInternalClass);
	TTClassRegister(TT("delay"), &TTBlueInstantiateInternalClass);
	TTClassRegister(TT("operator"), &TTBlueInstantiateInternalClass);
	TTClassRegister(TT("overdrive"), &TTBlueInstantiateInternalClass);
}


TTObject* TTBlueInstantiateInternalClass(TTSymbol* className, TTValue& arguments)
{
	if(className == TT("buffer"))
		return new TTBuffer;
	else if(className == TT("crossfade"))
		return new TTCrossfade(arguments);
	else if(className == TT("degrade"))
		return new TTDegrade(arguments);
	else if(className == TT("delay"))
		return new TTDelay(arguments);
	else if(className == TT("operator"))
		return new TTOperator(arguments);
	else if(className == TT("overdrive"))
		return new TTOverdrive(arguments);

	else{
		TTLogError("TTBlue: cannot instantiate object of %s class.  No such class.", className->getCString());
		return NULL;
	}
}

