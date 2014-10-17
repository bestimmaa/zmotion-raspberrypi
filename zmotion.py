#!/usr/bin/env python

import RPi.GPIO as GPIO
import time
import datetime
import subprocess
from subprocess import check_output as qx

# = GPIO 27
pin_led = 13
# = GPIO 22
pin_detection = 15

GPIO.setmode(GPIO.BOARD)
GPIO.setup(pin_led, GPIO.OUT)
GPIO.setup(pin_detection, GPIO.IN)


while 1:
	if not GPIO.input(pin_detection):
		print chr(27) + "[2J"
		print("Motion detected!")
		GPIO.output(pin_led, GPIO.HIGH)
	else:
		print chr(27) + "[2J"
		GPIO.output(pin_led, GPIO.LOW)

GPIO.cleanup()
