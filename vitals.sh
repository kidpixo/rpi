#!/bin/bash
#This will get you some system info 
#Built using Raspbian Wheezy
#sleep for dramatic effect

read -p "Would you like to get System Stats? (Press Y or N) " -n 1
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    exit 1
fi


echo
echo "Current System Status"
sleep 1
echo "Cpu Temp:"
/opt/vc/bin/vcgencmd measure_temp
sleep 1
echo "System Uptime:"
sleep 1
uptime
sleep 1
echo "Firmware Version:"
sleep 1
/opt/vc/bin/vcgencmd version
sleep 1
echo "Show Voltages:"
sleep 1
echo "Core Volts:"
/opt/vc/bin/vcgencmd measure_volts core
sleep 1
echo "Sdram_c"
/opt/vc/bin/vcgencmd measure_volts sdram_c
sleep 1
echo "Sdram_i"
/opt/vc/bin/vcgencmd measure_volts sdram_i
sleep 1
echo "Sdram_p"
/opt/vc/bin/vcgencmd measure_volts sdram_p
sleep 1
echo "CPU Info:"
sleep 1
cat /proc/cpuinfo
