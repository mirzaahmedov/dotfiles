#!/bin/bash

git add .
if [[ $? != 0 ]]; then
  exit 1
fi

git commit -m "$(read -p "message: ")"
if [[ $? != 0 ]]; then
  exit 1
fi

git push origin master
if [[ $? != 0 ]]; then
  exit 1
fi
