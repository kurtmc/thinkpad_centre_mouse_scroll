#!/bin/bash
input_ids="$(xinput | grep TPPS/2 | sed 's/.*id=\([0-9]*\).*/\1/g')"
for input_id in $input_ids
do
  xinput set-int-prop $input_id "Evdev Wheel Emulation" 8 1
  xinput set-int-prop $input_id "Evdev Wheel Emulation Button" 8 2
  xinput set-int-prop $input_id "Evdev Wheel Emulation Axes" 8 6 7 4 5
done
