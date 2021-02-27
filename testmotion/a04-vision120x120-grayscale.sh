#!/bin/bash

unzip example-standalone-inferencing-ecm3532-master.zip

mv ei-paint-brush-01-v4.zip example-standalone-inferencing-ecm3532-master/
cd example-standalone-inferencing-ecm3532-master
unzip ei-paint-brush-01-v4.zip
make -j
cp build/edge_impulse_inferencing_bootloader.bin ../eta/

echo "Download the ETA file to your computer that has edge-impulse-cli installed and activate the appropriate program"
