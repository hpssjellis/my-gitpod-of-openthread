#!/bin/bash

echo "Upload your edge impulse deployed without EON compiler C++ zipped library to this directory and rename it as edge.zip"
echo "enter to contrinue, ctrl-C to quit"
read



echo "unzipping and putting all the files into this file structure"
unzip edge.zip 
echo "In the src folder check the main.cpp file and make changes or replace it with a different one"
echo "enter to contrinue, ctrl-C to quit"
read



echo "Compiling your complete impulse"
echo "This is the most likely place to have issues"
./build.sh --build  .


echo "The final .bin file in the build folder should be able to be dragged to the Thunderbird auto opened folder"

