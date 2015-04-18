/*----------------------------------------------------------------------------
   fft.c - fast Fourier transform and its inverse (both recursively)
   Copyright (C) 2004, Jerome R. Breitenbach.  All rights reserved.

   The author gives permission to anyone to freely copy, distribute, and use
   this file, under the following conditions:
      - No changes are made.
      - No direct commercial advantage is obtained.
      - No liability is attributed to the author for any damages incurred.
  ----------------------------------------------------------------------------*/

/******************************************************************************
 * This file defines a C function fft that, by calling another function       *
 * fft_rec (also defined), calculates an FFT recursively.  Usage:             *
 *   fft(N, x, X);                                                            *
 * Parameters:                                                                *
 *   N: number of points in FFT (must equal 2^n for some integer n >= 1)      *
 *   x: pointer to N time-domain samples given in rectangular form (Re x,     *
 *      Im x)                                                                 *
 *   X: pointer to N frequency-domain samples calculated in rectangular form  *
 *      (Re X, Im X)                                                          *
 * Similarly, a function ifft with the same parameters is defined that        *
 * calculates an inverse FFT (IFFT) recursively.  Usage:                      *
 *   ifft(N, x, X);                                                           *
 * Here, N and X are given, and x is calculated.                              *
 ******************************************************************************/

#include <stdlib.h>
#include <math.h>
#include "FFT.h"

// temp array
double XX[FFT_size][2];

/* FFT */
void fft(double (*x)[2], double (*X)[2]){
  /* Calculate FFT by a recursion. */
  fft_rec(FFT_size, 0, 1, x, X, XX);
}

/* FFT recursion */
void fft_rec(int N, int offset, int delta, double (*x)[2],
        double (*X)[2], double (*XX)[2])
{
  int N2 = N/2;            /* half the number of points in FFT */
  int k;                   /* generic index */
  double cs, sn;           /* cosine and sine */
  int k00, k01, k10, k11;  /* indices for butterflies */
  double tmp0, tmp1;       /* temporary storage */

  if(N != 2)  /* Perform recursive step. */
    {
      /* Calculate two (N/2)-point DFT's. */
      fft_rec(N2, offset, 2*delta, x, XX, X);
      fft_rec(N2, offset+delta, 2*delta, x, XX, X);

      /* Combine the two (N/2)-point DFT's into one N-point DFT. */
      for(k=0; k<N2; k++)
        {
          k00 = offset + k*delta;    k01 = k00 + N2*delta;
          k10 = offset + 2*k*delta;  k11 = k10 + delta;
          cs = cos(TWO_PI*k/(double)N); sn = sin(TWO_PI*k/(double)N);
          tmp0 = cs * XX[k11][0] + sn * XX[k11][1];
          tmp1 = cs * XX[k11][1] - sn * XX[k11][0];
          X[k01][0] = XX[k10][0] - tmp0;
          X[k01][1] = XX[k10][1] - tmp1;
          X[k00][0] = XX[k10][0] + tmp0;
          X[k00][1] = XX[k10][1] + tmp1;
        }
    }
  else  /* Perform 2-point DFT. */
    {
      k00 = offset; k01 = k00 + delta;
      X[k01][0] = x[k00][0] - x[k01][0];
      X[k01][1] = x[k00][1] - x[k01][1];
      X[k00][0] = x[k00][0] + x[k01][0];
      X[k00][1] = x[k00][1] + x[k01][1];
    }
}

/* IFFT */
void ifft(double (*x)[2], double (*X)[2])
{
  int N2 = FFT_size/2;       /* half the number of points in IFFT */
  int i;              /* generic index */
  double tmp0, tmp1;  /* temporary storage */

  /* Calculate IFFT via reciprocity property of DFT. */
  fft(X, x);
  x[0][0] = x[0][0]/FFT_size;    x[0][1] = x[0][1]/FFT_size;
  x[N2][0] = x[N2][0]/FFT_size;  x[N2][1] = x[N2][1]/FFT_size;
  for(i=1; i<N2; i++)
    {
      tmp0 = x[i][0]/FFT_size;       tmp1 = x[i][1]/FFT_size;
      x[i][0] = x[FFT_size-i][0]/FFT_size;  x[i][1] = x[FFT_size-i][1]/FFT_size;
      x[FFT_size-i][0] = tmp0;       x[FFT_size-i][1] = tmp1;
    }
}

// Calculates the magnitude of the real and imaginary parts of the FFT
double mag(double x, double y){
    return sqrt(x*x + y*y);
}

//Basic peak detection. returns aproximate fundamental frequency
double getPeak(double (*X)[2]){
    int peak_index = 0;
    double peak_amp;
    double freq;
    //interpolation variables
    double interp_factor;
    
    double alpha;   //magnitude at peak_index - 1
    double beta;    //magnitude at the peak
    double gamma;   //magnitude at peak_index + 1

    // Max detection
    int i = 1;              // skip the first bin (DC offset)
    while(i<FFT_size){
        if(mag(X[i][0],X[i][1]) > peak_amp) {
            peak_index = i;
            peak_amp = mag(X[i][0],X[i][1]);
        }
        i++;
    }
    // Peak determination
    // unwindowed: main lobe = 2 bind
    //             side lobe = -12dB = main_lobe/4
    // therefore 2 indecies from the peak will be away from the main lobe
    // the main lobe should be 2-4  times the side lobe to be concidered a peak
    alpha = mag(X[peak_index-2][0],X[peak_index-2][1]);
    beta  = mag(X[peak_index][0],X[peak_index][1]);
    gamma = mag(X[peak_index+2][0],X[peak_index+2][1]);

    if(beta/alpha < 3 || beta/gamma < 3 ){
        return 0;
    }

    // Interpolation
    alpha = mag(X[peak_index-1][0],X[peak_index-1][1]);
    gamma = mag(X[peak_index+1][0],X[peak_index+1][1]);
    interp_factor = 0.5*(alpha-gamma) / (alpha - 2*beta + gamma);

    freq = (peak_index+interp_factor) *  2.0 * fs / FFT_size;
    return freq;
}