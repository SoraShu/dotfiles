# dotfiles

## quick setup

```shell
stow *
```

## rime

https://github.com/fkxxyz/rime-cloverpinyin

## locale && font display

https://wiki.archlinux.org/title/Localization/Simplified_Chinese

## some bspwm settings

swap ctrl caps: `setxkbmap -option ctrl:swapcaps`

onlycaps -> ctrl `setxkbmap -option ctrl:nocaps`

bspterm
```bash
#! /usr/bin/env bash
if [ "$1" == "--float" ]; then
	kitty --class 'kitty-float,kitty-float'
elif [ "$1" == "--full" ]; then
	kitty --class 'Fullscreen,Fullscreen' --start-as=fullscreen
else
	kitty
fi
```

