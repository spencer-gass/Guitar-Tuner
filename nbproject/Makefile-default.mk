#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/BonusProject.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/BonusProject.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../../lib/src/pic24_clockfreq.c ../../lib/src/pic24_configbits.c ../../lib/src/pic24_serial.c ../../lib/src/pic24_uart.c ../../lib/src/pic24_util.c ../../lib/src/pic24_adc.c ../../lib/src/pic24_timer.c ../../chap14/FFT.c ../../chap14/Mic_Samples_Manager.c ../../chap14/adc_impl.c ../../chap14/timers.c ../../chap14/Main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/957557178/pic24_clockfreq.o ${OBJECTDIR}/_ext/957557178/pic24_configbits.o ${OBJECTDIR}/_ext/957557178/pic24_serial.o ${OBJECTDIR}/_ext/957557178/pic24_uart.o ${OBJECTDIR}/_ext/957557178/pic24_util.o ${OBJECTDIR}/_ext/957557178/pic24_adc.o ${OBJECTDIR}/_ext/957557178/pic24_timer.o ${OBJECTDIR}/_ext/1336045033/FFT.o ${OBJECTDIR}/_ext/1336045033/Mic_Samples_Manager.o ${OBJECTDIR}/_ext/1336045033/adc_impl.o ${OBJECTDIR}/_ext/1336045033/timers.o ${OBJECTDIR}/_ext/1336045033/Main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/957557178/pic24_clockfreq.o.d ${OBJECTDIR}/_ext/957557178/pic24_configbits.o.d ${OBJECTDIR}/_ext/957557178/pic24_serial.o.d ${OBJECTDIR}/_ext/957557178/pic24_uart.o.d ${OBJECTDIR}/_ext/957557178/pic24_util.o.d ${OBJECTDIR}/_ext/957557178/pic24_adc.o.d ${OBJECTDIR}/_ext/957557178/pic24_timer.o.d ${OBJECTDIR}/_ext/1336045033/FFT.o.d ${OBJECTDIR}/_ext/1336045033/Mic_Samples_Manager.o.d ${OBJECTDIR}/_ext/1336045033/adc_impl.o.d ${OBJECTDIR}/_ext/1336045033/timers.o.d ${OBJECTDIR}/_ext/1336045033/Main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/957557178/pic24_clockfreq.o ${OBJECTDIR}/_ext/957557178/pic24_configbits.o ${OBJECTDIR}/_ext/957557178/pic24_serial.o ${OBJECTDIR}/_ext/957557178/pic24_uart.o ${OBJECTDIR}/_ext/957557178/pic24_util.o ${OBJECTDIR}/_ext/957557178/pic24_adc.o ${OBJECTDIR}/_ext/957557178/pic24_timer.o ${OBJECTDIR}/_ext/1336045033/FFT.o ${OBJECTDIR}/_ext/1336045033/Mic_Samples_Manager.o ${OBJECTDIR}/_ext/1336045033/adc_impl.o ${OBJECTDIR}/_ext/1336045033/timers.o ${OBJECTDIR}/_ext/1336045033/Main.o

# Source Files
SOURCEFILES=../../lib/src/pic24_clockfreq.c ../../lib/src/pic24_configbits.c ../../lib/src/pic24_serial.c ../../lib/src/pic24_uart.c ../../lib/src/pic24_util.c ../../lib/src/pic24_adc.c ../../lib/src/pic24_timer.c ../../chap14/FFT.c ../../chap14/Mic_Samples_Manager.c ../../chap14/adc_impl.c ../../chap14/timers.c ../../chap14/Main.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/BonusProject.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=33EP128GP502
MP_LINKER_FILE_OPTION=,--script="..\..\lib\lkr\p33EP128GP502_bootldr.gld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/957557178/pic24_clockfreq.o: ../../lib/src/pic24_clockfreq.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/957557178" 
	@${RM} ${OBJECTDIR}/_ext/957557178/pic24_clockfreq.o.d 
	@${RM} ${OBJECTDIR}/_ext/957557178/pic24_clockfreq.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../lib/src/pic24_clockfreq.c  -o ${OBJECTDIR}/_ext/957557178/pic24_clockfreq.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/957557178/pic24_clockfreq.o.d"      -g -D__DEBUG     -omf=elf -O0 -I"../../lib/include" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/957557178/pic24_clockfreq.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/957557178/pic24_configbits.o: ../../lib/src/pic24_configbits.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/957557178" 
	@${RM} ${OBJECTDIR}/_ext/957557178/pic24_configbits.o.d 
	@${RM} ${OBJECTDIR}/_ext/957557178/pic24_configbits.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../lib/src/pic24_configbits.c  -o ${OBJECTDIR}/_ext/957557178/pic24_configbits.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/957557178/pic24_configbits.o.d"      -g -D__DEBUG     -omf=elf -O0 -I"../../lib/include" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/957557178/pic24_configbits.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/957557178/pic24_serial.o: ../../lib/src/pic24_serial.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/957557178" 
	@${RM} ${OBJECTDIR}/_ext/957557178/pic24_serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/957557178/pic24_serial.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../lib/src/pic24_serial.c  -o ${OBJECTDIR}/_ext/957557178/pic24_serial.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/957557178/pic24_serial.o.d"      -g -D__DEBUG     -omf=elf -O0 -I"../../lib/include" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/957557178/pic24_serial.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/957557178/pic24_uart.o: ../../lib/src/pic24_uart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/957557178" 
	@${RM} ${OBJECTDIR}/_ext/957557178/pic24_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/957557178/pic24_uart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../lib/src/pic24_uart.c  -o ${OBJECTDIR}/_ext/957557178/pic24_uart.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/957557178/pic24_uart.o.d"      -g -D__DEBUG     -omf=elf -O0 -I"../../lib/include" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/957557178/pic24_uart.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/957557178/pic24_util.o: ../../lib/src/pic24_util.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/957557178" 
	@${RM} ${OBJECTDIR}/_ext/957557178/pic24_util.o.d 
	@${RM} ${OBJECTDIR}/_ext/957557178/pic24_util.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../lib/src/pic24_util.c  -o ${OBJECTDIR}/_ext/957557178/pic24_util.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/957557178/pic24_util.o.d"      -g -D__DEBUG     -omf=elf -O0 -I"../../lib/include" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/957557178/pic24_util.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/957557178/pic24_adc.o: ../../lib/src/pic24_adc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/957557178" 
	@${RM} ${OBJECTDIR}/_ext/957557178/pic24_adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/957557178/pic24_adc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../lib/src/pic24_adc.c  -o ${OBJECTDIR}/_ext/957557178/pic24_adc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/957557178/pic24_adc.o.d"      -g -D__DEBUG     -omf=elf -O0 -I"../../lib/include" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/957557178/pic24_adc.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/957557178/pic24_timer.o: ../../lib/src/pic24_timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/957557178" 
	@${RM} ${OBJECTDIR}/_ext/957557178/pic24_timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/957557178/pic24_timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../lib/src/pic24_timer.c  -o ${OBJECTDIR}/_ext/957557178/pic24_timer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/957557178/pic24_timer.o.d"      -g -D__DEBUG     -omf=elf -O0 -I"../../lib/include" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/957557178/pic24_timer.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1336045033/FFT.o: ../../chap14/FFT.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1336045033" 
	@${RM} ${OBJECTDIR}/_ext/1336045033/FFT.o.d 
	@${RM} ${OBJECTDIR}/_ext/1336045033/FFT.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../chap14/FFT.c  -o ${OBJECTDIR}/_ext/1336045033/FFT.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1336045033/FFT.o.d"      -g -D__DEBUG     -omf=elf -O0 -I"../../lib/include" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1336045033/FFT.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1336045033/Mic_Samples_Manager.o: ../../chap14/Mic_Samples_Manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1336045033" 
	@${RM} ${OBJECTDIR}/_ext/1336045033/Mic_Samples_Manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1336045033/Mic_Samples_Manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../chap14/Mic_Samples_Manager.c  -o ${OBJECTDIR}/_ext/1336045033/Mic_Samples_Manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1336045033/Mic_Samples_Manager.o.d"      -g -D__DEBUG     -omf=elf -O0 -I"../../lib/include" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1336045033/Mic_Samples_Manager.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1336045033/adc_impl.o: ../../chap14/adc_impl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1336045033" 
	@${RM} ${OBJECTDIR}/_ext/1336045033/adc_impl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1336045033/adc_impl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../chap14/adc_impl.c  -o ${OBJECTDIR}/_ext/1336045033/adc_impl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1336045033/adc_impl.o.d"      -g -D__DEBUG     -omf=elf -O0 -I"../../lib/include" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1336045033/adc_impl.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1336045033/timers.o: ../../chap14/timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1336045033" 
	@${RM} ${OBJECTDIR}/_ext/1336045033/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1336045033/timers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../chap14/timers.c  -o ${OBJECTDIR}/_ext/1336045033/timers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1336045033/timers.o.d"      -g -D__DEBUG     -omf=elf -O0 -I"../../lib/include" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1336045033/timers.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1336045033/Main.o: ../../chap14/Main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1336045033" 
	@${RM} ${OBJECTDIR}/_ext/1336045033/Main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1336045033/Main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../chap14/Main.c  -o ${OBJECTDIR}/_ext/1336045033/Main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1336045033/Main.o.d"      -g -D__DEBUG     -omf=elf -O0 -I"../../lib/include" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1336045033/Main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/957557178/pic24_clockfreq.o: ../../lib/src/pic24_clockfreq.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/957557178" 
	@${RM} ${OBJECTDIR}/_ext/957557178/pic24_clockfreq.o.d 
	@${RM} ${OBJECTDIR}/_ext/957557178/pic24_clockfreq.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../lib/src/pic24_clockfreq.c  -o ${OBJECTDIR}/_ext/957557178/pic24_clockfreq.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/957557178/pic24_clockfreq.o.d"        -g -omf=elf -O0 -I"../../lib/include" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/957557178/pic24_clockfreq.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/957557178/pic24_configbits.o: ../../lib/src/pic24_configbits.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/957557178" 
	@${RM} ${OBJECTDIR}/_ext/957557178/pic24_configbits.o.d 
	@${RM} ${OBJECTDIR}/_ext/957557178/pic24_configbits.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../lib/src/pic24_configbits.c  -o ${OBJECTDIR}/_ext/957557178/pic24_configbits.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/957557178/pic24_configbits.o.d"        -g -omf=elf -O0 -I"../../lib/include" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/957557178/pic24_configbits.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/957557178/pic24_serial.o: ../../lib/src/pic24_serial.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/957557178" 
	@${RM} ${OBJECTDIR}/_ext/957557178/pic24_serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/957557178/pic24_serial.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../lib/src/pic24_serial.c  -o ${OBJECTDIR}/_ext/957557178/pic24_serial.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/957557178/pic24_serial.o.d"        -g -omf=elf -O0 -I"../../lib/include" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/957557178/pic24_serial.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/957557178/pic24_uart.o: ../../lib/src/pic24_uart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/957557178" 
	@${RM} ${OBJECTDIR}/_ext/957557178/pic24_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/957557178/pic24_uart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../lib/src/pic24_uart.c  -o ${OBJECTDIR}/_ext/957557178/pic24_uart.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/957557178/pic24_uart.o.d"        -g -omf=elf -O0 -I"../../lib/include" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/957557178/pic24_uart.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/957557178/pic24_util.o: ../../lib/src/pic24_util.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/957557178" 
	@${RM} ${OBJECTDIR}/_ext/957557178/pic24_util.o.d 
	@${RM} ${OBJECTDIR}/_ext/957557178/pic24_util.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../lib/src/pic24_util.c  -o ${OBJECTDIR}/_ext/957557178/pic24_util.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/957557178/pic24_util.o.d"        -g -omf=elf -O0 -I"../../lib/include" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/957557178/pic24_util.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/957557178/pic24_adc.o: ../../lib/src/pic24_adc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/957557178" 
	@${RM} ${OBJECTDIR}/_ext/957557178/pic24_adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/957557178/pic24_adc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../lib/src/pic24_adc.c  -o ${OBJECTDIR}/_ext/957557178/pic24_adc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/957557178/pic24_adc.o.d"        -g -omf=elf -O0 -I"../../lib/include" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/957557178/pic24_adc.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/957557178/pic24_timer.o: ../../lib/src/pic24_timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/957557178" 
	@${RM} ${OBJECTDIR}/_ext/957557178/pic24_timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/957557178/pic24_timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../lib/src/pic24_timer.c  -o ${OBJECTDIR}/_ext/957557178/pic24_timer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/957557178/pic24_timer.o.d"        -g -omf=elf -O0 -I"../../lib/include" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/957557178/pic24_timer.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1336045033/FFT.o: ../../chap14/FFT.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1336045033" 
	@${RM} ${OBJECTDIR}/_ext/1336045033/FFT.o.d 
	@${RM} ${OBJECTDIR}/_ext/1336045033/FFT.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../chap14/FFT.c  -o ${OBJECTDIR}/_ext/1336045033/FFT.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1336045033/FFT.o.d"        -g -omf=elf -O0 -I"../../lib/include" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1336045033/FFT.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1336045033/Mic_Samples_Manager.o: ../../chap14/Mic_Samples_Manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1336045033" 
	@${RM} ${OBJECTDIR}/_ext/1336045033/Mic_Samples_Manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1336045033/Mic_Samples_Manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../chap14/Mic_Samples_Manager.c  -o ${OBJECTDIR}/_ext/1336045033/Mic_Samples_Manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1336045033/Mic_Samples_Manager.o.d"        -g -omf=elf -O0 -I"../../lib/include" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1336045033/Mic_Samples_Manager.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1336045033/adc_impl.o: ../../chap14/adc_impl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1336045033" 
	@${RM} ${OBJECTDIR}/_ext/1336045033/adc_impl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1336045033/adc_impl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../chap14/adc_impl.c  -o ${OBJECTDIR}/_ext/1336045033/adc_impl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1336045033/adc_impl.o.d"        -g -omf=elf -O0 -I"../../lib/include" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1336045033/adc_impl.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1336045033/timers.o: ../../chap14/timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1336045033" 
	@${RM} ${OBJECTDIR}/_ext/1336045033/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1336045033/timers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../chap14/timers.c  -o ${OBJECTDIR}/_ext/1336045033/timers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1336045033/timers.o.d"        -g -omf=elf -O0 -I"../../lib/include" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1336045033/timers.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1336045033/Main.o: ../../chap14/Main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1336045033" 
	@${RM} ${OBJECTDIR}/_ext/1336045033/Main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1336045033/Main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../chap14/Main.c  -o ${OBJECTDIR}/_ext/1336045033/Main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1336045033/Main.o.d"        -g -omf=elf -O0 -I"../../lib/include" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1336045033/Main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/BonusProject.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../../lib/lkr/p33EP128GP502_bootldr.gld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/BonusProject.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG   -omf=elf     -Wl,--local-stack,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,--report-mem$(MP_EXTRA_LD_POST) 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/BonusProject.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../../lib/lkr/p33EP128GP502_bootldr.gld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/BonusProject.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -Wl,--local-stack,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,--report-mem$(MP_EXTRA_LD_POST) 
	${MP_CC_DIR}\\xc16-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/BonusProject.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf  
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
