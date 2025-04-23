#!/bin/bash

niz=()
if [[ $1 -ge 1 && $1 -lt 10 ]]; then
	touch brojevi.txt
	for (( i=1; i<=$1; i++ )); do
		niz+=("$i")
	done
	echo ${niz[@]} > brojevi.txt
else
	echo "Unesen broj izvan raspona"
	exit 1
fi
