#ifndef MAYER_H
#define MAYER_H

#define REAL double

extern "C" {
	void mayer_realfft(int n, REAL *real);
	void mayer_realifft(int n, REAL *real);
	void mayer_fft(int n, REAL *real, REAL *imag);
	void mayer_ifft(int n, REAL *real, REAL *imag);
}

#endif
