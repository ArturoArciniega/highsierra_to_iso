#!/bin/sh

if uname -r | \grep -q Microsoft ; then
    echo "WSL"
else
    echo "non WSL"
fi
