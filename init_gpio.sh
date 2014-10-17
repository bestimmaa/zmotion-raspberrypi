#!/bin/sh
# Input-Ports (Taster)
for Port in  17 27
  do
  echo "$Port" > /sys/class/gpio/export
  echo "in" >/sys/class/gpio/gpio${Port}/direction
  chmod 660 /sys/class/gpio/gpio${Port}/direction
  chmod 660 /sys/class/gpio/gpio${Port}/value
done

# Output-Ports (LED)
for Port in 22 23 24 25
  do
  echo "$Port" > /sys/class/gpio/export
  echo "out" >/sys/class/gpio/gpio${Port}/direction
  echo "0" >/sys/class/gpio/gpio${Port}/value
  chmod 660 /sys/class/gpio/gpio${Port}/direction
  chmod 660 /sys/class/gpio/gpio${Port}/value
done
