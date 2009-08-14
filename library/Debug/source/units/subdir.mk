################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../source/units/TTAdsr.cpp \
../source/units/TTBuffer.cpp \
../source/units/TTCrossfade.cpp \
../source/units/TTMatrixMixer.cpp \
../source/units/TTNoise.cpp \
../source/units/TTOperator.cpp \
../source/units/TTPhasor.cpp \
../source/units/TTRamp.cpp \
../source/units/TTWavetable.cpp \
../source/units/TTZerocross.cpp 

OBJS += \
./source/units/TTAdsr.o \
./source/units/TTBuffer.o \
./source/units/TTCrossfade.o \
./source/units/TTMatrixMixer.o \
./source/units/TTNoise.o \
./source/units/TTOperator.o \
./source/units/TTPhasor.o \
./source/units/TTRamp.o \
./source/units/TTWavetable.o \
./source/units/TTZerocross.o 

CPP_DEPS += \
./source/units/TTAdsr.d \
./source/units/TTBuffer.d \
./source/units/TTCrossfade.d \
./source/units/TTMatrixMixer.d \
./source/units/TTNoise.d \
./source/units/TTOperator.d \
./source/units/TTPhasor.d \
./source/units/TTRamp.d \
./source/units/TTWavetable.d \
./source/units/TTZerocross.d 


# Each subdirectory must supply rules for building sources it contributes
source/units/%.o: ../source/units/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DTT_PLATFORM_LINUX -I../../../Foundation/library/includes -I../includes -I../includes/units -I../portaudio/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


