#!/usr/bin/env bash

dir="$HOME/.config/rofi/launchers/type"
theme='style'

## Run
rofi \
    -show drun \
    -theme ${dir}/${theme}.rasi
