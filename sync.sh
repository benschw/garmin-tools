#!/bin/sh

df | grep GARMIN > /dev/null || sudo mount /dev/sdb /media/GARMIN


rsync -av /media/GARMIN/Garmin/Activities/ ./
