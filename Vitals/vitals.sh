#!/bin/bash
#This will get you some system info on your Raspberry Pi 
#Built using Raspbian Wheezy
#sleep for dramatic effect
#
read -p "Would you like to get System Stats? (Press Y or N) " -n 1
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    exit 1
fi
echo
   echo
   echo "_________________________________"
   echo "| Welcome To Vitals!            |"
   echo "| Here is some basic system     |"
   echo "| stats. This was built on      |"
   echo "| Raspbian for the raspberry pi |"
   echo "_________________________________"



vcgencmd=/opt/vc/bin/vcgencmd 
volts=measure_volts

echo
echo "Current System Status"
sleep 1
echo "Who is logged in?"
sleep 1
w
sleep 1
echo "Cpu Temp:"
sleep 1
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
