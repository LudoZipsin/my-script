#!/usr/bin/env bash

ROOT_UID=0

if [ "$UID" -ne "$ROOT_UID" ];
	then
	echo ""
	echo "Need to be root to launch this script. Please insert your root password below (nothing on screen):"
	echo ""
	sudo DBUS_SESSION_BUS_ADDRESS=$DBUS_SESSION_BUS_ADDRESS "./`basename $0`"
	exit
fi

for i in `ls .`; do
    if [ -d $i ]; then
        ./$i/install.sh
    fi
done
