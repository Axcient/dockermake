#!/bin/sh
sh -c "$@"
if find . -mindepth 1 -print -quit | grep -q .; then
    cp -a /make/* /out/
fi
