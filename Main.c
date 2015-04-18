#include <pic24_all.h>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "FFT.h"
#include "timers.h"
#include "adc_impl.h"
#include "leds.h"

void config_all()
{
  configBasic(HELLO_MSG);
  CONFIG_LEDLo();
  CONFIG_LEDTn();
  CONFIG_LEDHi();
  CONFIG_LED1();
  configTimer2();
  config_adc();
}
/*
void process_input()
{
    uint16_t* x_t = get_mic_samples();
    double* X_w[2];
    fft(x_t, X_w);

}
*/

void begin_tuner()
{
//    double tuned_note = 1500;
//    double old_note = 0;
//    double new_note = 0;
    while(1){
        /*
        if (count == FFT_size){
            count = 0;
            fft(x,X);
            new_note = getPeak(X);
            if(new_note > tuned_note-100 || new_note < tuned_note+100){
                LEDTn = 1;
            } else {
                LEDTn = 0;
            }
        }
        */
        doHeartbeat();
    }
}

double** x;     //* pointer to time-domain samples
double** X;     //* pointer to frequency-domain samples

int main()
{
  config_all();
  double time_samples[FFT_size][2];
  double frequency_samples[FFT_size][2];
  x = time_samples;
  X = frequency_samples;

  begin_tuner();


 
  ////////////////////////////////FFT TEST/////////////////////////////////////
 /*
  //Generate a sine wave
  int i;                    // generic index
  for(i = 0;i<256;i++){
      x[i][0]= sin(TWO_PI*i*10/255);
      x[i][1]=0;
  }
 */

  //* Calculate FFT.
  /*
  printf("befor FFT\n");
  fft(x, X);
  printf("after FFT\n");
  */
    //getPeak(X)


  //* Print time-domain samples and resulting frequency-domain samples.
 /*
  /change to mag(X)
  printf("\nx(n):");
  for(i=0; i<FFT_SIZE; i++) printf("\n   n=%d: %12f %12f", i, x[i][0], x[i][1]);
  printf("\nX(k):");
  for(i=0; i<FFT_SIZE; i++) printf("\n   k=%d: %12f %12f", i, X[i][0], X[i][1]);
*/

  //* Clear time-domain samples and calculate IFFT.
  //for(i=0; i<FFT_SIZE; i++) x[i][0] = x[i][1] = 0;
  //ifft(x, X);

  //* Print recovered time-domain samples.
 // printf("\nx(n):");
 // for(i=0; i<FFT_SIZE; i++) printf("\n   n=%d: %12f %12f", i, x[i][0], x[i][1]);
////////////////////////////////////////////////////////////////////////////////
 
}