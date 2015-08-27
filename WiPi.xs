#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include <wiringPi.h>

MODULE = WiPi		PACKAGE = WiPi		


# setup wiringPi
void
setup_wipi()
    CODE:
        wiringPiSetup();


# set pinmode
void
pin_mode(pin, val)
int pin
int val
    CODE:
        pinMode(pin, val); 


# write pwm value to output-pin
void
pwm_write(pin, val)
int pin
int val
    CODE:
        pwmWrite(pin, val); 


# write digital value to output-pin
void
digital_write(pin, val)
int pin
int val
    CODE:
        digitalWrite(pin, val);



# read digital input-pin
int
digital_read(pin);
int pin
    CODE:
        RETVAL = digitalRead(pin);
    OUTPUT:
        RETVAL


# setup wiringPi I2C interface
void
i2c_setup(dev)
int dev
    CODE:
        wringPiI2CSetup(dev);


# simple device read
int
i2c_read(dev)
int dev
    CODE:
        RETVAL = wiringPiI2CRead(dev);
    OUTPUT:
        RETVAL


# read an 8bit register
int
i2c_read_reg8(dev, regi)
int dev
int regi
    CODE:
        RETVAL = wiringPiI2CReadReg8(dev, regi);
    OUTPUT:
        RETVAL


# read a 16bit register
int
i2c_read_reg16(dev, regi)
int dev
int regi
    CODE:
        RETVAL = wiringPiI2CReadReg16(dev, regi);
    OUTPUT:
        RETVAL


# simple device write
void
i2c_write(dev, dat)
int dev
int dat
    CODE:
        wiringPiI2CWrite(dev, dat);


# write 8bit data to device register
void
i2c_write_reg8(dev, regi, dat)
int dev
int regi
int dat
    CODE:
        wiringPiI2CWriteReg8(dev, regi, dat);


# write 16bit data to device register
void
i2c_write_reg16(dev, regi, dat)
int dev
int regi
int dat
    CODE:
        wiringPiI2CWriteReg16(dev, regi, dat);



