#!/bin/bash

config_file=$HOME/.system/config.json
image_path=$1

if [ $image_path ]; then
  jq ".wallpaper = \"$image_path\"" $config_file
  swaymsg "output * bg $image_path fill"
else
  jq ".wallpaper" $config_file | read image_path 
  swaymsg "output * bg $image_path fill"
fi
