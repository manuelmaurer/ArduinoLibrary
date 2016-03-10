#ifndef CONFIG_H
#define CONFIG_H

#define ARDUINOMICRO	1
#define ARDUINOMINI		2
#define ARDUINONANO23	3
#define ARDUINONANO30	4


#if BOARD == ARDUINOMICRO
	#include "ArduinoMicro.h"
#elif BOARD == ARDUINOMINI
	#include "ArduinoMini.h"
#elif BOARD == ARDUINONANO23 || BOARD == ARDUINONANO30
	#include "ArduinoNano.h"
#endif

#endif /* CONFIG_H */

