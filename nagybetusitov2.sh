#!/bin/bash

# Írj szkriptet, amely az összes .txt kiterjesztéső fájl nevét nagybetűsíti, de a kiterjesztést nem változtatja
# pl.:	file.txt -> FILE.txt	/ mivel .txt
#		file -> file			/ mivel nem .txt

# V2 - *.txt hasznalataval

for param in *.txt ; do	# itt mar alapbol csak a txt fajlok lesznek megvizsgalva
	nev=`echo $param | cut -d '.' -f 1`	# ezert nem kell txt-re egrep-pelni
	ujnev=`echo $nev | tr a-z A-Z`.txt	# illetve if sem kell, hogy megnezzuk, hogy letezik-e
	mv $param $ujnev
done
