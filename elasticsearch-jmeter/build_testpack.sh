#!/bin/bash

rm -r testpack/
rm testpack.zip

mkdir -p testpack
cp resources/{run.properties,run.sh,Na-KD_JMeter_PhantomJS.jmx} testpack/
zip -r -X testpack.zip testpack