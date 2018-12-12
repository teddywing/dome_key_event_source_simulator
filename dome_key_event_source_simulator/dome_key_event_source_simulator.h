//
//  dome_key_event_source_simulator.h
//  dome_key_event_source_simulator
//
//  Created by tw on 10/14/18.
//  Copyright © 2018 Teddy Wing. All rights reserved.
//
//  This Source Code Form is subject to the terms of the Mozilla Public
//  License, v. 2.0. If a copy of the MPL was not distributed with this
//  file, You can obtain one at http://mozilla.org/MPL/2.0/.
//

#ifndef DOME_KEY_EVENT_SOURCE_SIMULATOR_H
#define DOME_KEY_EVENT_SOURCE_SIMULATOR_H

#import <AppKit/AppKit.h>
#import <CoreGraphics/CoreGraphics.h>

void dkess_press_key(int key, NSEventModifierFlags modifier_flags);

#endif /* DOME_KEY_EVENT_SOURCE_SIMULATOR_H */
