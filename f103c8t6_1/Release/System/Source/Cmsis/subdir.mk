################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../System/Source/Cmsis/system_stm32f10x.c \
../System/Source/Cmsis/vectors_stm32f10x.c 

OBJS += \
./System/Source/Cmsis/system_stm32f10x.o \
./System/Source/Cmsis/vectors_stm32f10x.o 

C_DEPS += \
./System/Source/Cmsis/system_stm32f10x.d \
./System/Source/Cmsis/vectors_stm32f10x.d 


# Each subdirectory must supply rules for building sources it contributes
System/Source/Cmsis/%.o: ../System/Source/Cmsis/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -ffreestanding -Wall -Wextra  -g -DNDEBUG -DHSE_VALUE=72000000 -DHSI_VALUE=8000000 -DSTM32F103xB -DSTM32F10X_MD -I"../System/Include" -I"../System/Include/Cmsis" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


