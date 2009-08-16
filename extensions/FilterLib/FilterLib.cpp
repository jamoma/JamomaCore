/* 
 * FilterLib -- A library of filters
 * Extension Class for Jamoma DSP
 * Copyright © 2009, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTDSP.h"
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


extern "C" TT_EXTENSION_EXPORT TTErr loadTTExtension(void)
{
	TTDSPInit();
	
	//	TTAllpass::registerClass();					//"audio, processor, filter, allpass",					
	//	TTAverage::registerClass();

	TTBandpassButterworth2::registerClass();		//"audio, processor, filter, bandpass, butterworth",	
	TTBandRejectButterworth2::registerClass();		//"audio, processor, filter, notch",					
	TTDCBlock::registerClass();						//"audio, processor, filter",							
	TTHighMidLowShelf::registerClass();				//"audio, processor, filter",							
	
	TTHighpassButterworth1::registerClass();		//"audio, processor, filter, highpass, butterworth",	
	TTHighpassButterworth2::registerClass();		//"audio, processor, filter, highpass, butterworth",	
	TTHighpassButterworth3::registerClass();		//"audio, processor, filter, highpass, butterworth",	
	TTHighpassButterworth4::registerClass();		//"audio, processor, filter, highpass, butterworth",	
	TTHighpassLinkwitzRiley2::registerClass();		//"audio, processor, filter, highpass",					
	TTHighpassLinkwitzRiley4::registerClass();		//"audio, processor, filter, highpass, crossover",		
	
	TTLowpassButterworth1::registerClass();			//"audio, processor, filter, lowpass, butterworth",		
	TTLowpassButterworth2::registerClass();			//"audio, processor, filter, lowpass, butterworth",		
	TTLowpassButterworth3::registerClass();			//"audio, processor, filter, lowpass, butterworth",		
	TTLowpassButterworth4::registerClass();			//"audio, processor, filter, lowpass, butterworth",		
	TTLowpassLinkwitzRiley2::registerClass();		//"audio, processor, filter, lowpass",					
	TTLowpassLinkwitzRiley4::registerClass();		//"audio, processor, filter, lowpass, crossover",		
	
	TTLowpassOnePole::registerClass();				//"audio, processor, filter, lowpass",					
	TTLowpassTwoPole::registerClass();				//"audio, processor, filter, lowpass",					
	TTLowpassFourPole::registerClass();				//"audio, processor, filter, lowpass",					
	
	TTSvf::registerClass();							//"audio, processor, filter, lowpass, highpass, bandpass, notch",
	
	return kTTErrNone;
}

