################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Source/main103c8t6.cpp 

OBJS += \
./Source/main103c8t6.o 

CPP_DEPS += \
./Source/main103c8t6.d 


# Each subdirectory must supply rules for building sources it contributes
Source/%.o: ../Source/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM Cross C++ Compiler'
	arm-none-eabi-g++ -mcpu=cortex-m3 -mthumb -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -ffreestanding -fno-move-loop-invariants -Wall -Wextra  -g3 -DDEBUG -DHSE_VALUE=72000000 -DHSI_VALUE=8000000 -DSTM32F103xB -DSTM32F10X_MD -I"../System/Include" -I"../System/Include/Cmsis" -std=gnu++11 -fabi-version=0 -fno-exceptions -fno-rtti -fno-use-cxa-atexit -fno-threadsafe-statics -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


