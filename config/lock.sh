#!/bin/sh

alpha='ff'
base03='#45475a'
base02='#11111b'
base01='#1e1e2e'
base00='#657b83'
base0='#839496'
base1='#93a1a1'
base2='#eee8d5'
base3='#fdf6e3'
yellow='#f9e2af'
orange='#fab387'
red='#f38ba8'
magenta='#cba6f7'
violet='#6c71c4'
blue='#cba6f7'
cyan='#89dceb'
green='#a6e3a1'

i3lock \
  --insidever-color=$base02$alpha \
  --insidewrong-color=$base02$alpha \
  --inside-color=$base02$alpha \
  --ringver-color=$green$alpha \
  --ringwrong-color=$red$alpha \
  --ringver-color=$green$alpha \
  --ringwrong-color=$red$alpha \
  --ring-color=$base03$alpha \
  --line-uses-ring \
  --keyhl-color=$magenta$alpha \
  --bshl-color=$orange$alpha \
  --separator-color=$base01$alpha \
  --verif-color=$green \
  --wrong-color=$red \
  --layout-color=$magenta \
  --date-color=$magenta \
  --time-color=$magenta \
  --screen 1 \
  --blur 7 \
  --clock \
  --indicator \
  --time-str="%I:%M:%S" \
  --date-str="%d/%m/%Y" \
  --verif-text="Verifying" \
  --wrong-text="Auth Failed" \
  --noinput="No Input" \
  --lock-text="Locking..." \
  --lockfailed="Lock Failed" \
  --time-font="JetBrainsMono Nerd Font" \
  --date-font="JetBrainsMono Nerd Font" \
  --layout-font="JetBrainsMono Nerd Font" \
  --verif-font="JetBrainsMono Nerd Font" \
  --wrong-font="JetBrainsMono Nerd Font" \
  --radius=100 \
  --ring-width=15 \
  --pass-media-keys \
  --pass-screen-keys \
  --pass-volume-keys \
  --keylayout 1 \

