#ifndef __TIMERS_H_
#define __TIMERS_H_
#include "pic24_all.h"

#define SAMPLING_TIME_US (1250)
void configTimer2(void);
extern uint16_t count;
extern double** x;     //* pointer to time-domain samples
extern double** X;     //* pointer to frequency-domain samples
#endif //__TIMERS_H_