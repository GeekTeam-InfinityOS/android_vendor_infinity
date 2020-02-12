#!/bin/bash

# Example of creating infinity subject file
# $ '/C=US/ST=California/L=Mountain View/O=Android/OU=Android/CN=Android/emailAddress=android@android.com' > infinity

export infinity=`cat infinity`
for x in releasekey platform shared media; do \
    ../../../../../../development/tools/make_key ./$x "$infinity"; \
done
