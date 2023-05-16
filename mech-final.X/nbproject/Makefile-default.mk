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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/mech-final.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/mech-final.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED="C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/ES_CheckEvents.c" "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/ES_Framework.c" "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/ES_KeyboardInput.c" "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/ES_Main.c" "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/ES_PostList.c" "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/ES_Queue.c" "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/ES_TattleTale.c" "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/ES_Timers.c" "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/Zone1SubHSM.c" "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/ShootingSubHSM.c" "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/Zone23SubHSM.c" "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/ZoneLoadingSubHSM.c" "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/TopHSM.c" "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/ReturningHSM.c" "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/LoadingSubHSM.c" "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/Service_Bumper.c" "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/Service_PingSensor.c" "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/Service_TapeSensorService.c" "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/Service_PeakDetector.c" "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/AD.c" "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/BOARD.c" "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/IO_Ports.c" "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/RC_Servo.c" "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/pwm.c" "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/serial.c" "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/robot.c" "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/EventChecker.c" "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/timers.c"

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1548841071/ES_CheckEvents.o ${OBJECTDIR}/_ext/1548841071/ES_Framework.o ${OBJECTDIR}/_ext/1548841071/ES_KeyboardInput.o ${OBJECTDIR}/_ext/1548841071/ES_Main.o ${OBJECTDIR}/_ext/1548841071/ES_PostList.o ${OBJECTDIR}/_ext/1548841071/ES_Queue.o ${OBJECTDIR}/_ext/1548841071/ES_TattleTale.o ${OBJECTDIR}/_ext/1548841071/ES_Timers.o ${OBJECTDIR}/_ext/1548841071/Zone1SubHSM.o ${OBJECTDIR}/_ext/1548841071/ShootingSubHSM.o ${OBJECTDIR}/_ext/1548841071/Zone23SubHSM.o ${OBJECTDIR}/_ext/1548841071/ZoneLoadingSubHSM.o ${OBJECTDIR}/_ext/1548841071/TopHSM.o ${OBJECTDIR}/_ext/1548841071/ReturningHSM.o ${OBJECTDIR}/_ext/1548841071/LoadingSubHSM.o ${OBJECTDIR}/_ext/1548841071/Service_Bumper.o ${OBJECTDIR}/_ext/1548841071/Service_PingSensor.o ${OBJECTDIR}/_ext/1548841071/Service_TapeSensorService.o ${OBJECTDIR}/_ext/1548841071/Service_PeakDetector.o ${OBJECTDIR}/_ext/1548841071/AD.o ${OBJECTDIR}/_ext/1548841071/BOARD.o ${OBJECTDIR}/_ext/1548841071/IO_Ports.o ${OBJECTDIR}/_ext/1548841071/RC_Servo.o ${OBJECTDIR}/_ext/1548841071/pwm.o ${OBJECTDIR}/_ext/1548841071/serial.o ${OBJECTDIR}/_ext/1548841071/robot.o ${OBJECTDIR}/_ext/1548841071/EventChecker.o ${OBJECTDIR}/_ext/1548841071/timers.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1548841071/ES_CheckEvents.o.d ${OBJECTDIR}/_ext/1548841071/ES_Framework.o.d ${OBJECTDIR}/_ext/1548841071/ES_KeyboardInput.o.d ${OBJECTDIR}/_ext/1548841071/ES_Main.o.d ${OBJECTDIR}/_ext/1548841071/ES_PostList.o.d ${OBJECTDIR}/_ext/1548841071/ES_Queue.o.d ${OBJECTDIR}/_ext/1548841071/ES_TattleTale.o.d ${OBJECTDIR}/_ext/1548841071/ES_Timers.o.d ${OBJECTDIR}/_ext/1548841071/Zone1SubHSM.o.d ${OBJECTDIR}/_ext/1548841071/ShootingSubHSM.o.d ${OBJECTDIR}/_ext/1548841071/Zone23SubHSM.o.d ${OBJECTDIR}/_ext/1548841071/ZoneLoadingSubHSM.o.d ${OBJECTDIR}/_ext/1548841071/TopHSM.o.d ${OBJECTDIR}/_ext/1548841071/ReturningHSM.o.d ${OBJECTDIR}/_ext/1548841071/LoadingSubHSM.o.d ${OBJECTDIR}/_ext/1548841071/Service_Bumper.o.d ${OBJECTDIR}/_ext/1548841071/Service_PingSensor.o.d ${OBJECTDIR}/_ext/1548841071/Service_TapeSensorService.o.d ${OBJECTDIR}/_ext/1548841071/Service_PeakDetector.o.d ${OBJECTDIR}/_ext/1548841071/AD.o.d ${OBJECTDIR}/_ext/1548841071/BOARD.o.d ${OBJECTDIR}/_ext/1548841071/IO_Ports.o.d ${OBJECTDIR}/_ext/1548841071/RC_Servo.o.d ${OBJECTDIR}/_ext/1548841071/pwm.o.d ${OBJECTDIR}/_ext/1548841071/serial.o.d ${OBJECTDIR}/_ext/1548841071/robot.o.d ${OBJECTDIR}/_ext/1548841071/EventChecker.o.d ${OBJECTDIR}/_ext/1548841071/timers.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1548841071/ES_CheckEvents.o ${OBJECTDIR}/_ext/1548841071/ES_Framework.o ${OBJECTDIR}/_ext/1548841071/ES_KeyboardInput.o ${OBJECTDIR}/_ext/1548841071/ES_Main.o ${OBJECTDIR}/_ext/1548841071/ES_PostList.o ${OBJECTDIR}/_ext/1548841071/ES_Queue.o ${OBJECTDIR}/_ext/1548841071/ES_TattleTale.o ${OBJECTDIR}/_ext/1548841071/ES_Timers.o ${OBJECTDIR}/_ext/1548841071/Zone1SubHSM.o ${OBJECTDIR}/_ext/1548841071/ShootingSubHSM.o ${OBJECTDIR}/_ext/1548841071/Zone23SubHSM.o ${OBJECTDIR}/_ext/1548841071/ZoneLoadingSubHSM.o ${OBJECTDIR}/_ext/1548841071/TopHSM.o ${OBJECTDIR}/_ext/1548841071/ReturningHSM.o ${OBJECTDIR}/_ext/1548841071/LoadingSubHSM.o ${OBJECTDIR}/_ext/1548841071/Service_Bumper.o ${OBJECTDIR}/_ext/1548841071/Service_PingSensor.o ${OBJECTDIR}/_ext/1548841071/Service_TapeSensorService.o ${OBJECTDIR}/_ext/1548841071/Service_PeakDetector.o ${OBJECTDIR}/_ext/1548841071/AD.o ${OBJECTDIR}/_ext/1548841071/BOARD.o ${OBJECTDIR}/_ext/1548841071/IO_Ports.o ${OBJECTDIR}/_ext/1548841071/RC_Servo.o ${OBJECTDIR}/_ext/1548841071/pwm.o ${OBJECTDIR}/_ext/1548841071/serial.o ${OBJECTDIR}/_ext/1548841071/robot.o ${OBJECTDIR}/_ext/1548841071/EventChecker.o ${OBJECTDIR}/_ext/1548841071/timers.o

# Source Files
SOURCEFILES=C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/ES_CheckEvents.c C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/ES_Framework.c C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/ES_KeyboardInput.c C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/ES_Main.c C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/ES_PostList.c C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/ES_Queue.c C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/ES_TattleTale.c C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/ES_Timers.c C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/Zone1SubHSM.c C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/ShootingSubHSM.c C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/Zone23SubHSM.c C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/ZoneLoadingSubHSM.c C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/TopHSM.c C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/ReturningHSM.c C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/LoadingSubHSM.c C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/Service_Bumper.c C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/Service_PingSensor.c C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/Service_TapeSensorService.c C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/Service_PeakDetector.c C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/AD.c C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/BOARD.c C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/IO_Ports.c C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/RC_Servo.c C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/pwm.c C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/serial.c C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/robot.c C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/EventChecker.c C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/timers.c



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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/mech-final.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX320F128H
MP_LINKER_FILE_OPTION=,--script="C:\UCSC\2022-2023\Spring 2023\ECE 118\mech-final-project\mech-final.X\bootloader320.ld"
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
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1548841071/ES_CheckEvents.o: C:/UCSC/2022-2023/Spring\ 2023/ECE\ 118/mech-final-project/mech-final.X/src/ES_CheckEvents.c  .generated_files/flags/default/538a1b4ebe9855399f675adb374deecf02feacd2 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1548841071" 
	@${RM} ${OBJECTDIR}/_ext/1548841071/ES_CheckEvents.o.d 
	@${RM} ${OBJECTDIR}/_ext/1548841071/ES_CheckEvents.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src" -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/include" -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1548841071/ES_CheckEvents.o.d" -o ${OBJECTDIR}/_ext/1548841071/ES_CheckEvents.o "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/ES_CheckEvents.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1548841071/ES_Framework.o: C:/UCSC/2022-2023/Spring\ 2023/ECE\ 118/mech-final-project/mech-final.X/src/ES_Framework.c  .generated_files/flags/default/3938f9b2ba0b3ae739ce58f5c333c585db91157a .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1548841071" 
	@${RM} ${OBJECTDIR}/_ext/1548841071/ES_Framework.o.d 
	@${RM} ${OBJECTDIR}/_ext/1548841071/ES_Framework.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src" -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/include" -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1548841071/ES_Framework.o.d" -o ${OBJECTDIR}/_ext/1548841071/ES_Framework.o "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/ES_Framework.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1548841071/ES_KeyboardInput.o: C:/UCSC/2022-2023/Spring\ 2023/ECE\ 118/mech-final-project/mech-final.X/src/ES_KeyboardInput.c  .generated_files/flags/default/7370df1874f1530059639ce9ddbb8877462d4e4d .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1548841071" 
	@${RM} ${OBJECTDIR}/_ext/1548841071/ES_KeyboardInput.o.d 
	@${RM} ${OBJECTDIR}/_ext/1548841071/ES_KeyboardInput.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src" -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/include" -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1548841071/ES_KeyboardInput.o.d" -o ${OBJECTDIR}/_ext/1548841071/ES_KeyboardInput.o "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/ES_KeyboardInput.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1548841071/ES_Main.o: C:/UCSC/2022-2023/Spring\ 2023/ECE\ 118/mech-final-project/mech-final.X/src/ES_Main.c  .generated_files/flags/default/aeaef8ecb5e29217c77f0966edb01c39532bb755 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1548841071" 
	@${RM} ${OBJECTDIR}/_ext/1548841071/ES_Main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1548841071/ES_Main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src" -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/include" -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1548841071/ES_Main.o.d" -o ${OBJECTDIR}/_ext/1548841071/ES_Main.o "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/ES_Main.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1548841071/ES_PostList.o: C:/UCSC/2022-2023/Spring\ 2023/ECE\ 118/mech-final-project/mech-final.X/src/ES_PostList.c  .generated_files/flags/default/93a950177cc593bec87da80b74c0904fb86dd5cf .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1548841071" 
	@${RM} ${OBJECTDIR}/_ext/1548841071/ES_PostList.o.d 
	@${RM} ${OBJECTDIR}/_ext/1548841071/ES_PostList.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src" -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/include" -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1548841071/ES_PostList.o.d" -o ${OBJECTDIR}/_ext/1548841071/ES_PostList.o "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/ES_PostList.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1548841071/ES_Queue.o: C:/UCSC/2022-2023/Spring\ 2023/ECE\ 118/mech-final-project/mech-final.X/src/ES_Queue.c  .generated_files/flags/default/d47dbd246a2b9504dbb59d4f50c1666c0ee4f42 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1548841071" 
	@${RM} ${OBJECTDIR}/_ext/1548841071/ES_Queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1548841071/ES_Queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src" -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/include" -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1548841071/ES_Queue.o.d" -o ${OBJECTDIR}/_ext/1548841071/ES_Queue.o "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/ES_Queue.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1548841071/ES_TattleTale.o: C:/UCSC/2022-2023/Spring\ 2023/ECE\ 118/mech-final-project/mech-final.X/src/ES_TattleTale.c  .generated_files/flags/default/47ef79e8cf80d3eb64f5fb3537816e090f6fb5aa .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1548841071" 
	@${RM} ${OBJECTDIR}/_ext/1548841071/ES_TattleTale.o.d 
	@${RM} ${OBJECTDIR}/_ext/1548841071/ES_TattleTale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src" -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/include" -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1548841071/ES_TattleTale.o.d" -o ${OBJECTDIR}/_ext/1548841071/ES_TattleTale.o "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/ES_TattleTale.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1548841071/ES_Timers.o: C:/UCSC/2022-2023/Spring\ 2023/ECE\ 118/mech-final-project/mech-final.X/src/ES_Timers.c  .generated_files/flags/default/38a96413ddd58ab776d0d90c969a24fa1ad3b3df .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1548841071" 
	@${RM} ${OBJECTDIR}/_ext/1548841071/ES_Timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1548841071/ES_Timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src" -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/include" -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1548841071/ES_Timers.o.d" -o ${OBJECTDIR}/_ext/1548841071/ES_Timers.o "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/ES_Timers.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1548841071/Zone1SubHSM.o: C:/UCSC/2022-2023/Spring\ 2023/ECE\ 118/mech-final-project/mech-final.X/src/Zone1SubHSM.c  .generated_files/flags/default/5e15e784f5c476d1cec56905a147945bdae96e6a .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1548841071" 
	@${RM} ${OBJECTDIR}/_ext/1548841071/Zone1SubHSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1548841071/Zone1SubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src" -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/include" -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1548841071/Zone1SubHSM.o.d" -o ${OBJECTDIR}/_ext/1548841071/Zone1SubHSM.o "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/Zone1SubHSM.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1548841071/ShootingSubHSM.o: C:/UCSC/2022-2023/Spring\ 2023/ECE\ 118/mech-final-project/mech-final.X/src/ShootingSubHSM.c  .generated_files/flags/default/60f731bcf366bccedb3b377b3934e6ebb56f6cb4 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1548841071" 
	@${RM} ${OBJECTDIR}/_ext/1548841071/ShootingSubHSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1548841071/ShootingSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src" -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/include" -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1548841071/ShootingSubHSM.o.d" -o ${OBJECTDIR}/_ext/1548841071/ShootingSubHSM.o "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/ShootingSubHSM.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1548841071/Zone23SubHSM.o: C:/UCSC/2022-2023/Spring\ 2023/ECE\ 118/mech-final-project/mech-final.X/src/Zone23SubHSM.c  .generated_files/flags/default/c4db616a180b4f412953a6c430054d177e55ed71 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1548841071" 
	@${RM} ${OBJECTDIR}/_ext/1548841071/Zone23SubHSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1548841071/Zone23SubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src" -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/include" -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1548841071/Zone23SubHSM.o.d" -o ${OBJECTDIR}/_ext/1548841071/Zone23SubHSM.o "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/Zone23SubHSM.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1548841071/ZoneLoadingSubHSM.o: C:/UCSC/2022-2023/Spring\ 2023/ECE\ 118/mech-final-project/mech-final.X/src/ZoneLoadingSubHSM.c  .generated_files/flags/default/feae248137d0d91e9edfe12dba4f8030c1d51b08 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1548841071" 
	@${RM} ${OBJECTDIR}/_ext/1548841071/ZoneLoadingSubHSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1548841071/ZoneLoadingSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src" -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/include" -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1548841071/ZoneLoadingSubHSM.o.d" -o ${OBJECTDIR}/_ext/1548841071/ZoneLoadingSubHSM.o "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/ZoneLoadingSubHSM.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1548841071/TopHSM.o: C:/UCSC/2022-2023/Spring\ 2023/ECE\ 118/mech-final-project/mech-final.X/src/TopHSM.c  .generated_files/flags/default/7f86e713030a0a40165f9cb649f4f7da1be8f41a .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1548841071" 
	@${RM} ${OBJECTDIR}/_ext/1548841071/TopHSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1548841071/TopHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src" -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/include" -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1548841071/TopHSM.o.d" -o ${OBJECTDIR}/_ext/1548841071/TopHSM.o "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/TopHSM.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1548841071/ReturningHSM.o: C:/UCSC/2022-2023/Spring\ 2023/ECE\ 118/mech-final-project/mech-final.X/src/ReturningHSM.c  .generated_files/flags/default/7d489e62dedcaa5cd98439b59543906b6e857ed7 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1548841071" 
	@${RM} ${OBJECTDIR}/_ext/1548841071/ReturningHSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1548841071/ReturningHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src" -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/include" -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1548841071/ReturningHSM.o.d" -o ${OBJECTDIR}/_ext/1548841071/ReturningHSM.o "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/ReturningHSM.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1548841071/LoadingSubHSM.o: C:/UCSC/2022-2023/Spring\ 2023/ECE\ 118/mech-final-project/mech-final.X/src/LoadingSubHSM.c  .generated_files/flags/default/895a0a1fd32f3366fe029c45de7a7c5e70e0d79d .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1548841071" 
	@${RM} ${OBJECTDIR}/_ext/1548841071/LoadingSubHSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1548841071/LoadingSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src" -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/include" -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1548841071/LoadingSubHSM.o.d" -o ${OBJECTDIR}/_ext/1548841071/LoadingSubHSM.o "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/LoadingSubHSM.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1548841071/Service_Bumper.o: C:/UCSC/2022-2023/Spring\ 2023/ECE\ 118/mech-final-project/mech-final.X/src/Service_Bumper.c  .generated_files/flags/default/608ff540ed3f307702e480cba5a580f5c6b80a81 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1548841071" 
	@${RM} ${OBJECTDIR}/_ext/1548841071/Service_Bumper.o.d 
	@${RM} ${OBJECTDIR}/_ext/1548841071/Service_Bumper.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src" -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/include" -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1548841071/Service_Bumper.o.d" -o ${OBJECTDIR}/_ext/1548841071/Service_Bumper.o "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/Service_Bumper.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1548841071/Service_PingSensor.o: C:/UCSC/2022-2023/Spring\ 2023/ECE\ 118/mech-final-project/mech-final.X/src/Service_PingSensor.c  .generated_files/flags/default/c2961037dc1e61f23c4e7f98301bd3d5911a6198 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1548841071" 
	@${RM} ${OBJECTDIR}/_ext/1548841071/Service_PingSensor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1548841071/Service_PingSensor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src" -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/include" -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1548841071/Service_PingSensor.o.d" -o ${OBJECTDIR}/_ext/1548841071/Service_PingSensor.o "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/Service_PingSensor.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1548841071/Service_TapeSensorService.o: C:/UCSC/2022-2023/Spring\ 2023/ECE\ 118/mech-final-project/mech-final.X/src/Service_TapeSensorService.c  .generated_files/flags/default/d0db5c3df4e064d9cb6b8c8c686805fce95ab60d .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1548841071" 
	@${RM} ${OBJECTDIR}/_ext/1548841071/Service_TapeSensorService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1548841071/Service_TapeSensorService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src" -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/include" -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1548841071/Service_TapeSensorService.o.d" -o ${OBJECTDIR}/_ext/1548841071/Service_TapeSensorService.o "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/Service_TapeSensorService.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1548841071/Service_PeakDetector.o: C:/UCSC/2022-2023/Spring\ 2023/ECE\ 118/mech-final-project/mech-final.X/src/Service_PeakDetector.c  .generated_files/flags/default/e80bf8aaf246fdc8b8f2bce9904d10c67364def4 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1548841071" 
	@${RM} ${OBJECTDIR}/_ext/1548841071/Service_PeakDetector.o.d 
	@${RM} ${OBJECTDIR}/_ext/1548841071/Service_PeakDetector.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src" -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/include" -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1548841071/Service_PeakDetector.o.d" -o ${OBJECTDIR}/_ext/1548841071/Service_PeakDetector.o "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/Service_PeakDetector.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1548841071/AD.o: C:/UCSC/2022-2023/Spring\ 2023/ECE\ 118/mech-final-project/mech-final.X/src/AD.c  .generated_files/flags/default/6f57595fc7c887f7a667bfffe19b7908fbcd686f .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1548841071" 
	@${RM} ${OBJECTDIR}/_ext/1548841071/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/1548841071/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src" -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/include" -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1548841071/AD.o.d" -o ${OBJECTDIR}/_ext/1548841071/AD.o "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/AD.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1548841071/BOARD.o: C:/UCSC/2022-2023/Spring\ 2023/ECE\ 118/mech-final-project/mech-final.X/src/BOARD.c  .generated_files/flags/default/91b8b54a878cafac83b6ad8fc685a01d0da3c966 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1548841071" 
	@${RM} ${OBJECTDIR}/_ext/1548841071/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/1548841071/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src" -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/include" -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1548841071/BOARD.o.d" -o ${OBJECTDIR}/_ext/1548841071/BOARD.o "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/BOARD.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1548841071/IO_Ports.o: C:/UCSC/2022-2023/Spring\ 2023/ECE\ 118/mech-final-project/mech-final.X/src/IO_Ports.c  .generated_files/flags/default/48b2560000ffb22db0563b9b443f668021825b02 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1548841071" 
	@${RM} ${OBJECTDIR}/_ext/1548841071/IO_Ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/1548841071/IO_Ports.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src" -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/include" -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1548841071/IO_Ports.o.d" -o ${OBJECTDIR}/_ext/1548841071/IO_Ports.o "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/IO_Ports.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1548841071/RC_Servo.o: C:/UCSC/2022-2023/Spring\ 2023/ECE\ 118/mech-final-project/mech-final.X/src/RC_Servo.c  .generated_files/flags/default/a973b4004da102118609c6de0aa2936b41e7b35b .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1548841071" 
	@${RM} ${OBJECTDIR}/_ext/1548841071/RC_Servo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1548841071/RC_Servo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src" -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/include" -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1548841071/RC_Servo.o.d" -o ${OBJECTDIR}/_ext/1548841071/RC_Servo.o "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/RC_Servo.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1548841071/pwm.o: C:/UCSC/2022-2023/Spring\ 2023/ECE\ 118/mech-final-project/mech-final.X/src/pwm.c  .generated_files/flags/default/8d5e35e7da2034f0affcd610c57a1c1df9ca6b31 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1548841071" 
	@${RM} ${OBJECTDIR}/_ext/1548841071/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1548841071/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src" -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/include" -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1548841071/pwm.o.d" -o ${OBJECTDIR}/_ext/1548841071/pwm.o "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/pwm.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1548841071/serial.o: C:/UCSC/2022-2023/Spring\ 2023/ECE\ 118/mech-final-project/mech-final.X/src/serial.c  .generated_files/flags/default/d180b8a7505a2301f037cee25f97c01c1c01feee .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1548841071" 
	@${RM} ${OBJECTDIR}/_ext/1548841071/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/1548841071/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src" -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/include" -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1548841071/serial.o.d" -o ${OBJECTDIR}/_ext/1548841071/serial.o "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/serial.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1548841071/robot.o: C:/UCSC/2022-2023/Spring\ 2023/ECE\ 118/mech-final-project/mech-final.X/src/robot.c  .generated_files/flags/default/796b279cd7a150015f25386ff95cfd937dd39be0 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1548841071" 
	@${RM} ${OBJECTDIR}/_ext/1548841071/robot.o.d 
	@${RM} ${OBJECTDIR}/_ext/1548841071/robot.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src" -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/include" -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1548841071/robot.o.d" -o ${OBJECTDIR}/_ext/1548841071/robot.o "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/robot.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1548841071/EventChecker.o: C:/UCSC/2022-2023/Spring\ 2023/ECE\ 118/mech-final-project/mech-final.X/src/EventChecker.c  .generated_files/flags/default/ce1bad210b83ce6d9082e495f303f46b29c307e5 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1548841071" 
	@${RM} ${OBJECTDIR}/_ext/1548841071/EventChecker.o.d 
	@${RM} ${OBJECTDIR}/_ext/1548841071/EventChecker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src" -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/include" -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1548841071/EventChecker.o.d" -o ${OBJECTDIR}/_ext/1548841071/EventChecker.o "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/EventChecker.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1548841071/timers.o: C:/UCSC/2022-2023/Spring\ 2023/ECE\ 118/mech-final-project/mech-final.X/src/timers.c  .generated_files/flags/default/f85b9445143b3bdde0d5d9cae7063a169f4b8215 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1548841071" 
	@${RM} ${OBJECTDIR}/_ext/1548841071/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1548841071/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src" -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/include" -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1548841071/timers.o.d" -o ${OBJECTDIR}/_ext/1548841071/timers.o "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/timers.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1548841071/ES_CheckEvents.o: C:/UCSC/2022-2023/Spring\ 2023/ECE\ 118/mech-final-project/mech-final.X/src/ES_CheckEvents.c  .generated_files/flags/default/9e16ed3ba71c25be7ff514535bccc1160bcf786e .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1548841071" 
	@${RM} ${OBJECTDIR}/_ext/1548841071/ES_CheckEvents.o.d 
	@${RM} ${OBJECTDIR}/_ext/1548841071/ES_CheckEvents.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src" -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/include" -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1548841071/ES_CheckEvents.o.d" -o ${OBJECTDIR}/_ext/1548841071/ES_CheckEvents.o "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/ES_CheckEvents.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1548841071/ES_Framework.o: C:/UCSC/2022-2023/Spring\ 2023/ECE\ 118/mech-final-project/mech-final.X/src/ES_Framework.c  .generated_files/flags/default/58aaf8b1395097af49ef4c002310d767d6452fdc .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1548841071" 
	@${RM} ${OBJECTDIR}/_ext/1548841071/ES_Framework.o.d 
	@${RM} ${OBJECTDIR}/_ext/1548841071/ES_Framework.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src" -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/include" -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1548841071/ES_Framework.o.d" -o ${OBJECTDIR}/_ext/1548841071/ES_Framework.o "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/ES_Framework.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1548841071/ES_KeyboardInput.o: C:/UCSC/2022-2023/Spring\ 2023/ECE\ 118/mech-final-project/mech-final.X/src/ES_KeyboardInput.c  .generated_files/flags/default/88b9e806ada46b9cec3a1c2147a3cec02c3a3f66 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1548841071" 
	@${RM} ${OBJECTDIR}/_ext/1548841071/ES_KeyboardInput.o.d 
	@${RM} ${OBJECTDIR}/_ext/1548841071/ES_KeyboardInput.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src" -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/include" -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1548841071/ES_KeyboardInput.o.d" -o ${OBJECTDIR}/_ext/1548841071/ES_KeyboardInput.o "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/ES_KeyboardInput.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1548841071/ES_Main.o: C:/UCSC/2022-2023/Spring\ 2023/ECE\ 118/mech-final-project/mech-final.X/src/ES_Main.c  .generated_files/flags/default/377c3c7c5e42262442e600fe9f754d12ac832627 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1548841071" 
	@${RM} ${OBJECTDIR}/_ext/1548841071/ES_Main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1548841071/ES_Main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src" -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/include" -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1548841071/ES_Main.o.d" -o ${OBJECTDIR}/_ext/1548841071/ES_Main.o "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/ES_Main.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1548841071/ES_PostList.o: C:/UCSC/2022-2023/Spring\ 2023/ECE\ 118/mech-final-project/mech-final.X/src/ES_PostList.c  .generated_files/flags/default/3e8045080cab278878a3de1a42ae2d4dd52bfda1 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1548841071" 
	@${RM} ${OBJECTDIR}/_ext/1548841071/ES_PostList.o.d 
	@${RM} ${OBJECTDIR}/_ext/1548841071/ES_PostList.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src" -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/include" -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1548841071/ES_PostList.o.d" -o ${OBJECTDIR}/_ext/1548841071/ES_PostList.o "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/ES_PostList.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1548841071/ES_Queue.o: C:/UCSC/2022-2023/Spring\ 2023/ECE\ 118/mech-final-project/mech-final.X/src/ES_Queue.c  .generated_files/flags/default/8626c7e289d179280d07b93b3f5a49daa9f25c5b .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1548841071" 
	@${RM} ${OBJECTDIR}/_ext/1548841071/ES_Queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1548841071/ES_Queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src" -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/include" -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1548841071/ES_Queue.o.d" -o ${OBJECTDIR}/_ext/1548841071/ES_Queue.o "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/ES_Queue.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1548841071/ES_TattleTale.o: C:/UCSC/2022-2023/Spring\ 2023/ECE\ 118/mech-final-project/mech-final.X/src/ES_TattleTale.c  .generated_files/flags/default/2bf3aee39ce75631f9d49b8adce2c8dbac6ad68 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1548841071" 
	@${RM} ${OBJECTDIR}/_ext/1548841071/ES_TattleTale.o.d 
	@${RM} ${OBJECTDIR}/_ext/1548841071/ES_TattleTale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src" -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/include" -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1548841071/ES_TattleTale.o.d" -o ${OBJECTDIR}/_ext/1548841071/ES_TattleTale.o "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/ES_TattleTale.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1548841071/ES_Timers.o: C:/UCSC/2022-2023/Spring\ 2023/ECE\ 118/mech-final-project/mech-final.X/src/ES_Timers.c  .generated_files/flags/default/78c319f0064893db6175f4673d78add76a9856c0 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1548841071" 
	@${RM} ${OBJECTDIR}/_ext/1548841071/ES_Timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1548841071/ES_Timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src" -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/include" -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1548841071/ES_Timers.o.d" -o ${OBJECTDIR}/_ext/1548841071/ES_Timers.o "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/ES_Timers.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1548841071/Zone1SubHSM.o: C:/UCSC/2022-2023/Spring\ 2023/ECE\ 118/mech-final-project/mech-final.X/src/Zone1SubHSM.c  .generated_files/flags/default/9f9799aff16a4c2f76c2d0d9956502b5ce1d7ded .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1548841071" 
	@${RM} ${OBJECTDIR}/_ext/1548841071/Zone1SubHSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1548841071/Zone1SubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src" -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/include" -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1548841071/Zone1SubHSM.o.d" -o ${OBJECTDIR}/_ext/1548841071/Zone1SubHSM.o "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/Zone1SubHSM.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1548841071/ShootingSubHSM.o: C:/UCSC/2022-2023/Spring\ 2023/ECE\ 118/mech-final-project/mech-final.X/src/ShootingSubHSM.c  .generated_files/flags/default/c3d9b33a8e9bce09a90a602429a9896f176c75a8 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1548841071" 
	@${RM} ${OBJECTDIR}/_ext/1548841071/ShootingSubHSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1548841071/ShootingSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src" -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/include" -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1548841071/ShootingSubHSM.o.d" -o ${OBJECTDIR}/_ext/1548841071/ShootingSubHSM.o "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/ShootingSubHSM.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1548841071/Zone23SubHSM.o: C:/UCSC/2022-2023/Spring\ 2023/ECE\ 118/mech-final-project/mech-final.X/src/Zone23SubHSM.c  .generated_files/flags/default/60b75714ee8b69470e92466030762971dba2d725 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1548841071" 
	@${RM} ${OBJECTDIR}/_ext/1548841071/Zone23SubHSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1548841071/Zone23SubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src" -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/include" -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1548841071/Zone23SubHSM.o.d" -o ${OBJECTDIR}/_ext/1548841071/Zone23SubHSM.o "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/Zone23SubHSM.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1548841071/ZoneLoadingSubHSM.o: C:/UCSC/2022-2023/Spring\ 2023/ECE\ 118/mech-final-project/mech-final.X/src/ZoneLoadingSubHSM.c  .generated_files/flags/default/8adcd2bbb3e7045bfa6013e3bc475423f8c34f81 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1548841071" 
	@${RM} ${OBJECTDIR}/_ext/1548841071/ZoneLoadingSubHSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1548841071/ZoneLoadingSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src" -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/include" -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1548841071/ZoneLoadingSubHSM.o.d" -o ${OBJECTDIR}/_ext/1548841071/ZoneLoadingSubHSM.o "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/ZoneLoadingSubHSM.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1548841071/TopHSM.o: C:/UCSC/2022-2023/Spring\ 2023/ECE\ 118/mech-final-project/mech-final.X/src/TopHSM.c  .generated_files/flags/default/3043391d60c173ab8bf51b3800ce93d01f46a4fc .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1548841071" 
	@${RM} ${OBJECTDIR}/_ext/1548841071/TopHSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1548841071/TopHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src" -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/include" -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1548841071/TopHSM.o.d" -o ${OBJECTDIR}/_ext/1548841071/TopHSM.o "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/TopHSM.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1548841071/ReturningHSM.o: C:/UCSC/2022-2023/Spring\ 2023/ECE\ 118/mech-final-project/mech-final.X/src/ReturningHSM.c  .generated_files/flags/default/ea48d1435d081be785349d1e4cbb1a8bf83f5743 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1548841071" 
	@${RM} ${OBJECTDIR}/_ext/1548841071/ReturningHSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1548841071/ReturningHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src" -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/include" -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1548841071/ReturningHSM.o.d" -o ${OBJECTDIR}/_ext/1548841071/ReturningHSM.o "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/ReturningHSM.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1548841071/LoadingSubHSM.o: C:/UCSC/2022-2023/Spring\ 2023/ECE\ 118/mech-final-project/mech-final.X/src/LoadingSubHSM.c  .generated_files/flags/default/47874a708d3b10769a88854d8b9c363f2c2923 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1548841071" 
	@${RM} ${OBJECTDIR}/_ext/1548841071/LoadingSubHSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1548841071/LoadingSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src" -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/include" -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1548841071/LoadingSubHSM.o.d" -o ${OBJECTDIR}/_ext/1548841071/LoadingSubHSM.o "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/LoadingSubHSM.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1548841071/Service_Bumper.o: C:/UCSC/2022-2023/Spring\ 2023/ECE\ 118/mech-final-project/mech-final.X/src/Service_Bumper.c  .generated_files/flags/default/8bcb491d3be3ced2fa6787b27a58f826ddc94059 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1548841071" 
	@${RM} ${OBJECTDIR}/_ext/1548841071/Service_Bumper.o.d 
	@${RM} ${OBJECTDIR}/_ext/1548841071/Service_Bumper.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src" -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/include" -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1548841071/Service_Bumper.o.d" -o ${OBJECTDIR}/_ext/1548841071/Service_Bumper.o "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/Service_Bumper.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1548841071/Service_PingSensor.o: C:/UCSC/2022-2023/Spring\ 2023/ECE\ 118/mech-final-project/mech-final.X/src/Service_PingSensor.c  .generated_files/flags/default/9afe9280b1c34b8cfffcaab74d88836a36f37091 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1548841071" 
	@${RM} ${OBJECTDIR}/_ext/1548841071/Service_PingSensor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1548841071/Service_PingSensor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src" -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/include" -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1548841071/Service_PingSensor.o.d" -o ${OBJECTDIR}/_ext/1548841071/Service_PingSensor.o "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/Service_PingSensor.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1548841071/Service_TapeSensorService.o: C:/UCSC/2022-2023/Spring\ 2023/ECE\ 118/mech-final-project/mech-final.X/src/Service_TapeSensorService.c  .generated_files/flags/default/a31d9c9024edfda64ab8e749fe37f25738ae5a4d .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1548841071" 
	@${RM} ${OBJECTDIR}/_ext/1548841071/Service_TapeSensorService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1548841071/Service_TapeSensorService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src" -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/include" -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1548841071/Service_TapeSensorService.o.d" -o ${OBJECTDIR}/_ext/1548841071/Service_TapeSensorService.o "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/Service_TapeSensorService.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1548841071/Service_PeakDetector.o: C:/UCSC/2022-2023/Spring\ 2023/ECE\ 118/mech-final-project/mech-final.X/src/Service_PeakDetector.c  .generated_files/flags/default/3d83089058c22bb220647f021e182649a166a0f4 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1548841071" 
	@${RM} ${OBJECTDIR}/_ext/1548841071/Service_PeakDetector.o.d 
	@${RM} ${OBJECTDIR}/_ext/1548841071/Service_PeakDetector.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src" -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/include" -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1548841071/Service_PeakDetector.o.d" -o ${OBJECTDIR}/_ext/1548841071/Service_PeakDetector.o "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/Service_PeakDetector.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1548841071/AD.o: C:/UCSC/2022-2023/Spring\ 2023/ECE\ 118/mech-final-project/mech-final.X/src/AD.c  .generated_files/flags/default/970e6a5168555f43821ec4ff55b111464d070fe1 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1548841071" 
	@${RM} ${OBJECTDIR}/_ext/1548841071/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/1548841071/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src" -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/include" -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1548841071/AD.o.d" -o ${OBJECTDIR}/_ext/1548841071/AD.o "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/AD.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1548841071/BOARD.o: C:/UCSC/2022-2023/Spring\ 2023/ECE\ 118/mech-final-project/mech-final.X/src/BOARD.c  .generated_files/flags/default/f396124ab136e31de44651aef225f250fbdc7404 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1548841071" 
	@${RM} ${OBJECTDIR}/_ext/1548841071/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/1548841071/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src" -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/include" -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1548841071/BOARD.o.d" -o ${OBJECTDIR}/_ext/1548841071/BOARD.o "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/BOARD.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1548841071/IO_Ports.o: C:/UCSC/2022-2023/Spring\ 2023/ECE\ 118/mech-final-project/mech-final.X/src/IO_Ports.c  .generated_files/flags/default/98f9a77a862fe38906c887b436184643d17b6f6f .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1548841071" 
	@${RM} ${OBJECTDIR}/_ext/1548841071/IO_Ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/1548841071/IO_Ports.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src" -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/include" -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1548841071/IO_Ports.o.d" -o ${OBJECTDIR}/_ext/1548841071/IO_Ports.o "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/IO_Ports.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1548841071/RC_Servo.o: C:/UCSC/2022-2023/Spring\ 2023/ECE\ 118/mech-final-project/mech-final.X/src/RC_Servo.c  .generated_files/flags/default/a76b9034182f6b7a5e69edeec9f080163d405684 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1548841071" 
	@${RM} ${OBJECTDIR}/_ext/1548841071/RC_Servo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1548841071/RC_Servo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src" -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/include" -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1548841071/RC_Servo.o.d" -o ${OBJECTDIR}/_ext/1548841071/RC_Servo.o "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/RC_Servo.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1548841071/pwm.o: C:/UCSC/2022-2023/Spring\ 2023/ECE\ 118/mech-final-project/mech-final.X/src/pwm.c  .generated_files/flags/default/9e07defc4b997d6284f2b1a88e281084ded777db .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1548841071" 
	@${RM} ${OBJECTDIR}/_ext/1548841071/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1548841071/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src" -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/include" -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1548841071/pwm.o.d" -o ${OBJECTDIR}/_ext/1548841071/pwm.o "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/pwm.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1548841071/serial.o: C:/UCSC/2022-2023/Spring\ 2023/ECE\ 118/mech-final-project/mech-final.X/src/serial.c  .generated_files/flags/default/7a87bdf3a9d27b1ac5fe0e832554bbbd1d115650 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1548841071" 
	@${RM} ${OBJECTDIR}/_ext/1548841071/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/1548841071/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src" -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/include" -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1548841071/serial.o.d" -o ${OBJECTDIR}/_ext/1548841071/serial.o "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/serial.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1548841071/robot.o: C:/UCSC/2022-2023/Spring\ 2023/ECE\ 118/mech-final-project/mech-final.X/src/robot.c  .generated_files/flags/default/6bc46409b623af35ff306abff6b4088457a3f2e3 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1548841071" 
	@${RM} ${OBJECTDIR}/_ext/1548841071/robot.o.d 
	@${RM} ${OBJECTDIR}/_ext/1548841071/robot.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src" -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/include" -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1548841071/robot.o.d" -o ${OBJECTDIR}/_ext/1548841071/robot.o "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/robot.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1548841071/EventChecker.o: C:/UCSC/2022-2023/Spring\ 2023/ECE\ 118/mech-final-project/mech-final.X/src/EventChecker.c  .generated_files/flags/default/b1cb89f3db6522cb4a5da1fdee33679de8163321 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1548841071" 
	@${RM} ${OBJECTDIR}/_ext/1548841071/EventChecker.o.d 
	@${RM} ${OBJECTDIR}/_ext/1548841071/EventChecker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src" -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/include" -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1548841071/EventChecker.o.d" -o ${OBJECTDIR}/_ext/1548841071/EventChecker.o "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/EventChecker.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1548841071/timers.o: C:/UCSC/2022-2023/Spring\ 2023/ECE\ 118/mech-final-project/mech-final.X/src/timers.c  .generated_files/flags/default/e718328b51c6276654b1890a9ea2c18c30b3ca28 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1548841071" 
	@${RM} ${OBJECTDIR}/_ext/1548841071/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1548841071/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src" -I"C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/include" -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1548841071/timers.o.d" -o ${OBJECTDIR}/_ext/1548841071/timers.o "C:/UCSC/2022-2023/Spring 2023/ECE 118/mech-final-project/mech-final.X/src/timers.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/mech-final.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    C:/UCSC/2022-2023/Spring\ 2023/ECE\ 118/mech-final-project/mech-final.X/bootloader320.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/mech-final.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=1000,--no-code-in-dinit,--no-dinit-in-serial-mem,-L"include",-L"src",-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/mech-final.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   C:/UCSC/2022-2023/Spring\ 2023/ECE\ 118/mech-final-project/mech-final.X/bootloader320.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/mech-final.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=1000,--no-code-in-dinit,--no-dinit-in-serial-mem,-L"include",-L"src",-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/mech-final.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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
