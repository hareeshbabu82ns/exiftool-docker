#!/usr/bin/env bash

declare -i timeout=5

while ! TEST_OUTPUT=`docker run miljar/exiftool -ver`;
    do sleep 0.1;
done

## Assert server response
if [ "$TEST_OUTPUT" != "10.20" ]
then
    echo "Failed asserting that '${TEST_OUTPUT}' equals '10.20'" && exit 1;
fi
