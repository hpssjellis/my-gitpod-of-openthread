#!/bin/bash

echo "Upload your edge impulse  C++ zipped library to this directory and rename it as edge.zip"
echo "Good idea to duplicate this folder so you can easily upload a different program."
echo "enter to contrinue, ctrl-C to quit"
read



echo "unzipping and putting all the files into this file structure"
unzip edge.zip 
echo "In the src folder check the main.cpp file and make changes or replace it with a different one"
echo "If using the default Edge Impulse program you will need to insert features in the array. see try me folder"
echo "enter to continue, ctrl-C to quit"
read



echo "Compiling your complete impulse"
echo "This is the most likely place to have issues"
west build -b nrf52840dk_nrf52840




echo "Download the build.xxxxx.bin file to the J-Link pop up folder of your nordic board."

