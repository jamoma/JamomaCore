/* 
 * FilterLib -- A library of filters
 * Extension Class for Jamoma DSP
 * Copyright © 2009, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTDSP.h"

#include "TTFilter.h"

#include "TTAllpass.h"
#include "TTAllpass1.h"
#include "TTAllpass1a.h"
#include "TTAllpass1aCascade2.h"
#include "TTAllpass1b.h"
#include "TTAllpass1c.h"
#include "TTAllpass2a.h"
#include "TTAllpass2b.h"
#include "TTAllpass2c.h"
#include "TTAllpass4a.h"
#include "TTHalfband3.h"
#include "TTHalfband5.h"
#include "TTHalfband9.h"
#include "TTHalfbandLinear33.h"
#include "TTHilbert9.h"
#include "TTHilbertLinear33.h"
#include "TTMirror5.h"
#include "TTMirrorBandpass10.h"

#include "TTBandpassButterworth2.h"
#include "TTBandrejectButterworth2.h"
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

#include "TTHighMidLowShelf.h"
#include "TTLowpassOnePole.h"
#include "TTLowpassTwoPole.h"
#include "TTLowpassFourPole.h"
#include "TTOnePole.h"
#include "TTSvf.h"


extern "C" TT_EXTENSION_EXPORT TTErr TTLoadJamomaExtension_FilterLib(void)
{
	TTDSPInit();
	
	TTFilter::registerClass();
	
	TTAllpass::registerClass();
	TTAllpass1::registerClass();
	TTAllpass1a::registerClass();
	TTAllpass1aCascade2::registerClass();
	TTAllpass1b::registerClass();
	TTAllpass1c::registerClass();
	TTAllpass2a::registerClass();
	TTAllpass2b::registerClass();
	TTAllpass2c::registerClass();
	TTAllpass4a::registerClass();
	TTHalfband3::registerClass();
	TTHalfband5::registerClass();
	TTHalfband9::registerClass();
	TTHalfbandLinear33::registerClass();
	TTHilbert9::registerClass();
	TTHilbertLinear33::registerClass();
	TTMirror5::registerClass();
	TTMirrorBandpass10::registerClass();
	
	//	TTAverage::registerClass();

	TTBandpassButterworth2::registerClass();
	TTBandrejectButterworth2::registerClass();
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

