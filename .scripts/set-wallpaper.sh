#!/bin/bash

config_file=$HOME/.system/config.json
image_path=$1

if [ $image_path ]; then
  jq ".wallpaper = \"$image_path\"" $config_file > $config_file
else
  image_path=$(jq ".wallpaper" $config_file)
fi

swaymsg "output * bg $image_path fill"
