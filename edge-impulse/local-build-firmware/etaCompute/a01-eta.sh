echo "Upload your edge impulse zipped library to this directory and rename it as edge.zip"
read
echo "unzipping and putting all the files into this file structure"
unzip edge.zip myTempFolder/* 
mv myTempFolder/* .
rm -r myTempFolder

echo "Compiling your complete impulse"
echo "This is most likely place to have issues"
make -j


echo "Copying the build/edge_impulse_inferencing_bootloader.bin to the downloadable folder eta-edge-serial-upload "
cp build/edge_impulse_inferencing_bootloader.bin     ../eta-edge-serial-upload/


echo "Download the full folder eta-edge-serial-upload so that you can install the new software on your ETA Compute device using the appropriate installer"
echo "Edge impulse needs to be installed on your local machine"


