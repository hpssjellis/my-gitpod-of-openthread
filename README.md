# my-gitpod-of-openthread

Openthread connects lots of little IoT microcomputers to each other and the internet. Think Nest home products.


# Now with 3 nordic sdk's

Run this gitpod live by clicking


https://gitpod.io/#github.com/hpssjellis/my-gitpod-of-openthread


Dec 4th, 2019 updated openthread with Nordic sdk.


[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io#snapshot/e709c382-8574-4775-876c-002bfeecc374)


# pre-compiled proof Openthread

```
# The main.c file is
cd /workspace/my-gitpod-of-openthread/openthread-all/openthread/examples/apps/cli

the .ld files are at 

cd /workspace/my-gitpod-of-openthread/openthread-all/openthread/examples/platforms/nrf528xx/nrf52840

# Final .hex files

cd /workspace/my-gitpod-of-openthread/openthread-all/openthread/output/nrf52840/bin


```



# pre-compiled proof Nordic SDK


```
# note the main.c file here for peripheral blinky
cd /workspace/my-gitpod-of-openthread/nordic/nordic-sdk/examples/ble_peripheral/ble_app_blinky
ls -la

# probably best to use the folders and go to nordic --> nordic-sdk --> examples --> ble_peripheral --> ble_app_blinky

# Look at main.c


Since the make command has already been done go to to see the results
pca10059 --> s140 --> armgcc --> _build

# should see some .hex files
# or just use this cd command

cd /workspace/my-gitpod-of-openthread/nordic/nordic-sdk/examples/ble_peripheral/ble_app_blinky/pca10059/s140/armgcc/_build


```
.

To run any of the nordic examples the componenet s--> toolchain --> Makefile.posix file needs these values. Should have been automatically changed. But worth checking

```
GNU_INSTALL_ROOT := /usr/bin/
GNU_VERSION := 7.3.1
GNU_PREFIX := arm-none-eabi

```
.



These commands are automatically done from the openthread folder, but you can run them again from the openthread directory

```
cd /workspace/my-gitpod-of-openthread/openthread-all/openthread

 make -f examples/Makefile-nrf52840 USB=1 BOOTLOADER=USB BORDER_AGENT=1 BORDER_ROUTER=1 COMMISSIONER=1 JOINER=1 UDP_PROXY=1 CFLAGS+=-UCONFIG_GPIO_AS_PINRESET 
 
arm-none-eabi-objcopy output/nrf52840/bin/ot-ncp-ftd -O ihex output/nrf52840/bin/ncp_app.hex

arm-none-eabi-objcopy output/nrf52840/bin/ot-cli-ftd -O ihex output/nrf52840/bin/ot-cli-ftd.hex


#to convert to binary try

arm-none-eabi-objcopy output/nrf52840/bin/ot-cli-ftd -S -O binary output/nrf52840/bin/ot-cli-ftd.bin 

```


Main link for openthread.io   
https://openthread.io/

Main github for openthread 
https://github.com/openthread



My bash installation file is at https://github.com/hpssjellis/particle.io-photon-high-school-robotics/blob/master/a17-particle-mesh/openthread/openthread-install-all.sh

go up a folder for more information, this link is also useful https://hpssjellis.github.io/particle.io-photon-high-school-robotics/a17-particle-mesh/openthread/install-openthread.html




Good youtube video about the nordic sdk

https://www.youtube.com/watch?v=kyPKIRQIacI


