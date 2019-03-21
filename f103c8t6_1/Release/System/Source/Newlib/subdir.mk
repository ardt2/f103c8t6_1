################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../System/Source/Newlib/_exit.c \
../System/Source/Newlib/_sbrk.c \
../System/Source/Newlib/_startup.c \
../System/Source/Newlib/_syscalls.c \
../System/Source/Newlib/assert.c 

CPP_SRCS += \
../System/Source/Newlib/_cxx.cpp 

OBJS += \
./System/Source/Newlib/_cxx.o \
./System/Source/Newlib/_exit.o \
./System/Source/Newlib/_sbrk.o \
./System/Source/Newlib/_startup.o \
./System/Source/Newlib/_syscalls.o \
./System/Source/Newlib/assert.o 

C_DEPS += \
./System/Source/Newlib/_exit.d \
./System/Source/Newlib/_sbrk.d \
./System/Source/Newlib/_startup.d \
./System/Source/Newlib/_syscalls.d \
./System/Source/Newlib/assert.d 

CPP_DEPS += \
./System/Source/Newlib/_cxx.d 


# Each subdirectory must supply rules for building sources it contributes
System/Source/Newlib/%.o: ../System/Source/Newlib/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM Cross C++ Compiler'
	arm-none-eabi-g++ -mcpu=cortex-m3 -mthumb -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -ffreestanding -Wall -Wextra  -g -DNDEBUG -DHSE_VALUE=72000000 -DHSI_VALUE=8000000 -DSTM32F103xB -DSTM32F10X_MD -I"../System/Include" -I"../System/Include/Cmsis" -std=gnu++11 -fabi-version=0 -fno-exceptions -fno-rtti -fno-use-cxa-atexit -fno-threadsafe-statics -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

System/Source/Newlib/%.o: ../System/Source/Newlib/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -ffreestanding -Wall -Wextra  -g -DNDEBUG -DHSE_VALUE=72000000 -DHSI_VALUE=8000000 -DSTM32F103xB -DSTM32F10X_MD -I"../System/Include" -I"../System/Include/Cmsis" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


