


I needed a non-locked place to save the arduino-cli so I just did

```

cd /home/linuxbrew/.linuxbrew                                                                        
curl -fsSL https://raw.githubusercontent.com/arduino/arduino-cli/master/install.sh | sh       

```

Explained at 

https://docs.edgeimpulse.com/docs/arduino-portenta-h7



Github for the elephant example at

https://github.com/edgeimpulse/example-portenta-lorawan


Nice information page about the lora vision shield

https://content.arduino.cc/assets/SL-ASX00026.PDF


Note: 

a00-get-lora-example.sh   should download and compile the elepahnt example. 

The regular a01-portenta.sh would then be used as normal.






arduino-clii examples

```
arduino-cli lib install "WiFi101" "WiFi101OTA"

arduino-cli --format json lib search wifinina | jq

arduino-cli core list


arduino-cli board list

arduino-cli core install arduino:mbed

arduino-cli compile -b arduino:portenta:mbed -v
```


This could only be done on the local computer

board list will give the port
```
arduino -cli board list
arduino-cli upload -b arduino:portenta:mbed  -p COM5
arduino-cli-board attach serial://COM5



```

