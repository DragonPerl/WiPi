# WiPi
XS-file to use the WiringPi library in a Perl skript [testing state]

I figured out that Perl can work with C-librarys using an XS-File.
This works like a glue petween the Perl-skript and the C-library, means it translates 
Perls variables and parameters send to the C-code that C can do things with it and 
translates the returned values back into "perlish", so that Perl can work with it.

I wrote this XS-file to use the functions of the WiringPi Library, written by Gordon Henderson, in a Perl-Skript. 

At this point I want to thank Gordon for this amazing library!!!
It is very easy to use and feels realy like programming an Arduino. 



####- Description of the actual version of "WiPi":
```    
    The first version coming soon will provide the 
    basic funktions like digital read or write a value 
    to a GPIO-pin and write a PWM-value to a pin. 
    
    For more information look at the table below where
    you can find the actual functions. 
    
    The actual version is in a test status. I don't 
    guarantee that it will work properly.
    Of corse I am on testing and turning things arround 
    that it will work. If you recognise any errors or 
    suggestions feel free to leave a comment.
    I will answere every posting that makes sense to me, 
    so please don't be upset if I don't answere yours. 
    Either it is a question I can't answere at the moment, or 
    it doesn't make sense to me! ;)
```


####- Table of availible functions:
```
   in WiPi (Perl)         | in wiringPi.c (original library)  |  function
  ========================|===================================|===================================================
  wipi_setup()            | wiringPiSetup(void)               | is necessary for initialising wiringPi
  ------------------------|-----------------------------------|---------------------------------------------------
  digital_write(pin, val) | digitalWrite(int pin, int value)  | sets the given pin high or low      
  ------------------------|-----------------------------------|---------------------------------------------------
  pwm_write(pin, val)     | pwmWrite(int pin, int value)      | sets the given pin to a pwm-value from 0 to 255    
  ------------------------|-----------------------------------|---------------------------------------------------
  digital_read(pin)       | digitalRead(int pin)              | reads the state of the given pin (returns 1 or 0)
    
    
```

####- Installation Guide
```    
    To use the XS-file you have to install the WiringPi-library first. 
    
    To do so, go to the following link: 
    http://wiringpi.com/download-and-install/
    There you can find a description on how to install it. 
        
    Afterwords you have to download the WiPi repository by cloning the repository to your computer.
        $ cd     
        $ git clone https://github.com/DragonPerl/WiPi
    
    To install this module (for Linux) type the following:
       $ perl Makefile.PL
       $ make
       $ make test
       $ make install
    
    After installing the new library you are ready to use the functions in Perl.
```


####- Toughts and important
```
- use of the I2C-Port of the Raspberry Pi
    To use RasPi's I2C-port you have to use either a I2C-device 
    working at 3.3V or use a bidirectional level shifter.
    Any questions? Feel free to contact me ...

```

####- ToDo
- ~~add structure~~ `-> did it ;)` 
- ~~write all availible functions into table~~ `-> did it ;)`
- ~~test basic funktions~~ `-> did it ;)`
- add I2C-library `-> in process`
- test I2C-library
- add software-PWM-funtions
- test pwm-functions
- add software-tone-functions
- test tone-functions
