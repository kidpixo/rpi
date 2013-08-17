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
   echo "|    Welcome To Vitals!         |"
   echo "| Here are some basic system    |"
   echo "| stats. This was built on      |"
   echo "| Raspbian for the raspberry pi.|"
   echo "_________________________________"



vcgencmd=/opt/vc/bin/vcgencmd 
volts=measure_volts

echo
echo "Current System Status"
sleep 1
echo
echo "Who is logged in?"
sleep 1
echo
w
sleep 1
echo
echo "Cpu Temp:"
sleep 1
echo
$vcgencmd measure_temp
sleep 1
echo
echo "System Uptime:"
sleep 1
echo
uptime
sleep 1
echo
echo "Firmware Version:"
sleep 1
echo
$vcgencmd version
sleep 1
echo
echo "Show Voltages:"
sleep 1
echo
echo "Core Volts:"
$vcgencmd $volts core
sleep 1
echo
echo "Sdram_c"
$vcgencmd $volts sdram_c
sleep 1
echo
echo "Sdram_i"
$vcgencmd $volts sdram_i
sleep 1
echo
echo "Sdram_p"
$vcgencmd $volts sdram_p
sleep 1
echo
echo "CPU Info:"
sleep 1
echo
cat /proc/cpuinfo
