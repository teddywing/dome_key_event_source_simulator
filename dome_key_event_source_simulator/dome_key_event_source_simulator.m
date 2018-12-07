//
//  dome_key_event_source_simulator.m
//  dome_key_event_source_simulator
//
//  Created by tw on 10/14/18.
//  Copyright © 2018 Teddy Wing. All rights reserved.
//
//  This file is part of DomeKey.
//
//  *Purchasing policy notice:* All users of the software are expected to
//  purchase a license from Teddy Wing unless they have a good reason not to
//  pay. Users who can't purchase a license may apply to receive one for free
//  at inquiry@domekey.teddywing.com. Users are free to:
//
//  * download, build, and modify the app;
//  * share the modified source code;
//  * share the purchased or custom-built binaries (with unmodified license
//    and contact info), provided that the purchasing policy is explained to
//    all potential users.
//
//  This software is available under a modified version of the Open Community
//  Indie Software License:
//
//  Permission to use, copy, modify, and/or distribute this software for any
//  purpose is hereby granted, subject to the following conditions:
//
//  * all copies retain the above copyright notice, the above purchasing
//    policy notice and this permission notice unmodified;
//
//  * all copies retain the name of the software (DomeKey), the name of the
//    author (Teddy Wing), and contact information (including, but not limited
//    to, inquiry@domekey.teddywing.com, and domekey.teddywing.com URLs)
//    unmodified;
//
//  * no fee is charged for distribution of the software;
//
//  * the best effort is made to explain the purchasing policy to all users of
//    the software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", AND THE AUTHOR AND COPYRIGHT HOLDERS
//  DISCLAIM ALL WARRANTIES, EXPRESS OR IMPLIED, WITH REGARD TO THIS SOFTWARE,
//  INCLUDING BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
//  A PARTICULAR PURPOSE. IN NO EVENT SHALL THE AUTHOR OR COPYRIGHT HOLDERS BE
//  LIABLE FOR ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY
//  DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA, OR PROFITS, WHETHER
//  IN AN ACTION OF CONTRACT, NEGLIGENCE, OR OTHER TORTIOUS ACTION, ARISING
//  OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
//

#import "dome_key_event_source_simulator.h"

#ifdef AVAILABLE_MAC_OS_X_VERSION_10_12_AND_LATER
    #define NSEVENT_TYPE_SYSTEM_DEFINED NSEventTypeSystemDefined
    #define NSEVENT_SUBTYPE_SCREEN_CHANGED NSEventSubtypeScreenChanged
#else
    #define NSEVENT_TYPE_SYSTEM_DEFINED NSSystemDefined
    #define NSEVENT_SUBTYPE_SCREEN_CHANGED NSScreenChangedEventType
#endif

static const size_t key_down_up[][2] = {
    {0xa00, 0xa},  // Down
    {0xb00, 0xb}   // Up
};


void dkess_press_key(int key, NSEVENT_MODIFIER_FLAGS modifier_flags) {
    for (int i = 0; i < 2; i++) {
        NSEvent *event = [NSEvent otherEventWithType:NSEVENT_TYPE_SYSTEM_DEFINED
            location:NSZeroPoint
            modifierFlags:key_down_up[i][0] | modifier_flags
            timestamp:0.0
            windowNumber:0
            context:nil
            subtype:NSEVENT_SUBTYPE_SCREEN_CHANGED
            data1:(key << 16) | (key_down_up[i][1] << 8)
            data2:-1];

        CGEventRef cg_event = [event CGEvent];
        CGEventPost(kCGHIDEventTap, cg_event);
    }
}
