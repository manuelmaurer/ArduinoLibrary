#include "config.h"

#ifndef PINS_H
#define PINS_H

#if BOARD == ARDUINOMICRO
	#include "../src/variants/micro/pins_arduino.h"
#elif BOARD == ARDUINOMINI
	#include "../src/variants/standard/pins_arduino.h"
#elif BOARD == ARDUINONANO23 || BOARD == ARDUINONANO30
	#include "../src/variants/standard/pins_arduino.h"
#endif

#endif /* PINS_H */

