//
//  dome_key_event_source_simulator.m
//  dome_key_event_source_simulator
//
//  Created by tw on 10/14/18.
//  Copyright © 2018 tw. All rights reserved.
//

#import "dome_key_event_source_simulator.h"

@implementation dome_key_event_source_simulator

@end

const int key_down[] = {0xa00, 0xa};
const int key_up[] = {0xb00, 0xb};

// #define KEY_DOWN {0xa00, 0xa}
// #define KEY_UP {0xb00, 0xb}


void dkess_press_key(int key, NSEventModifierFlags modifier_flags) {
    const int flags[2][2] = {key_down, key_up};

    for (int i = 0; i < 2; i++) {
        NSEvent *event = [NSEvent otherEventWithType:NSSystemDefined
                           location:NSZeroPoint
                      modifierFlags:flags[i][0]
                          timestamp:0.0
                       windowNumber:0
                            context:nil
                            subtype:NSScreenChangedEventType
                              data1:(NX_KEYTYPE_PLAY << 16) | (flags[i][1] << 8)
                              data2:-1];

        CGEventRef cg_event = [event CGEvent];
        CGEventPost(kCGHIDEventTap, cg_event);
        CFRelease(cg_event);
    }
}
