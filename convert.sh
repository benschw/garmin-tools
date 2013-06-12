#!/bin/sh

for IN in $(ls ./*.fit)
do
	BASE=`basename "$IN" ".fit"`

	if [ ! -f $BASE.gpx ]
	then
		echo Creating $BASE.gpx...
		gpsbabel -t -i garmin_fit -f "$IN" -o gpx,suppresswhite=0,logpoint=0,humminbirdextensions=0,garminextensions=0 -F "$BASE.gpx"
	fi
done;







