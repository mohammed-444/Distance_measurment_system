################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../source/gpio.c \
../source/icu.c \
../source/lcd.c \
../source/main.c \
../source/ultrasonic.c 

OBJS += \
./source/gpio.o \
./source/icu.o \
./source/lcd.o \
./source/main.o \
./source/ultrasonic.o 

C_DEPS += \
./source/gpio.d \
./source/icu.d \
./source/lcd.d \
./source/main.d \
./source/ultrasonic.d 


# Each subdirectory must supply rules for building sources it contributes
source/%.o: ../source/%.c source/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -Wall -g2 -gstabs -O0 -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -mmcu=atmega16 -DF_CPU=1000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


