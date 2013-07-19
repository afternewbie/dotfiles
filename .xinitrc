#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
xset +fp /usr/share/fonts/local 
xset +fp /usr/share/fonts/artwiz-fonts 
xset fp rehash 
#xsetroot -cursor_name left_ptr &
#hsetroot -fill /home/arie/Pictures/Wallpaper/wallpaper-170550.jpg
#urxvtd &
#tint2 -c ~/.config/tint2/xmonad.tint2rc &

# exec gnome-session
# exec startkde
#exec startxfce4
case $1 in
kde)
    exec startkde
    ;;
xfce)
    exec startxfce4
    ;;
awesome)
    exec awesome
    ;;
cinnamon)
    exec gnome-session-cinnamon
    ;;
cinnamon2d)
    exec gnome-session-cinnamon2d
    ;;
openbox)
    exec openbox-session
    ;;
xmonad|*)
	exec xmonad
    ;;
lxde)
    exec startlxde
    ;;
gnome)
    exec gnome-session
    ;;
e17)
    exec enlightenment_start
    ;;
esac 
