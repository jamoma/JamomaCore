/* 
 * TTFilterLib -- A library of filters
 * Extension Class for TTBlue
 * Copyright © 2009, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTBlueAPI.h"
#include "TTAllpass.h"
#include "TTBandpassButterworth2.h"
#include "TTBandrejectButterworth2.h"
#include "TTDCBlock.h"
#include "TTHighMidLowShelf.h"
#include "TTHighpassButterworth1.h"
#include "TTHighpassButterworth2.h"
#include "TTHighpassButterworth3.h"
#include "TTHighpassButterworth4.h"
#include "TTHighpassLinkwitzRiley2.h"
#include "TTHighpassLinkwitzRiley4.h"
#include "TTLowpassButterworth1.h"
#include "TTLowpassButterworth2.h"
#include "TTLowpassButterworth3.h"
#include "TTLowpassButterworth4.h"
#include "TTLowpassLinkwitzRiley2.h"
#include "TTLowpassLinkwitzRiley4.h"
#include "TTLowpassOnePole.h"
#include "TTLowpassTwoPole.h"
#include "TTLowpassFourPole.h"
#include "TTSvf.h"


extern "C" TT_EXTENSION_EXPORT TTObjectPtr instantiateFilter(TTSymbolPtr className, TTValue& arguments)
{
	if(arguments.getSize() == 0)
		arguments = 1;
	
	if(className == TT("allpass"))
		return new TTAllpass(arguments);
	else if(className == TT("highmidlowshelf"))
		return new TTHighMidLowShelf(arguments);
	else if(className == TT("bandpass.butterworth.2"))
		return new TTBandpassButterworth2(arguments);
	else if(className == TT("bandreject.butterworth.2"))
		return new TTBandRejectButterworth2(arguments);
	else if(className == TT("dcblock"))
		return new TTDCBlock(arguments);
	
	else if(className == TT("highpass.butterworth.1"))
		return new TTHighpassButterworth1(arguments);
	else if(className == TT("highpass.butterworth.2"))
		return new TTHighpassButterworth2(arguments);
	else if(className == TT("highpass.butterworth.3"))
		return new TTHighpassButterworth3(arguments);
	else if(className == TT("highpass.butterworth.4"))
		return new TTHighpassButterworth4(arguments);
	else if(className == TT("highpass.linkwitzriley.2"))
		return new TTHighpassLinkwitzRiley2(arguments);
	else if(className == TT("highpass.linkwitzriley.4"))
		return new TTHighpassLinkwitzRiley4(arguments);
	
	else if(className == TT("lowpass.butterworth.1"))
		return new TTLowpassButterworth1(arguments);
	else if(className == TT("lowpass.butterworth.2"))
		return new TTLowpassButterworth2(arguments);
	else if(className == TT("lowpass.butterworth.3"))
		return new TTLowpassButterworth3(arguments);
	else if(className == TT("lowpass.butterworth.4"))
		return new TTLowpassButterworth4(arguments);
	else if(className == TT("lowpass.linkwitzriley.2"))
		return new TTLowpassLinkwitzRiley2(arguments);
	else if(className == TT("lowpass.linkwitzriley.4"))
		return new TTLowpassLinkwitzRiley4(arguments);
	
	else if(className == TT("lowpass.1"))
		return new TTLowpassOnePole(arguments);
	else if(className == TT("lowpass.2"))
		return new TTLowpassTwoPole(arguments);
	else if(className == TT("lowpass.4"))
		return new TTLowpassFourPole(arguments);
	
	else if(className == TT("svf"))
		return new TTSvf(arguments);
	
	
	return NULL;
}


extern "C" TT_EXTENSION_EXPORT TTErr loadTTExtension(void)
{
	TTBlueInit();
	
	
	//	TTClassRegister(TT("allpass"),					"audio, processor, filter, allpass",					&instantiateFilter);
	TTClassRegister(TT("bandpass.butterworth.2"),		"audio, processor, filter, bandpass, butterworth",		&instantiateFilter);
	TTClassRegister(TT("bandreject.butterworth.2"),		"audio, processor, filter, notch",						&instantiateFilter);
	TTClassRegister(TT("dcblock"),						"audio, processor, filter",								&instantiateFilter);
	TTClassRegister(TT("highmidlowshelf"),				"audio, processor, filter",								&instantiateFilter);
	
	TTClassRegister(TT("highpass.butterworth.1"),		"audio, processor, filter, highpass, butterworth",		&instantiateFilter);
	TTClassRegister(TT("highpass.butterworth.2"),		"audio, processor, filter, highpass, butterworth",		&instantiateFilter);
	TTClassRegister(TT("highpass.butterworth.3"),		"audio, processor, filter, highpass, butterworth",		&instantiateFilter);
	TTClassRegister(TT("highpass.butterworth.4"),		"audio, processor, filter, highpass, butterworth",		&instantiateFilter);
	TTClassRegister(TT("highpass.linkwitzriley.2"),		"audio, processor, filter, highpass",					&instantiateFilter);
	TTClassRegister(TT("highpass.linkwitzriley.4"),		"audio, processor, filter, highpass, crossover",		&instantiateFilter);
	
	TTClassRegister(TT("lowpass.butterworth.1"),		"audio, processor, filter, lowpass, butterworth",		&instantiateFilter);
	TTClassRegister(TT("lowpass.butterworth.2"),		"audio, processor, filter, lowpass, butterworth",		&instantiateFilter);
	TTClassRegister(TT("lowpass.butterworth.3"),		"audio, processor, filter, lowpass, butterworth",		&instantiateFilter);
	TTClassRegister(TT("lowpass.butterworth.4"),		"audio, processor, filter, lowpass, butterworth",		&instantiateFilter);
	TTClassRegister(TT("lowpass.linkwitzriley.2"),		"audio, processor, filter, lowpass",					&instantiateFilter);
	TTClassRegister(TT("lowpass.linkwitzriley.4"),		"audio, processor, filter, lowpass, crossover",			&instantiateFilter);
	
	TTClassRegister(TT("lowpass.1"),					"audio, processor, filter, lowpass",					&instantiateFilter);
	TTClassRegister(TT("lowpass.2"),					"audio, processor, filter, lowpass",					&instantiateFilter);
	TTClassRegister(TT("lowpass.4"),					"audio, processor, filter, lowpass",					&instantiateFilter);
	
	//	TTClassRegister(TT("svf"),						"audio, processor, filter, lowpass, highpass, bandpass, notch",		&instantiateFilter);
	
	
	return kTTErrNone;
}

