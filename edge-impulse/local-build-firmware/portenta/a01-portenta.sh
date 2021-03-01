#!/bin/bash

echo "Upload your edge impulse deployed without EON compiler C++ zipped library to this directory and rename it as edge.zip"
echo "Good idea to duplicate this folder so you can easily upload a different program."
echo "enter to contrinue, ctrl-C to quit"
read



echo "unzipping and putting all the files into this file structure"
unzip edge.zip 
echo "In the src folder check the main.cpp file and make changes or replace it with a different one"
echo "If using the default Edge Impulse program you will need to insert features in the array. see try me folder"
echo "enter to contrinue, ctrl-C to quit"
read



echo "Compiling your complete impulse"
echo "This is the most likely place to have issues"
make -j


echo "Copying the build/edge_impulse_inferencing_bootloader.bin to the downloadable folder eta-edge-serial-upload "
cp build/edge_impulse_inferencing_bootloader.bin     ../portenta-edge-serial-upload/


echo "Download the full folder eta-edge-serial-upload so that you can install the new software on your ETA Compute device using the appropriate installer"
echo "Edge impulse client needs to be installed on your local machine"
echo "npm install -g edge-impulse-cli"

