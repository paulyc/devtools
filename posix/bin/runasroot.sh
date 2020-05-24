#!/bin/bash

if [ "$UID" != 0 ]; then
	echo "Run as root plz"
	exit 1
fi

