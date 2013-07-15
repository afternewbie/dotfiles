#!/bin/bash

SLEEP=1

# Font
# FONT="Neep:pixelsize=9"
FONT="-artwiz-cure-medium-r-normal-*-10-*-*-*-*-*-*-*"
#FONT="Monaco:size=9" 

# Colors
BG="#151515"
FG="#303030"
RED="#E84F4F"
GREEN="#B8D68C"
YELLOW="#E1AA5D"
BLUE="#7DC1CF"
MAGENTA="#9B64FB"
CYAN="#0088CC"

# Geometry
HEIGHT=20
WIDTH=20
X=0
Y=25

pacmanupdate() {
  echo -n CORE: $(grep core ~/.xmonad/Scripts/pacupdates | wc -l)
  echo -n " - "
  echo -n COMMUNITY: $(grep community ~/.xmonad/Scripts/pacupdates | wc -l)
  echo -n " - "
  echo -n TESTING: $(grep testing ~/.xmonad/Scripts/pacupdates | wc -l)
  echo -n " - "
  echo -n EXTRA: $(grep extra ~/.xmonad/Scripts/pacupdates | wc -l)
}

count() {
  echo -n $(pacman -Qu | wc -l)
}

while :; do 
echo "^fg($RED)^ca(1,sh ~/.xmonad/Scripts/pacmanupdater.sh)^ca(3,sh ~/.xmonad/Scripts/pacinfo.sh) PACMAN \
^fg($FG) | \
^fg($GREEN)$(count)  ^ca()^ca()"
done | dzen2 -p -ta r -bg $BG -x $X -y $Y -h $HEIGHT -expand r -fn $FONT -e 'onstart=uncollapse;key_Escape=ungrabkeys,exit'

