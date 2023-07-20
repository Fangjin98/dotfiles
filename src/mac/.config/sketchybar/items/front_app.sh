#!/bin/bash

FRONT_APP_SCRIPT='sketchybar --set $NAME label="$INFO"'

front_app=(
  background.height=26
  background.corner_radius=5 
  background.color=0x9924273a
  associated_display=active
  script="$FRONT_APP_SCRIPT"
)

sketchybar --add item front_app left           \
           --set front_app "${front_app[@]}"   \
           --subscribe front_app front_app_switched
