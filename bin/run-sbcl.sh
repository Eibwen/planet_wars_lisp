#!/bin/sh
ASDF_DIRS_FILE=`dirname "$0"`/../.asdf-dirs
ASDF_DIRS=`cat "$ASDF_DIRS_FILE"`

sbcl --dynamic-space-size 700 --noinform --end-runtime-options \
    --noprint --no-userinit --no-sysinit --disable-debugger \
    --eval "(setf asdf:*central-registry* (list $ASDF_DIRS))" \
    "$@"
