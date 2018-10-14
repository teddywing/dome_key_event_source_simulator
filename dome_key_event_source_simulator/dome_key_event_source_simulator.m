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

void dkess_press_key(int key, NSEventModifierFlags modifier_flags) {
    NSEvent *event1 = [NSEvent otherEventWithType:NSSystemDefined
                       location:NSZeroPoint
                  modifierFlags:0xa00
                      timestamp:0.0
                   windowNumber:0
                        context:nil
                        subtype:NSScreenChangedEventType
                          data1:(NX_KEYTYPE_PLAY << 16) | (0xa << 8)
                          data2:-1];
    CGEventRef cg_event1 = [event1 CGEvent];
    CGEventPost(kCGHIDEventTap, cg_event1);
    CFRelease(cg_event1);

    NSEvent *event2 = [NSEvent otherEventWithType:NSSystemDefined
                       location:NSZeroPoint
                  modifierFlags:0xb00
                      timestamp:0.0
                   windowNumber:0
                        context:nil
                        subtype:NSScreenChangedEventType
                          data1:(NX_KEYTYPE_PLAY << 16) | (0xb << 8)
                          data2:-1];
    CGEventRef cg_event2 = [event2 CGEvent];
    CGEventPost(kCGHIDEventTap, cg_event2);
    CFRelease(cg_event2);
}
