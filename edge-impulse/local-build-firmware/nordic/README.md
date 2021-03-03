
# Never tested yet


All the nordic SDK will be the old version used for the original openThreead use of this Repository






nRF Connect SDK - make sure you select version v1.4.99-dev1.

GNU ARM Embedded Toolchain 9-2019-q4-major.

nRF Command Line Tools.

Or you can build this application with Docker (see below).

Building the device firmware (locally)

Clone this repository:

$ git clone https://github.com/edgeimpulse/firmware-nrf52840-5340

Build the application:

nRF52840 DK

$ west build -b nrf52840dk_nrf52840
nRF5340 DK

$ west build -b nrf5340dk_nrf5340_cpuapp
