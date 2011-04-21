/*
 * Jamoma DataspaceLib Base Class
 * Copyright © 2007
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTMatrixGain.h"
#include "TTMatrixStencil.h"


extern "C" TT_EXTENSION_EXPORT TTErr TTLoadJamomaExtension_MatrixProcessingLib(void)
{
	TTFoundationInit();

	TTMatrixGain::registerClass();
	TTMatrixStencil::registerClass();

	return kTTErrNone;
}

