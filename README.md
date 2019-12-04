# my-gitpod-of-openthread

Openthread connects lots of little IoT microcomputers to each other and the internet. Think Nest home products.


Run this gitpod live by clicking


https://gitpod.io/#github.com/hpssjellis/my-gitpod-of-openthread


Dec 4th, 2019 updated openthread with Nordic sdk. (nordic needs setup)

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io#snapshot/34c2e221-4081-4a8e-bb2b-899d270bf050)



or load a pre-made gitpod by clicking

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io#snapshot/674e3367-1baf-43db-a205-dae91e24334c)


.

To run any of the nordic examples the componenets tootlchan make.posix file needs these values

```
GNU_INSTALL_ROOT := /usr/bin/
GNU_VERSION := 7.3.1
GNU_PREFIX := arm-none-eabi

```
.



These commands are automatically done from the openthread folder

```
 make -f examples/Makefile-nrf52840 USB=1 BOOTLOADER=USB BORDER_AGENT=1 BORDER_ROUTER=1 COMMISSIONER=1 JOINER=1 UDP_PROXY=1 CFLAGS+=-UCONFIG_GPIO_AS_PINRESET 
 
arm-none-eabi-objcopy output/nrf52840/bin/ot-ncp-ftd -O ihex output/nrf52840/bin/ncp_app.hex

arm-none-eabi-objcopy output/nrf52840/bin/ot-cli-ftd -O ihex output/nrf52840/bin/ot-cli-ftd.hex


#trying 

arm-none-eabi-objcopy output/nrf52840/bin/ot-cli-ftd -S -O binary output/nrf52840/bin/ot-cli-ftd.bin 

```


Main link for openthread.io   
https://openthread.io/

Main github for openthread 
https://github.com/openthread



My bash installation file is at https://github.com/hpssjellis/particle.io-photon-high-school-robotics/blob/master/a17-particle-mesh/openthread/openthread-install-all.sh

go up a folder for more information, this link is also useful https://hpssjellis.github.io/particle.io-photon-high-school-robotics/a17-particle-mesh/openthread/install-openthread.html
