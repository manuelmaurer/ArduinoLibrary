# ArduinoLibrary
## The Arduino Core as a library for use in raw C++-Projects

Based on the Arduino sources from https://github.com/arduino/Arduino

## Requirements

You have to compile your code with avr-g++ (NOT avr-gcc) as the Arduino sources contain c++ classes that cannot be used in c without adaption!

## Usage

In your project you have to define the preprocessor variable `BOARD` either in your code or with the compiler flag `-D`.
See <a href="local/config.h">local/config.h</a> for valid values of `BOARD`.

In your code first include the config.h, then the Arduino.h:

	#include "/Path/to/ArduinoLibrary/local/config.h"
	#include "/Path/to/ArduinoLibrary/src/cores/arduino/Arduino.h"
	
For compilation use the following compiler flags:

	C: -Os -Wall -fno-threadsafe-statics -fno-exceptions -ffunction-sections -fdata-sections -mmcu=$CPU
	C++: -Os -Wall -fno-threadsafe-statics -fno-exceptions -ffunction-sections -fdata-sections -mmcu=$CPU
	
Replace `$CPU` with the AVR chip on your arduino board (e.g. `atmega32u4` on the ArduinoMicro). 

In the linking process include the Library with the following Options:

	-L/Path/To/Library/File -larduinolibrary