#!/bin/sh
for i in $(find -name "instance-$1-*" -prune); do
	echo "######   Extracting [$i]             ######"
	tar xf $i -C /tmp/
	cat /tmp/results/build-end.log
	sleep 2
	cat /tmp/results/defconfig
	echo "######   Completed [$i]              ######"
	echo "Press enter to continue...."
	read foo
done
