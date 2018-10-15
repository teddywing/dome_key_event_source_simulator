SOURCES := dome_key_event_source_simulator/*
LIB_DEBUG := ~/Library/Developer/Xcode/DerivedData/dome_key_event_source_simulator-*/Build/Products/Debug/libdome_key_event_source_simulator.a

.PHONY: build
build: $(LIB_DEBUG)

$(LIB_DEBUG): $(SOURCES)
	xcodebuild -scheme dome_key_event_source_simulator -configuration Debug

.PHONY: clean
clean:
	xcodebuild -scheme dome_key_event_source_simulator -configuration Debug clean

test: test.c $(LIB_DEBUG)
	gcc -g -Wall -Wextra -Werror -ObjC \
	-isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk \
	-o $@ \
	$< \
	$(LIB_DEBUG)
