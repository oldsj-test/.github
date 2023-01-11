#!/usr/bin/env sh
SCRIPTPATH=$(dirname $(readlink -f "$0"))
cd $SCRIPTPATH/../../

MAKEFILE=Makefile
JUSTFILE=justfile
if test -f "$MAKEFILE"; then
    make "$@"
elif test -f "$JUSTFILE"; then
    just "$@"
else
    echo "No supported command runner found, exiting."
    exit 1
fi

