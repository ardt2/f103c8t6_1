################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include System/Source/cortexm/subdir.mk
-include System/Source/Newlib/subdir.mk
-include System/Source/Cmsis/subdir.mk
-include Source/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
SECONDARY_FLASH += \
103c8t6_1.hex \

SECONDARY_SIZE += \
103c8t6_1.siz \


# All Target
all: 103c8t6_1.elf secondary-outputs

# Tool invocations
103c8t6_1.elf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: GNU ARM Cross C++ Linker'
	arm-none-eabi-g++ -mcpu=cortex-m3 -mthumb -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -ffreestanding -Wall -Wextra  -g -T mem.ld -T libs.ld -T sections.ld -nostartfiles -Xlinker --gc-sections -L"../Ldscripts" -Wl,-Map,"103c8t6_1.map" -o "103c8t6_1.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

103c8t6_1.hex: 103c8t6_1.elf
	@echo 'Invoking: GNU ARM Cross Create Flash Image'
	arm-none-eabi-objcopy -O ihex "103c8t6_1.elf"  "103c8t6_1.hex"
	@echo 'Finished building: $@'
	@echo ' '

103c8t6_1.siz: 103c8t6_1.elf
	@echo 'Invoking: GNU ARM Cross Print Size'
	arm-none-eabi-size --format=berkeley "103c8t6_1.elf"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(CC_DEPS)$(C++_DEPS)$(OBJS)$(C_UPPER_DEPS)$(CXX_DEPS)$(SECONDARY_FLASH)$(SECONDARY_SIZE)$(ASM_DEPS)$(S_UPPER_DEPS)$(C_DEPS)$(CPP_DEPS) 103c8t6_1.elf
	-@echo ' '

secondary-outputs: $(SECONDARY_FLASH) $(SECONDARY_SIZE)

.PHONY: all clean dependents

-include ../makefile.targets
