#include <pic24_all.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <math.h>
#include "FFT.h"
#include "adc_impl.h"
#include "leds.h"

float* Rex;     //* pointer to time-domain samples
float* Imx;
float* ReX;     //* pointer to frequency-domain samples
float* ImX;
uint16_t samp_cnt;
bool flag;

void _ISR _T2Interrupt(void) {
  //Sample from the ADC
  Rex[samp_cnt] = getSample();
  Imx[samp_cnt] = 0;
  samp_cnt += 1;

  if(samp_cnt == FFT_size){
      samp_cnt = 0;
      flag = !flag;
      _T2IP = 0;
      _T2IE = 0;
  }
  _T2IF = 0;
}

void configTimer2(void) {
    // T2CON is set like this for documentation purposes.
    // It could be replaced by T2CON = 0x0020.
    T2CON = T2_OFF | T2_IDLE_CON | T2_GATE_OFF
          | T2_32BIT_MODE_OFF
          | T2_SOURCE_INT
          | T2_PS_1_64;
    // Subtract 1 from ticks value assigned to PR2 because period is PRx + 1.
    PR2 = usToU16Ticks(SAMPLING_TIME_US, getTimerPrescale(T2CONbits)) - 1;
    // Start with a cleared timer2 value.
    TMR2  = 0;
    // Enable Timer2 interrupts.
    _T2IF = 0;
    _T2IP = 1;
    _T2IE = 1;
    // Start the timer only after all timer-related configuration is complete.
    T2CONbits.TON = 1;
}

float update_state(float freq){
    if(freq > 148 && freq < 157){return 154.0;}   //D_STEING
    if(freq > 185 && freq < 216){return 190.0;}   //G_STRING
    if(freq > 226 && freq < 257){return 249.0;}   //B_STRING
    if(freq > 310 && freq < 345){return 333.0;}   //E_STRING
    if(freq > 1000 && freq < 1400){return 1200.0;}//WHISTLE
    else{return 0.0;}                             //SILENT
}

int main(){
    samp_cnt = 0;
    flag = true;
    bool old_flag = true;

    configBasic(HELLO_MSG);
    configLED();
    configTimer2();
    config_adc();

    float Rey[FFT_size];
    float ReY[FFT_size];
    float Imy[FFT_size];
    float ImY[FFT_size];
    float Xmag[FFT_size];
    Rex = Rey;
    ReX = ReY;
    Imx = Imy;
    ImX = ImY;

    float tuned_note =  0; 
    float new_note = 0;

    while(1){
        if (old_flag != flag){
            samp_cnt = 0;

            if(SPL(FFT_size,Rex) > 25){

                fft(Rex,Imx,ReX,ImX);
                Amag(FFT_size,ReX,ImX,Xmag);
                new_note = getPeak(Xmag);
                tuned_note = update_state(new_note);

                printf("frequency: %d\n",(int)new_note);
                if(new_note > 1.8 * tuned_note){
                    new_note = new_note/2;
                }
                setLEDs(tuned_note, new_note);

            }else{
                LEDTn = 0;
                LEDHi = 0;
                LEDLo = 0;
            }
        //Re-Enable sampling after FFT
        _T2IE = 1;
        _T2IP = 1;
        old_flag = flag;
        }
       
        doHeartbeat();
    }
}