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
	dunst &
	xsetroot -cursor_name left_ptr &
	nitrogen --restore &
	pulseaudio --start &
	#compton -cfCG -t-10.6 -l-11 -r7 -o.41 -i 1.0 --vsync opengl &
	compton -cCfb -D 4 -r 5 -l -5 -t -2 -o 0.2 -e 0.6 &
	#compton -Cfb -e 0.6 &
	sleep 3 && stalonetray --geometry 1x1-1-1 --transparent true &
	mpd &
	urxvtd &
	sleep 3 && conky -c ~/.conkympd &
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
