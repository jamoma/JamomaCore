/* 
 * FilterLib -- A library of filters
 * Extension Class for Jamoma DSP
 * Copyright © 2009, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTDSP.h"
#include "TTAllpass.h"
#include "TTAllpass1.h"
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
#include "TTOnePole.h"
#include "TTSvf.h"


extern "C" TT_EXTENSION_EXPORT TTErr loadTTExtension(void)
{
	TTDSPInit();
	
	TTAllpass::registerClass();
	TTAllpass1::registerClass();

	//	TTAverage::registerClass();

	TTBandpassButterworth2::registerClass();
	TTBandRejectButterworth2::registerClass();
	TTDCBlock::registerClass();
	TTHighMidLowShelf::registerClass();
	
	TTHighpassButterworth1::registerClass();
	TTHighpassButterworth2::registerClass();
	TTHighpassButterworth3::registerClass();
	TTHighpassButterworth4::registerClass();
	TTHighpassLinkwitzRiley2::registerClass();
	TTHighpassLinkwitzRiley4::registerClass();
	
	TTLowpassButterworth1::registerClass();
	TTLowpassButterworth2::registerClass();
	TTLowpassButterworth3::registerClass();
	TTLowpassButterworth4::registerClass();
	TTLowpassLinkwitzRiley2::registerClass();
	TTLowpassLinkwitzRiley4::registerClass();
	
	TTLowpassOnePole::registerClass();
	TTLowpassTwoPole::registerClass();
	TTLowpassFourPole::registerClass();
	
	TTOnePole::registerClass();
	TTSvf::registerClass();
	
	return kTTErrNone;
}

