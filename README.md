Linux automation scripts for Garmin Forerunner 210

- keep copy of activities on computer
- generate `gpx` files for use with RunKeeper.com

## Install

create a mount point

	# mkdir /media/GARMIN


Install GPSBabel Version 1.4.4

(v1.4.3 in ubuntu repo, doesn't seem to work)


## Usage

	$ ./sync.sh
	$ ./convert.sh



- 'sync.sh' mounts the device and uses rsync to bring in any new files to the cwd. If old files have been removed from the device, this won't delete them from the cwd.
- 'convert.sh' will use gpsbabel to create a 'gpx' file from each garmin provoided 'fit' file. It will generate a 'gpx' file for each 'fit' file in the cwd that does not yet have a corresponding 'gpx' file.



## notes


Linux Garmin Communicator Plugin (http://www.andreas-diesner.de/garminplugin/doku.php?id=start) is infinitly useful for turnkey integration with connect.garmin.com. Just make sure the device is mounted before attempting to upload new activities.
