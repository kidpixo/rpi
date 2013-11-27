#!/bin/bash
############################################################
#
# This will get you some system info on your Raspberry Pi
# Built using Raspbian Wheezy
# originally from http://thekillingtime.com/?p=22
# forked by github.com/kidpixo from github.com/daguy666/rpi
#
############################################################
#
# Last source could be retrieved with :
# curl https://raw.github.com/kidpixo/rpi/master/Vitals/vitals.sh
#
############################################################

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

vcgencmd=/usr/bin/vcgencmd
volts=measure_volts

echo
echo "Current System Status"
echo "Who is logged in?"
w
echo "Cpu Temp:"
$vcgencmd measure_temp
echo "System Uptime:"
uptime
echo "Firmware Version:"
$vcgencmd version
echo "Show Voltages:"
echo "Core Volts:"
$vcgencmd $volts core
echo "Sdram_c"
$vcgencmd $volts sdram_c
echo "Sdram_i"
$vcgencmd $volts sdram_i
echo "Sdram_p"
$vcgencmd $volts sdram_p
echo "CPU Info:"
cat /proc/cpuinfo