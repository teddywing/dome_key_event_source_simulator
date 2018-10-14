//
//  dome_key_event_source_simulator.m
//  dome_key_event_source_simulator
//
//  Created by tw on 10/14/18.
//  Copyright © 2018 tw. All rights reserved.
//

#import "dome_key_event_source_simulator.h"

static const size_t key_down_up[][2] = {
    {0xa00, 0xa},  // Down
    {0xb00, 0xb}   // Up
};


void dkess_press_key(int key, NSEventModifierFlags modifier_flags) {
    for (int i = 0; i < 2; i++) {
        NSEvent *event = [NSEvent otherEventWithType:NSSystemDefined
            location:NSZeroPoint
            modifierFlags:key_down_up[i][0] | modifier_flags
            timestamp:0.0
            windowNumber:0
            context:nil
            subtype:NSScreenChangedEventType
            data1:(key << 16) | (key_down_up[i][1] << 8)
            data2:-1];

        CGEventRef cg_event = [event CGEvent];
        CGEventPost(kCGHIDEventTap, cg_event);
        CFRelease(cg_event);
    }
}
