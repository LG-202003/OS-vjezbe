#!/bin/bash

if [ $# -ne 2 ]; then
	echo "Potrebno je proslijediti točno 2 argumenta"
	exit 1
fi

x=1
for datoteka in "$1"/*"$2"; do
	if [ -f "$datoteka" ]; then
		echo "$(basename "$datoteka")"
		x=0
	fi
done

if [ "$x" -eq 1 ]; then
	echo "U direktoriju ne postoje datoteke s tim nastavkom"
fi
