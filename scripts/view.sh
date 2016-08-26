#!/bin/sh
tar xf $1 -C /tmp/ 
cat /tmp/results/build-end.log
cat /tmp/results/defconfig
