broj_zapisa=1
direktorij_screenshots=/mnt/c/Users/Leda/Desktop/Direktorij/screenshots

for datoteka in "$direktorij_screenshots"/*; do
	ime_datoteke="$(basename "$datoteka")"
        mv "$datoteka" "$direktorij_screenshots"/"screenshot"_"$broj_zapisa"_"$ime_datoteke"
	broj_zapisa=$((broj_zapisa + 1))
        echo "$datoteka"
done
