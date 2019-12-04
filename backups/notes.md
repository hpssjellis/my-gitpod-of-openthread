              cd /workspace/my-gitpod-of-openthread/openthread-all/openthread                                                  
              ./bootstrap                                                                                                      
              make -f examples/Makefile-nrf52840 USB=1 BOOTLOADER=1 BORDER_AGENT=1 BORDER_ROUTER=1 COMMISSIONER=1 JOINER=1 UDP_PROXY=1 CFLAGS+=-UCONFIG_GPIO_AS_PINRESET  
              arm-none-eabi-objcopy output/nrf52840/bin/ot-ncp-ftd -O ihex output/nrf52840/bin/ncp_app.hex                     
              arm-none-eabi-objcopy output/nrf52840/bin/ot-cli-ftd -O ihex output/nrf52840/bin/ot-cli-ftd.hex                  
              
              
              
              
              
     #         Now try to make a .bin file
              


arm-none-eabi-objcopy output/nrf52840/bin/ot-cli-ftd -O binary output/nrf52840/bin/ot-cli-ftd.bin




nordic latest sdk at

https://www.nordicsemi.com/-/media/Software-and-other-downloads/SDKs/nRF5/Binaries/nRF5SDK160098a08e2.zip


