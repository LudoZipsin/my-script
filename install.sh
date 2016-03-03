#!/usr/bin/env bash

ROOT_UID=0

# ensure that this script is launched from the right dir
cd `dirname "$0"`
DIR=$(pwd)

if [ "$UID" -ne "$ROOT_UID" ]; then
	echo ""
	echo "Need to be root to launch this script. Please insert your root password below (nothing on screen):"
	echo ""
	sudo DBUS_SESSION_BUS_ADDRESS=$DBUS_SESSION_BUS_ADDRESS "./`basename $0`"
	exit
fi

for i in `ls $DIR`; do
    if [ -d $i ]; then
        $DIR/$i/install.sh
    fi
done
