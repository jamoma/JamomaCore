// ext_atomic.h copyright 2008 cycling '74

#ifndef __EXT_ATOMIC_H__

#define __EXT_ATOMIC_H__

#ifdef MAC_VERSION

#include <libkern/OSAtomic.h>

#define ATOMIC_INCREMENT(pv) OSAtomicIncrement32(pv)

#define ATOMIC_DECREMENT(pv) OSAtomicDecrement32(pv)

#endif // MAC_VERSION

#ifdef WIN_VERSION

#include <intrin.h>

#pragma intrinsic (_InterlockedIncrement)
#pragma intrinsic (_InterlockedDecrement)

#define ATOMIC_INCREMENT(pv)      (_InterlockedIncrement(pv))
#define ATOMIC_DECREMENT(pv)      (_InterlockedDecrement(pv))

#endif // WIN_VERSION


#endif // __EXT_ATOMIC_H__
