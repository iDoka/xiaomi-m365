#!/bin/bash

openocd -f ../stlink-v2.cfg -c "transport select hla_swd" -f ../nrf51.cfg -c "init" -c "reset halt" -c "nrf51 mass_erase" -c "program CODE 0 verify" -c "program UICR 0x10001000 verify" -c "reset" -c "exit"
