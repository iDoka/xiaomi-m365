#!/bin/bash

## based on https://github.com/CamiAlfa/stlink_m365_BLE/blob/master/bin-x64/flash_classic.bat

BIN=$1
#BIN="classic073_flash.hex"

openocd -f ./stlink-v2.cfg -c "transport select hla_swd" -f ./nrf51.cfg -c "init" -c "reset halt" -c "nrf51 mass_erase" -c "program ${BIN} verify" -c "reset run" -c "exit"
