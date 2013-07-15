#!/bin/bash

#SLEEP=1

# Font
FONT="-artwiz-cure-medium-r-normal-*-10-*-*-*-*-*-*-*"

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
X=3
Y=48


echo "^fg($RED) CORE ^fg($CYAN)^pa(100)$(pacman -Sup | grep core | wc -l) 
^fg($RED) COMMUNITY ^fg($CYAN)^pa(100)$(pacman -Sup | grep community | wc -l) 
^fg($RED) EXTRA ^fg($CYAN)^pa(100)$(pacman -Sup | grep extra | wc -l)
^fg($RED) REPO-CK ^fg($CYAN)^pa(100)$(pacman -Sup | grep repo-ck | wc -l)
^fg($RED) MULTILIB ^fg($CYAN)^pa(100)$(pacman -Sup | grep multilib | wc -l) | dzen2 -p -bg $BG -fg $YELLOW -y $Y -x $X -fn $FONT -l 5 -w 119 -ta l -e "onstart=uncollapse;button3=exit"

