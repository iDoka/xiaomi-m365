#!/bin/bash

openocd -d0 -f stlink.cfg -f nrf51.cfg -c "init" -c "reset halt" -c "nrf51 mass_erase" -c "program CODE 0 verify" -c "program UICR 0x10001000 verify" -c "reset" -c "exit"

