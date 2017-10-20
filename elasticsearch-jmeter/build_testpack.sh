#!/bin/bash

rm -r testpack/
rm testpack.zip

mkdir -p testpack
cp resources/{run.properties,run.sh,*.jmx} testpack/
zip -r -X testpack.zip testpack