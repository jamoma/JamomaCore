################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../source/TTAudioEngine.cpp \
../source/TTAudioObject.cpp \
../source/TTAudioSignal.cpp \
../source/TTAudioSignalArray.cpp \
../source/TTDSP.cpp 

OBJS += \
./source/TTAudioEngine.o \
./source/TTAudioObject.o \
./source/TTAudioSignal.o \
./source/TTAudioSignalArray.o \
./source/TTDSP.o 

CPP_DEPS += \
./source/TTAudioEngine.d \
./source/TTAudioObject.d \
./source/TTAudioSignal.d \
./source/TTAudioSignalArray.d \
./source/TTDSP.d 


# Each subdirectory must supply rules for building sources it contributes
source/%.o: ../source/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DTT_PLATFORM_LINUX -I../../../Foundation/library/includes -I../includes -I../includes/units -I../portaudio/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


