/* 
 * File:   Mic_Sample_Manager.h
 * Author: Chayne
 *
 * Created on April 16, 2015, 8:55 PM
 */

#ifndef MIC_SAMPLE_MANAGER_H
#define	MIC_SAMPLE_MANAGER_H
#include "FFT.h"
#include <stdint.h>

struct Mic_Samples_Manager
{
    
    uint16_t mic_samples[FFT_size];
    uint16_t num_samples;
};

extern struct Mic_Samples_Manager samples_manager;

void append_mic_sample(uint16_t sample);

uint16_t* get_mic_samples();

#endif	/* MIC_SAMPLE_MANAGER_H */

