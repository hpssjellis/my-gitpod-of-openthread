#!/bin/bash

unzip example-standalone-inferencing-ecm3532-master.zip

mv w6-words-v40.zip example-standalone-inferencing-ecm3532-master/w6-words-v40.zip
cd example-standalone-inferencing-ecm3532-master
unzip w6-words-v41.zip
make -j

echo "Copy the final edge_impulse_inferencing_bootloader.bin file in the build folder to your computer with the files from the ETC folder to flash them"
echo "Edge impulse needs to be installed on your local machine"
