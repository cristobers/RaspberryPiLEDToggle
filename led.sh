#!/bin/bash

toggle=0
if [ $1 = 'off' ]
then
        echo $toggle | sudo tee /sys/class/leds/led0/brightness > /dev/null
        echo $toggle | sudo tee /sys/class/leds/led1/brightness > /dev/null
elif [ $1 = 'on' ]
then
        toggle=1
        echo $toggle | sudo tee /sys/class/leds/led0/brightness > /dev/null
        echo $toggle | sudo tee /sys/class/leds/led1/brightness > /dev/null
else
        echo "please type either on or off"
fi
