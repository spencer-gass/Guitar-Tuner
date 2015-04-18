/* 
 * File:   FFT.h
 * Author: Spencer
 *
 * Created on April 16, 2015, 2:23 PM
 */

#ifndef FFT_H
#define	FFT_H

/* macros */
#define FFT_size (256) // must also be set in Main.c
#define fs (8000)      // sampling frequency
#define TWO_PI (6.2831853071795864769252867665590057683943L)

/* function prototypes */
void fft(double (*x)[2], double (*X)[2]);
void fft_rec(int N, int offset, int delta, double (*x)[2],
        double (*X)[2], double (*XX)[2]);
void ifft(double (*x)[2], double (*X)[2]);
double mag(double x, double y);
double getPeak(double (*X)[2]);


#endif	/* FFT_H */

