#!/bin/sh
cp $1 /tmp/results.tar.bz2
curl -v -u mweber:cegFifHytch3 -H Expect: -F uploadedfile=@/tmp/results.tar.bz2 -F uploadsubmit=1 http://autobuild.buildroot.org/submit/
rm $1
