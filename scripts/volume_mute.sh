#!/bin/sh

volume_set() {
volume=$(amixer -c 1 -M -D pulse get Master | grep -o -m 1 -E "\[on\]|\[off\]")
echo "$volume"
if [ "$volume" == "[on]" ];
    then
        pactl set-sink-mute 1 true 
    else
	echo "setting volume to true"  
        pactl set-sink-mute 1 false
  fi
}

volume_set
