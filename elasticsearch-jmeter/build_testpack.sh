#!/bin/bash

rm -r testpack/
rm testpack.zip

mkdir -p testpack
cp resources/{run.properties,run.sh,*.jmx,user.properties,rmi_keystore.jks} testpack/
zip -r -X testpack.zip testpack