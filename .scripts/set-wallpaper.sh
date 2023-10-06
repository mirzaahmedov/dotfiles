#!/bin/bash

config_file=$HOME/.system/config.json
image_path=$1

if [ $image_path ]; then
  echo $(jq ".wallpaper = \"$image_path\"" $config_file) > $config_file
  swaymsg "output * bg $image_path fill"
else
  image_path=$(jq ".wallpaper" $config_file)
  swaymsg "output * bg $image_path fill"
fi

