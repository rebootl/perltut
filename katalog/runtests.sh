#!/bin/bash
#
# run tests
#
for n in test*pl; do echo "--$n--"; ./$n; done
