#!/bin/bash
#This will get you some system info 
#Built using Raspbian Wheezy
#sleep for dramatic effect

read -p "Would you like to get System Stats? (Press Y or N) " -n 1
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    exit 1
fi

vcgencmd=/opt/vc/bin/vcgencmd 
volts=measure_volts

echo
echo "Current System Status"
sleep 1
echo "Cpu Temp:"
$vcgencmd measure_temp
sleep 1
echo "System Uptime:"
sleep 1
uptime
sleep 1
echo "Firmware Version:"
sleep 1
$vcgencmd version
sleep 1
echo "Show Voltages:"
sleep 1
echo "Core Volts:"
$vcgencmd $volts core
sleep 1
echo "Sdram_c"
$vcgencmd $volts sdram_c
sleep 1
echo "Sdram_i"
$vcgencmd $volts sdram_i
sleep 1
echo "Sdram_p"
$vcgencmd $volts sdram_p
sleep 1
echo "CPU Info:"
sleep 1
cat /proc/cpuinfo
