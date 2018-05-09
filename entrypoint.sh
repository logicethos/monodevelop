#!/bin/bash

executable=monodevelop

if [ $# -lt 1 ] || [ $# -gt 2 ]; then
	echo "Usage: entrypoint.sh [DISPLAY value] <USER>"
	exit 1
fi

if [ $# -eq 2 ]; then
	grep "^$2:" /etc/passwd > /dev/null
	if [ $? -ne 0 ]; then
		useradd "$2"
	fi
	#if [ ! -d "/home/$2" ]; then
	#	mkdir -p "/home/$2"
	#fi
	ln -s /HOME /home/$2
	chown "$2:$2" "/home/$2"
	cd "/home/$2"
	HOME="/home/$2"
	DISPLAY="$1" su "$2" -c "$executable"
else
	DISPLAY="$1" $executable
fi
