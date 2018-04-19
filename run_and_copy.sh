#!/bin/sh
sh -c "$@"
if find . -mindepth 1 -print -quit | grep -v gitignore | grep -q .; then
    cp -a /make/* /out/
fi
