#!/bin/sh
curl -v -u mweber:cegFifHytch3 -H Expect: -F uploadedfile=$1 -F uploadsubmit=1 http://autobuild.buildroot.org/submit/
