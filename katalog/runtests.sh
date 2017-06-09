#!/bin/bash
#
# run tests
#
for n in test*pl; do
    echo "--$n--";
    ./$n;
#    RET="$?";
#    if [ "$RET" != 0 ]; then
#        echo "$RET";
#        exit 1;
#    fi
done
