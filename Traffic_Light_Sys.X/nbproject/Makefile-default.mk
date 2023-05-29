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
FINAL_IMAGE=${DISTDIR}/Traffic_Light_Sys.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/Traffic_Light_Sys.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=ECU_Layer/Button/Button.c ECU_Layer/LED/Led.c MCAL_Layer/EXT_INT/EXT_INT.c MCAL_Layer/GPIO/GPIO.c MCAL_Layer/TIMER/Timer.c Application.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/ECU_Layer/Button/Button.o ${OBJECTDIR}/ECU_Layer/LED/Led.o ${OBJECTDIR}/MCAL_Layer/EXT_INT/EXT_INT.o ${OBJECTDIR}/MCAL_Layer/GPIO/GPIO.o ${OBJECTDIR}/MCAL_Layer/TIMER/Timer.o ${OBJECTDIR}/Application.o
POSSIBLE_DEPFILES=${OBJECTDIR}/ECU_Layer/Button/Button.o.d ${OBJECTDIR}/ECU_Layer/LED/Led.o.d ${OBJECTDIR}/MCAL_Layer/EXT_INT/EXT_INT.o.d ${OBJECTDIR}/MCAL_Layer/GPIO/GPIO.o.d ${OBJECTDIR}/MCAL_Layer/TIMER/Timer.o.d ${OBJECTDIR}/Application.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/ECU_Layer/Button/Button.o ${OBJECTDIR}/ECU_Layer/LED/Led.o ${OBJECTDIR}/MCAL_Layer/EXT_INT/EXT_INT.o ${OBJECTDIR}/MCAL_Layer/GPIO/GPIO.o ${OBJECTDIR}/MCAL_Layer/TIMER/Timer.o ${OBJECTDIR}/Application.o

# Source Files
SOURCEFILES=ECU_Layer/Button/Button.c ECU_Layer/LED/Led.c MCAL_Layer/EXT_INT/EXT_INT.c MCAL_Layer/GPIO/GPIO.c MCAL_Layer/TIMER/Timer.c Application.c



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
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/Traffic_Light_Sys.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATmega32
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/ECU_Layer/Button/Button.o: ECU_Layer/Button/Button.c  .generated_files/flags/default/fb8f1e37a03c46686ac97268abd9ec605e2791c3 .generated_files/flags/default/2ebadb7499da65fc4c278afdfab593bf9d1d26cd
	@${MKDIR} "${OBJECTDIR}/ECU_Layer/Button" 
	@${RM} ${OBJECTDIR}/ECU_Layer/Button/Button.o.d 
	@${RM} ${OBJECTDIR}/ECU_Layer/Button/Button.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/ECU_Layer/Button/Button.o.d" -MT "${OBJECTDIR}/ECU_Layer/Button/Button.o.d" -MT ${OBJECTDIR}/ECU_Layer/Button/Button.o -o ${OBJECTDIR}/ECU_Layer/Button/Button.o ECU_Layer/Button/Button.c 
	
${OBJECTDIR}/ECU_Layer/LED/Led.o: ECU_Layer/LED/Led.c  .generated_files/flags/default/8e48c0c2e6ddbf5adfc9c1f81e634cfa171b9a43 .generated_files/flags/default/2ebadb7499da65fc4c278afdfab593bf9d1d26cd
	@${MKDIR} "${OBJECTDIR}/ECU_Layer/LED" 
	@${RM} ${OBJECTDIR}/ECU_Layer/LED/Led.o.d 
	@${RM} ${OBJECTDIR}/ECU_Layer/LED/Led.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/ECU_Layer/LED/Led.o.d" -MT "${OBJECTDIR}/ECU_Layer/LED/Led.o.d" -MT ${OBJECTDIR}/ECU_Layer/LED/Led.o -o ${OBJECTDIR}/ECU_Layer/LED/Led.o ECU_Layer/LED/Led.c 
	
${OBJECTDIR}/MCAL_Layer/EXT_INT/EXT_INT.o: MCAL_Layer/EXT_INT/EXT_INT.c  .generated_files/flags/default/8ebedfefa377e101debf58a7d1f6677137a44907 .generated_files/flags/default/2ebadb7499da65fc4c278afdfab593bf9d1d26cd
	@${MKDIR} "${OBJECTDIR}/MCAL_Layer/EXT_INT" 
	@${RM} ${OBJECTDIR}/MCAL_Layer/EXT_INT/EXT_INT.o.d 
	@${RM} ${OBJECTDIR}/MCAL_Layer/EXT_INT/EXT_INT.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/MCAL_Layer/EXT_INT/EXT_INT.o.d" -MT "${OBJECTDIR}/MCAL_Layer/EXT_INT/EXT_INT.o.d" -MT ${OBJECTDIR}/MCAL_Layer/EXT_INT/EXT_INT.o -o ${OBJECTDIR}/MCAL_Layer/EXT_INT/EXT_INT.o MCAL_Layer/EXT_INT/EXT_INT.c 
	
${OBJECTDIR}/MCAL_Layer/GPIO/GPIO.o: MCAL_Layer/GPIO/GPIO.c  .generated_files/flags/default/ebc65ac33cfa2a4737a21c2c81a887faa4c4a8f0 .generated_files/flags/default/2ebadb7499da65fc4c278afdfab593bf9d1d26cd
	@${MKDIR} "${OBJECTDIR}/MCAL_Layer/GPIO" 
	@${RM} ${OBJECTDIR}/MCAL_Layer/GPIO/GPIO.o.d 
	@${RM} ${OBJECTDIR}/MCAL_Layer/GPIO/GPIO.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/MCAL_Layer/GPIO/GPIO.o.d" -MT "${OBJECTDIR}/MCAL_Layer/GPIO/GPIO.o.d" -MT ${OBJECTDIR}/MCAL_Layer/GPIO/GPIO.o -o ${OBJECTDIR}/MCAL_Layer/GPIO/GPIO.o MCAL_Layer/GPIO/GPIO.c 
	
${OBJECTDIR}/MCAL_Layer/TIMER/Timer.o: MCAL_Layer/TIMER/Timer.c  .generated_files/flags/default/214218dec9eb109e7151a4bbccf69f815bf0db38 .generated_files/flags/default/2ebadb7499da65fc4c278afdfab593bf9d1d26cd
	@${MKDIR} "${OBJECTDIR}/MCAL_Layer/TIMER" 
	@${RM} ${OBJECTDIR}/MCAL_Layer/TIMER/Timer.o.d 
	@${RM} ${OBJECTDIR}/MCAL_Layer/TIMER/Timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/MCAL_Layer/TIMER/Timer.o.d" -MT "${OBJECTDIR}/MCAL_Layer/TIMER/Timer.o.d" -MT ${OBJECTDIR}/MCAL_Layer/TIMER/Timer.o -o ${OBJECTDIR}/MCAL_Layer/TIMER/Timer.o MCAL_Layer/TIMER/Timer.c 
	
${OBJECTDIR}/Application.o: Application.c  .generated_files/flags/default/97fea7ccf5f6ac63147324d5090aa3d2a4a52678 .generated_files/flags/default/2ebadb7499da65fc4c278afdfab593bf9d1d26cd
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Application.o.d 
	@${RM} ${OBJECTDIR}/Application.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/Application.o.d" -MT "${OBJECTDIR}/Application.o.d" -MT ${OBJECTDIR}/Application.o -o ${OBJECTDIR}/Application.o Application.c 
	
else
${OBJECTDIR}/ECU_Layer/Button/Button.o: ECU_Layer/Button/Button.c  .generated_files/flags/default/575d88c2cb30c6eb9aecaa0d59fa7146bd19cc69 .generated_files/flags/default/2ebadb7499da65fc4c278afdfab593bf9d1d26cd
	@${MKDIR} "${OBJECTDIR}/ECU_Layer/Button" 
	@${RM} ${OBJECTDIR}/ECU_Layer/Button/Button.o.d 
	@${RM} ${OBJECTDIR}/ECU_Layer/Button/Button.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/ECU_Layer/Button/Button.o.d" -MT "${OBJECTDIR}/ECU_Layer/Button/Button.o.d" -MT ${OBJECTDIR}/ECU_Layer/Button/Button.o -o ${OBJECTDIR}/ECU_Layer/Button/Button.o ECU_Layer/Button/Button.c 
	
${OBJECTDIR}/ECU_Layer/LED/Led.o: ECU_Layer/LED/Led.c  .generated_files/flags/default/489db22a30b4bdea6271bacbc195d90cedd1260e .generated_files/flags/default/2ebadb7499da65fc4c278afdfab593bf9d1d26cd
	@${MKDIR} "${OBJECTDIR}/ECU_Layer/LED" 
	@${RM} ${OBJECTDIR}/ECU_Layer/LED/Led.o.d 
	@${RM} ${OBJECTDIR}/ECU_Layer/LED/Led.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/ECU_Layer/LED/Led.o.d" -MT "${OBJECTDIR}/ECU_Layer/LED/Led.o.d" -MT ${OBJECTDIR}/ECU_Layer/LED/Led.o -o ${OBJECTDIR}/ECU_Layer/LED/Led.o ECU_Layer/LED/Led.c 
	
${OBJECTDIR}/MCAL_Layer/EXT_INT/EXT_INT.o: MCAL_Layer/EXT_INT/EXT_INT.c  .generated_files/flags/default/3fcf85f586600e20f8314b97241ba72234531c5d .generated_files/flags/default/2ebadb7499da65fc4c278afdfab593bf9d1d26cd
	@${MKDIR} "${OBJECTDIR}/MCAL_Layer/EXT_INT" 
	@${RM} ${OBJECTDIR}/MCAL_Layer/EXT_INT/EXT_INT.o.d 
	@${RM} ${OBJECTDIR}/MCAL_Layer/EXT_INT/EXT_INT.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/MCAL_Layer/EXT_INT/EXT_INT.o.d" -MT "${OBJECTDIR}/MCAL_Layer/EXT_INT/EXT_INT.o.d" -MT ${OBJECTDIR}/MCAL_Layer/EXT_INT/EXT_INT.o -o ${OBJECTDIR}/MCAL_Layer/EXT_INT/EXT_INT.o MCAL_Layer/EXT_INT/EXT_INT.c 
	
${OBJECTDIR}/MCAL_Layer/GPIO/GPIO.o: MCAL_Layer/GPIO/GPIO.c  .generated_files/flags/default/69c4418edbe9852af05b942c516f9b62d43d6299 .generated_files/flags/default/2ebadb7499da65fc4c278afdfab593bf9d1d26cd
	@${MKDIR} "${OBJECTDIR}/MCAL_Layer/GPIO" 
	@${RM} ${OBJECTDIR}/MCAL_Layer/GPIO/GPIO.o.d 
	@${RM} ${OBJECTDIR}/MCAL_Layer/GPIO/GPIO.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/MCAL_Layer/GPIO/GPIO.o.d" -MT "${OBJECTDIR}/MCAL_Layer/GPIO/GPIO.o.d" -MT ${OBJECTDIR}/MCAL_Layer/GPIO/GPIO.o -o ${OBJECTDIR}/MCAL_Layer/GPIO/GPIO.o MCAL_Layer/GPIO/GPIO.c 
	
${OBJECTDIR}/MCAL_Layer/TIMER/Timer.o: MCAL_Layer/TIMER/Timer.c  .generated_files/flags/default/5ee536fd64d630b087fe1bf8dfcb5e036eec0a2d .generated_files/flags/default/2ebadb7499da65fc4c278afdfab593bf9d1d26cd
	@${MKDIR} "${OBJECTDIR}/MCAL_Layer/TIMER" 
	@${RM} ${OBJECTDIR}/MCAL_Layer/TIMER/Timer.o.d 
	@${RM} ${OBJECTDIR}/MCAL_Layer/TIMER/Timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/MCAL_Layer/TIMER/Timer.o.d" -MT "${OBJECTDIR}/MCAL_Layer/TIMER/Timer.o.d" -MT ${OBJECTDIR}/MCAL_Layer/TIMER/Timer.o -o ${OBJECTDIR}/MCAL_Layer/TIMER/Timer.o MCAL_Layer/TIMER/Timer.c 
	
${OBJECTDIR}/Application.o: Application.c  .generated_files/flags/default/46dffbb675ad1f7ebc855767e793cf900579ed63 .generated_files/flags/default/2ebadb7499da65fc4c278afdfab593bf9d1d26cd
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Application.o.d 
	@${RM} ${OBJECTDIR}/Application.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/Application.o.d" -MT "${OBJECTDIR}/Application.o.d" -MT ${OBJECTDIR}/Application.o -o ${OBJECTDIR}/Application.o Application.c 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/Traffic_Light_Sys.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/Traffic_Light_Sys.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"   -gdwarf-2 -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -gdwarf-3     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/Traffic_Light_Sys.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/Traffic_Light_Sys.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group  -Wl,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1
	@${RM} ${DISTDIR}/Traffic_Light_Sys.X.${IMAGE_TYPE}.hex 
	
else
${DISTDIR}/Traffic_Light_Sys.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/Traffic_Light_Sys.X.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -gdwarf-3     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/Traffic_Light_Sys.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/Traffic_Light_Sys.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group 
	${MP_CC_DIR}\\avr-objcopy -O ihex "${DISTDIR}/Traffic_Light_Sys.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" "${DISTDIR}/Traffic_Light_Sys.X.${IMAGE_TYPE}.hex"
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
