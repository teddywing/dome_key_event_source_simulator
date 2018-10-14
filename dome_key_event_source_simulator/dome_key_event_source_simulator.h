//
//  dome_key_event_source_simulator.h
//  dome_key_event_source_simulator
//
//  Created by tw on 10/14/18.
//  Copyright © 2018 tw. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface dome_key_event_source_simulator : NSObject

@end


void dkess_press_key(int key, NSEventModifierFlags modifier_flags);
