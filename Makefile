SOURCES := dome_key_event_source_simulator/*
OBJECT_DEBUG := ~/Library/Developer/Xcode/DerivedData/dome_key_event_source_simulator-*/Build/Intermediates.noindex/dome_key_event_source_simulator.build/Debug/dome_key_event_source_simulator.build/Objects-normal/x86_64/dome_key_event_source_simulator.o
LIB_DEBUG := ~/Library/Developer/Xcode/DerivedData/dome_key_event_source_simulator-*/Build/Products/Debug/libdome_key_event_source_simulator.a

.PHONY: build
build: $(LIB_DEBUG)

$(OBJECT_DEBUG): $(SOURCES)
	LANG=en_US.US-ASCII \
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang \
		-x objective-c \
		-arch x86_64 \
		-fmessage-length=104 \
		-fdiagnostics-show-note-include-stack \
		-fmacro-backtrace-limit=0 \
		-fcolor-diagnostics \
		-std=gnu11 \
		-fmodules \
		-fmodules-cache-path=${HOME}/Library/Developer/Xcode/DerivedData/ModuleCache \
		-fmodules-prune-interval=86400 \
		-fmodules-prune-after=345600 \
		-fbuild-session-file=${HOME}/Library/Developer/Xcode/DerivedData/ModuleCache/Session.modulevalidation \
		-fmodules-validate-once-per-build-session \
		-Wnon-modular-include-in-framework-module \
		-Werror=non-modular-include-in-framework-module \
		-Wno-trigraphs \
		-fpascal-strings \
		-O0 \
		-fno-common \
		-Wno-missing-field-initializers \
		-Wno-missing-prototypes \
		-Werror=return-type \
		-Wdocumentation \
		-Wunreachable-code \
		-Wno-implicit-atomic-properties \
		-Werror=deprecated-objc-isa-usage \
		-Werror=objc-root-class \
		-Wno-arc-repeated-use-of-weak \
		-Wduplicate-method-match \
		-Wno-missing-braces \
		-Wparentheses \
		-Wswitch \
		-Wunused-function \
		-Wno-unused-label \
		-Wno-unused-parameter \
		-Wunused-variable \
		-Wunused-value \
		-Wempty-body \
		-Wuninitialized \
		-Wconditional-uninitialized \
		-Wno-unknown-pragmas \
		-Wno-shadow \
		-Wno-four-char-constants \
		-Wno-conversion \
		-Wconstant-conversion \
		-Wint-conversion \
		-Wbool-conversion \
		-Wenum-conversion \
		-Wno-float-conversion \
		-Wnon-literal-null-conversion \
		-Wobjc-literal-conversion \
		-Wshorten-64-to-32 \
		-Wpointer-sign \
		-Wno-newline-eof \
		-Wno-selector \
		-Wno-strict-selector-match \
		-Wundeclared-selector \
		-Wno-deprecated-implementations \
		-DDEBUG=1 \
		-DOBJC_OLD_DISPATCH_PROTOTYPES=0 \
		-fasm-blocks \
		-fstrict-aliasing \
		-Wprotocol \
		-Wdeprecated-declarations \
		-mmacosx-version-min=10.6 \
		-g \
		-Wno-sign-conversion \
		-Winfinite-recursion \
		-Wcomma \
		-Wblock-capture-autoreleasing \
		-Wstrict-prototypes \
		-Wunguarded-availability \
		-index-store-path \
			${HOME}/Library/Developer/Xcode/DerivedData/dome_key_event_source_simulator-*/Index/DataStore \
		-iquote \
			${HOME}/Library/Developer/Xcode/DerivedData/dome_key_event_source_simulator-*/Build/Intermediates.noindex/dome_key_event_source_simulator.build/Debug/dome_key_event_source_simulator.build/dome_key_event_source_simulator-generated-files.hmap \
		-I${HOME}/Library/Developer/Xcode/DerivedData/dome_key_event_source_simulator-*/Build/Intermediates.noindex/dome_key_event_source_simulator.build/Debug/dome_key_event_source_simulator.build/dome_key_event_source_simulator-own-target-headers.hmap \
		-I${HOME}/Library/Developer/Xcode/DerivedData/dome_key_event_source_simulator-*/Build/Intermediates.noindex/dome_key_event_source_simulator.build/Debug/dome_key_event_source_simulator.build/dome_key_event_source_simulator-all-target-headers.hmap \
		-iquote \
			${HOME}/Library/Developer/Xcode/DerivedData/dome_key_event_source_simulator-*/Build/Intermediates.noindex/dome_key_event_source_simulator.build/Debug/dome_key_event_source_simulator.build/dome_key_event_source_simulator-project-headers.hmap \
		-I${HOME}/Library/Developer/Xcode/DerivedData/dome_key_event_source_simulator-*/Build/Products/Debug/include \
		-I${HOME}/Library/Developer/Xcode/DerivedData/dome_key_event_source_simulator-*/Build/Intermediates.noindex/dome_key_event_source_simulator.build/Debug/dome_key_event_source_simulator.build/DerivedSources/x86_64 \
		-I${HOME}/Library/Developer/Xcode/DerivedData/dome_key_event_source_simulator-*/Build/Intermediates.noindex/dome_key_event_source_simulator.build/Debug/dome_key_event_source_simulator.build/DerivedSources \
		-F${HOME}/Library/Developer/Xcode/DerivedData/dome_key_event_source_simulator-*/Build/Products/Debug \
		-MMD \
		-MT \
		dependencies \
		-MF \
			${HOME}/Library/Developer/Xcode/DerivedData/dome_key_event_source_simulator-*/Build/Intermediates.noindex/dome_key_event_source_simulator.build/Debug/dome_key_event_source_simulator.build/Objects-normal/x86_64/dome_key_event_source_simulator.d \
		--serialize-diagnostics \
			${HOME}/Library/Developer/Xcode/DerivedData/dome_key_event_source_simulator-*/Build/Intermediates.noindex/dome_key_event_source_simulator.build/Debug/dome_key_event_source_simulator.build/Objects-normal/x86_64/dome_key_event_source_simulator.dia \
		-c \
			${HOME}/Documents/Development/dome_key_event_source_simulator/dome_key_event_source_simulator/dome_key_event_source_simulator.m \
		-o $@

$(LIB_DEBUG): $(OBJECT_DEBUG)
	MACOSX_DEPLOYMENT_TARGET=10.6 \
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/libtool \
		-static \
		-arch_only x86_64 \
		-L${HOME}/Library/Developer/Xcode/DerivedData/dome_key_event_source_simulator-*/Build/Products/Debug \
		-filelist \
			${HOME}/Library/Developer/Xcode/DerivedData/dome_key_event_source_simulator-*/Build/Intermediates.noindex/dome_key_event_source_simulator.build/Debug/dome_key_event_source_simulator.build/Objects-normal/x86_64/dome_key_event_source_simulator.LinkFileList \
		-o $@

.PHONY: clean
clean:
	xcodebuild -scheme dome_key_event_source_simulator -configuration Debug clean

test: test.c $(LIB_DEBUG)
	gcc -g -Wall -Wextra -Werror -ObjC \
	-isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk \
	-o $@ \
	$< \
	$(LIB_DEBUG)
