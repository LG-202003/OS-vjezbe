#!/bin/bash

dir_skript=$(pwd)
dir_arg=$1

if [ $# -ne 1 ]; then
	echo "Potrebno je proslijediti samo 1 argument"
	exit 1
fi

if [ ! -d  "$dir_arg" ]; then
	echo "Direktorij ne postoji"
	exit 1
fi

zip="zip_datoteka.zip"

cd "$dir_arg" || exit 1
zip -r "$zip" ./*

