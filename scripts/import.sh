#!/bin/sh
for i in $(find -name "instance-$1-*" -prune); do
	echo "######   Processing [$i]             ######"
	cp $i /tmp/results.tar.bz2
	curl -v -u mweber:cegFifHytch3 -H Expect: -F uploadedfile=@/tmp/results.tar.bz2 -F uploadsubmit=1 http://autobuild.buildroot.org/submit/
	echo "######   Removing tmp files          ######"
	rm $i /tmp/results.tar.bz2
	echo "######   Completed Processing [$i]   ######"
done
