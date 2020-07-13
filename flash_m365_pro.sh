#!/bin/bash

## based on https://github.com/CamiAlfa/stlink_m365_BLE/blob/master/bin-x64/flash_pro.bat

BIN=$1
#BIN="pro074_flash.hex"

echo "you have 10 seconds to connect wires"
sleep 10
openocd -f ./stlink-v2.cfg -c "transport select hla_swd" -f ./nrf51.cfg -c "init" -c "reset halt" -c "nrf51 mass_erase" -c "program ${BIN} verify" -c "reset run" -c "exit"
echo "If board doesnt flash press any key to try again, check wires and make sure to remove c2"

echo "you have 10 seconds to connect wires"
sleep 10
openocd -f ./stlink-v2.cfg -f ./nrf51.cfg -c "init" -c "reset halt" -c "nrf51 mass_erase" -c "program ${BIN} verify" -c "reset run" -c "exit"

echo "you have 10 seconds to connect wires"
sleep 10
openocd -f ./stlink-v2.cfg -c "transport select hla_swd" -f ./nrf51.cfg -c "init" -c "reset halt" -c "nrf51 mass_erase" -c "program ${BIN} verify" -c "reset run" -c "exit"
echo "If board doesnt flash press any key to try again, check wires and make sure to remove c2"

echo "you have 10 seconds to connect wires"
sleep 10
openocd -f ./stlink-v2.cfg -f ./nrf51.cfg -c "init" -c "reset halt" -c "nrf51 mass_erase" -c "program ${BIN} verify" -c "reset run" -c "exit"

echo "you have 10 seconds to connect wires"
sleep 10
openocd -f ./stlink-v2.cfg -c "transport select hla_swd" -f ./nrf51.cfg -c "init" -c "reset halt" -c "nrf51 mass_erase" -c "program ${BIN} verify" -c "reset run" -c "exit"
echo "If board doesnt flash press any key to try again, check wires and make sure to remove c2"

echo "you have 10 seconds to connect wires"
sleep 10
openocd -f ./stlink-v2.cfg -f ./nrf51.cfg -c "init" -c "reset halt" -c "nrf51 mass_erase" -c "program ${BIN} verify" -c "reset run" -c "exit"

