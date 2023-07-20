#!/bin/bash

calendar=(
  background.height=26
  background.corner_radius=5 
  background.color=0x9924273a
  update_freq=60
  script="$PLUGIN_DIR/calendar.sh"
)

sketchybar --add item calendar left       \
           --set calendar "${calendar[@]}" \
           --subscribe calendar system_woke
