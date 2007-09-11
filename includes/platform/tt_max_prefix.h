#ifndef TT_TARGET_MAX
#define TT_TARGET_MAX 1
#endif

#ifdef __MWERKS__
#include "MacHeadersCarbon.h"
#else`// Xcode`
#include <Carbon/Carbon.h>
#include <QuickTime/QuickTime.h>
#endif

