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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/pjct.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/pjct.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=--mafrlcsj
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
SOURCEFILES_QUOTED_IF_SPACED=../../src/led_init.c ../main.c ../../src/switch_init.as ../../../common/delay_10us.as ../../../common/delay_1ms.as ../../../common/delay_200ms.as ../../../common/delay_40ms.as

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1445274692/led_init.p1 ${OBJECTDIR}/_ext/1472/main.p1 ${OBJECTDIR}/_ext/1445274692/switch_init.obj ${OBJECTDIR}/_ext/907750266/delay_10us.obj ${OBJECTDIR}/_ext/907750266/delay_1ms.obj ${OBJECTDIR}/_ext/907750266/delay_200ms.obj ${OBJECTDIR}/_ext/907750266/delay_40ms.obj
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1445274692/led_init.p1.d ${OBJECTDIR}/_ext/1472/main.p1.d ${OBJECTDIR}/_ext/1445274692/switch_init.obj.d ${OBJECTDIR}/_ext/907750266/delay_10us.obj.d ${OBJECTDIR}/_ext/907750266/delay_1ms.obj.d ${OBJECTDIR}/_ext/907750266/delay_200ms.obj.d ${OBJECTDIR}/_ext/907750266/delay_40ms.obj.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1445274692/led_init.p1 ${OBJECTDIR}/_ext/1472/main.p1 ${OBJECTDIR}/_ext/1445274692/switch_init.obj ${OBJECTDIR}/_ext/907750266/delay_10us.obj ${OBJECTDIR}/_ext/907750266/delay_1ms.obj ${OBJECTDIR}/_ext/907750266/delay_200ms.obj ${OBJECTDIR}/_ext/907750266/delay_40ms.obj

# Source Files
SOURCEFILES=../../src/led_init.c ../main.c ../../src/switch_init.as ../../../common/delay_10us.as ../../../common/delay_1ms.as ../../../common/delay_200ms.as ../../../common/delay_40ms.as


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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/pjct.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F27K40
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1445274692/led_init.p1: ../../src/led_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1445274692" 
	@${RM} ${OBJECTDIR}/_ext/1445274692/led_init.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1445274692/led_init.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3  --double=24 --float=24 --emi=wordwrite -O0 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1445274692/led_init.p1 ../../src/led_init.c 
	@-${MV} ${OBJECTDIR}/_ext/1445274692/led_init.d ${OBJECTDIR}/_ext/1445274692/led_init.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1445274692/led_init.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1472/main.p1: ../main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3  --double=24 --float=24 --emi=wordwrite -O0 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1472/main.p1 ../main.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/main.d ${OBJECTDIR}/_ext/1472/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/_ext/1445274692/led_init.p1: ../../src/led_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1445274692" 
	@${RM} ${OBJECTDIR}/_ext/1445274692/led_init.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1445274692/led_init.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite -O0 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1445274692/led_init.p1 ../../src/led_init.c 
	@-${MV} ${OBJECTDIR}/_ext/1445274692/led_init.d ${OBJECTDIR}/_ext/1445274692/led_init.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1445274692/led_init.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1472/main.p1: ../main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite -O0 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1472/main.p1 ../main.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/main.d ${OBJECTDIR}/_ext/1472/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1445274692/switch_init.obj: ../../src/switch_init.as  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1445274692" 
	@${RM} ${OBJECTDIR}/_ext/1445274692/switch_init.obj.d 
	@${RM} ${OBJECTDIR}/_ext/1445274692/switch_init.obj 
	${MP_CC} -C $(MP_EXTRA_AS_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3  --double=24 --float=24 --emi=wordwrite -O0 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1445274692/switch_init.obj  ../../src/switch_init.as 
	@-${MV} ${OBJECTDIR}/_ext/1445274692/switch_init.d ${OBJECTDIR}/_ext/1445274692/switch_init.obj.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1445274692/switch_init.obj.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/907750266/delay_10us.obj: ../../../common/delay_10us.as  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/907750266" 
	@${RM} ${OBJECTDIR}/_ext/907750266/delay_10us.obj.d 
	@${RM} ${OBJECTDIR}/_ext/907750266/delay_10us.obj 
	${MP_CC} -C $(MP_EXTRA_AS_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3  --double=24 --float=24 --emi=wordwrite -O0 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/907750266/delay_10us.obj  ../../../common/delay_10us.as 
	@-${MV} ${OBJECTDIR}/_ext/907750266/delay_10us.d ${OBJECTDIR}/_ext/907750266/delay_10us.obj.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/907750266/delay_10us.obj.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/907750266/delay_1ms.obj: ../../../common/delay_1ms.as  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/907750266" 
	@${RM} ${OBJECTDIR}/_ext/907750266/delay_1ms.obj.d 
	@${RM} ${OBJECTDIR}/_ext/907750266/delay_1ms.obj 
	${MP_CC} -C $(MP_EXTRA_AS_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3  --double=24 --float=24 --emi=wordwrite -O0 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/907750266/delay_1ms.obj  ../../../common/delay_1ms.as 
	@-${MV} ${OBJECTDIR}/_ext/907750266/delay_1ms.d ${OBJECTDIR}/_ext/907750266/delay_1ms.obj.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/907750266/delay_1ms.obj.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/907750266/delay_200ms.obj: ../../../common/delay_200ms.as  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/907750266" 
	@${RM} ${OBJECTDIR}/_ext/907750266/delay_200ms.obj.d 
	@${RM} ${OBJECTDIR}/_ext/907750266/delay_200ms.obj 
	${MP_CC} -C $(MP_EXTRA_AS_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3  --double=24 --float=24 --emi=wordwrite -O0 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/907750266/delay_200ms.obj  ../../../common/delay_200ms.as 
	@-${MV} ${OBJECTDIR}/_ext/907750266/delay_200ms.d ${OBJECTDIR}/_ext/907750266/delay_200ms.obj.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/907750266/delay_200ms.obj.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/907750266/delay_40ms.obj: ../../../common/delay_40ms.as  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/907750266" 
	@${RM} ${OBJECTDIR}/_ext/907750266/delay_40ms.obj.d 
	@${RM} ${OBJECTDIR}/_ext/907750266/delay_40ms.obj 
	${MP_CC} -C $(MP_EXTRA_AS_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3  --double=24 --float=24 --emi=wordwrite -O0 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/907750266/delay_40ms.obj  ../../../common/delay_40ms.as 
	@-${MV} ${OBJECTDIR}/_ext/907750266/delay_40ms.d ${OBJECTDIR}/_ext/907750266/delay_40ms.obj.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/907750266/delay_40ms.obj.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/_ext/1445274692/switch_init.obj: ../../src/switch_init.as  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1445274692" 
	@${RM} ${OBJECTDIR}/_ext/1445274692/switch_init.obj.d 
	@${RM} ${OBJECTDIR}/_ext/1445274692/switch_init.obj 
	${MP_CC} -C $(MP_EXTRA_AS_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite -O0 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1445274692/switch_init.obj  ../../src/switch_init.as 
	@-${MV} ${OBJECTDIR}/_ext/1445274692/switch_init.d ${OBJECTDIR}/_ext/1445274692/switch_init.obj.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1445274692/switch_init.obj.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/907750266/delay_10us.obj: ../../../common/delay_10us.as  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/907750266" 
	@${RM} ${OBJECTDIR}/_ext/907750266/delay_10us.obj.d 
	@${RM} ${OBJECTDIR}/_ext/907750266/delay_10us.obj 
	${MP_CC} -C $(MP_EXTRA_AS_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite -O0 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/907750266/delay_10us.obj  ../../../common/delay_10us.as 
	@-${MV} ${OBJECTDIR}/_ext/907750266/delay_10us.d ${OBJECTDIR}/_ext/907750266/delay_10us.obj.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/907750266/delay_10us.obj.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/907750266/delay_1ms.obj: ../../../common/delay_1ms.as  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/907750266" 
	@${RM} ${OBJECTDIR}/_ext/907750266/delay_1ms.obj.d 
	@${RM} ${OBJECTDIR}/_ext/907750266/delay_1ms.obj 
	${MP_CC} -C $(MP_EXTRA_AS_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite -O0 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/907750266/delay_1ms.obj  ../../../common/delay_1ms.as 
	@-${MV} ${OBJECTDIR}/_ext/907750266/delay_1ms.d ${OBJECTDIR}/_ext/907750266/delay_1ms.obj.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/907750266/delay_1ms.obj.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/907750266/delay_200ms.obj: ../../../common/delay_200ms.as  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/907750266" 
	@${RM} ${OBJECTDIR}/_ext/907750266/delay_200ms.obj.d 
	@${RM} ${OBJECTDIR}/_ext/907750266/delay_200ms.obj 
	${MP_CC} -C $(MP_EXTRA_AS_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite -O0 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/907750266/delay_200ms.obj  ../../../common/delay_200ms.as 
	@-${MV} ${OBJECTDIR}/_ext/907750266/delay_200ms.d ${OBJECTDIR}/_ext/907750266/delay_200ms.obj.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/907750266/delay_200ms.obj.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/907750266/delay_40ms.obj: ../../../common/delay_40ms.as  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/907750266" 
	@${RM} ${OBJECTDIR}/_ext/907750266/delay_40ms.obj.d 
	@${RM} ${OBJECTDIR}/_ext/907750266/delay_40ms.obj 
	${MP_CC} -C $(MP_EXTRA_AS_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite -O0 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/907750266/delay_40ms.obj  ../../../common/delay_40ms.as 
	@-${MV} ${OBJECTDIR}/_ext/907750266/delay_40ms.d ${OBJECTDIR}/_ext/907750266/delay_40ms.obj.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/907750266/delay_40ms.obj.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/pjct.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G -mdist/${CND_CONF}/${IMAGE_TYPE}/pjct.${IMAGE_TYPE}.map  -D__DEBUG=1  --debugger=pickit3  -DXPRJ_default=$(CND_CONF)  --double=24 --float=24 --emi=wordwrite -O0 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../" --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"        $(COMPARISON_BUILD) --memorysummary dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -odist/${CND_CONF}/${IMAGE_TYPE}/pjct.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/pjct.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/pjct.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G -mdist/${CND_CONF}/${IMAGE_TYPE}/pjct.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  --double=24 --float=24 --emi=wordwrite -O0 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../" --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     $(COMPARISON_BUILD) --memorysummary dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -odist/${CND_CONF}/${IMAGE_TYPE}/pjct.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
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
