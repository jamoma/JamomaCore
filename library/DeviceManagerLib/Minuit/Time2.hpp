#ifndef TIME2_HPP_
#define TIME2_HPP_

#include <windows.h>
#include <time.h>

class Time2 {
public:
	int gettimeofday(struct timeval* tp, void* tzp) {
		DWORD t;
		t = timeGetTime();
		tp->tv_sec = t / 1000;
		tp->tv_usec = (t % 1000) * 1000;
		/* 0 indicates that the call succeeded. */
		return 0;
	}
};

#endif
