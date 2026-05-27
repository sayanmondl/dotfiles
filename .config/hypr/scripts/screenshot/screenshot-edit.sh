#!/bin/bash

grim -g "$(slurp)" - | satty \
  --filename - \
  --output-filename "$HOME/Pictures/screenshots/Screenshot_$(date +'%Y-%m-%d_%H-%M-%S').png"