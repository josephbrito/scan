#!/bin/bash

if [ "$1" ]
then
	for i in $(seq 0 254)
	do
		ping -c 1 "$1.$i" | grep ttl | cut -d " " -f 4 | sed "s/.$//" &
	done	
else
	echo "Usage: scan 192.168.0 - you must not pass the last 3 numbers"
fi
