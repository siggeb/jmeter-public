#!/bin/bash

rm testpack/
rm testpack.zip

mkdir -p testpack
cp resources/{listenerplan5nodes.jmx,run.properties,run.sh,JMeter_PhantomJS_Template.jmx} testpack/
zip -r -X testpack.zip testpack