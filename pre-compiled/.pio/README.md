This folders and files are for platformIO instant upload of hex files with the corresponding main.cpp file (main.cpp just their for reference).

On a working visual studio code platform with the platformIO IDE extension installed and the .pio folder 
in the correct spot (inside the main folder for your project or just copy the .hex file to your .pio/build/uno/ folder) run the command


```
pio run -t nobuild -t upload

```