#include "dome_key_event_source_simulator/dome_key_event_source_simulator.h"

#define NX_KEYTYPE_SOUND_DOWN 1

int main() {
	// const int NX_KEYTYPE_PLAY = 16;
	dkess_press_key(NX_KEYTYPE_SOUND_DOWN, NSEventModifierFlagOption);

	return 0;
}
