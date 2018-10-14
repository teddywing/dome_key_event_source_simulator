#include "dome_key_event_source_simulator/dome_key_event_source_simulator.h"

int main() {
	const int NX_KEYTYPE_PLAY = 16;
	dkess_press_key(NX_KEYTYPE_PLAY, 0);

	return 0;
}
