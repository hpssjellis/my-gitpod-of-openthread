#!/bin/bash


echo "If you havn't done 'platformio account login' then hit ctrl-C"
echo "If you havn't done 'platformio remote agent start' on your local machine then hit ctrl-C"
echo "Enter a folder name, no spaces, no dashes, underscore allowed, for your Uno Board example: helloWorld"
read wow4

mkdir $wow4

cd $wow4 

echo "Running platformio init -b uno in the new directory"
pio init -b uno

cp /workspace/my-gitpod-of-openthread/main.cpp src
echo "Good idea to go to check the main.cpp file in the new src folder make changesand ctrl-s to save before hitting enter"
read
pio remote run -t upload
pio remote device monitor







