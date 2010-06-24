/* 
 * WindowFunctionLib
 * Extension Class for Jamoma DSP
 * Copyright © 2009, Timothy Place & Trond Lossius
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTDSP.h"

#include "BartlettWindow.h"
#include "BlackmanWindow.h"
#include "HammingWindow.h"
#include "HanningWindow.h"
#include "KaiserWindow.h"
#include "RectangularWindow.h"
#include "TrapezoidWindow.h"
#include "WelchWindow.h"

#include "WindowFunction.h"


extern "C" TT_EXTENSION_EXPORT TTErr loadTTExtension(void)
{
	TTDSPInit();

	BartlettWindow::registerClass();
	BlackmanWindow::registerClass();
	HammingWindow::registerClass();
	HanningWindow::registerClass();
	KaiserWindow::registerClass();
	RectangularWindow::registerClass();
	TrapezoidWindow::registerClass();
	WelchWindow::registerClass();

	WindowFunction::registerClass();
	return kTTErrNone;
}

