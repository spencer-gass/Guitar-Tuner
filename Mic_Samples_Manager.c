#include "Mic_Samples_Manager.h"
#include "pic24_unittest.h"
 
struct Mic_Samples_Manager samples_manager;

void append_mic_sample(uint16_t sample)
{
    if (samples_manager.num_samples < FFT_size)
    {
        samples_manager.mic_samples[++(samples_manager.num_samples)] = sample;
    }
    else
    {
        ASSERT(0);
    }
}

uint16_t* get_mic_samples()
{
    return samples_manager.mic_samples;
}