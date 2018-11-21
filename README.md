DomeKey Event Source Simulator
==============================

A Mac library that simulates NX keys, as defined in
[`/System/Library/Frameworks/IOKit.framework/Versions/A/Headers/hidsystem/ev_keymap.h`][1].

This makes it possible to simulate media keys, for example, and other special
function-row keys.

The library provides a C interface for compatibility with non-Objective-C code.


## Building
Run the following to build static library `libdome_key_event_source_simulator.a`
in Xcode’s DerivedData path:

	$ make build-release

The library is designed to work on Mac OS X 10.6 and later.


## License
Copyright © 2018 Teddy Wing. This project is part of [DomeKey][2], and is
published under the same license (see the included LICENSE file).


[1]: https://opensource.apple.com/source/IOHIDFamily/IOHIDFamily-86.1/IOHIDSystem/IOKit/hidsystem/ev_keymap.h
[2]: https://domekey.teddywing.com/
