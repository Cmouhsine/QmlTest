#!/bin/bash
DYLD_IMAGE_SUFFIX=_debug
export DYLD_IMAGE_SUFFIX
exec /Users/user/Qt/6.7.2/macos/libexec/rcc "$@"
