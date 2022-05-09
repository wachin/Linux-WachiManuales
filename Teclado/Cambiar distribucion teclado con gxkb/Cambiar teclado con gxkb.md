



sudo apt install gxkb system-keyboard-qt


fbxkb
X11 keyboard indicator and switcher



En Ubuntu desde Bionic
https://packages.ubuntu.com/gxkb

en Debian desde Stretch

https://packages.debian.org/gxkb



http://mxrepo.com/mx/repo/pool/main/s/system-keyboard-qt/


para ver los teclados disponibles:

setxkbmap -query

para ver donde están todos:

sudo thunar /usr/share/X11/xkb/symbols/

para poner desde la terminal los que yo quiera:

setxkbmap -layout latam,us,es


setxkbmap -layout "latam,es,us,de"


TO CHANGE WITH VARIANTS

To this end, we first have to create the script. So let’s first type `setxkbmap -query` in the console and check the output. For me, this results in:

$ setxkbmap -query
rules: evdev
model: pc101
layout: de,us
variant: nodeadkeys,

From this, we can follow that the current xkb layout is achieved with:

setxkbmap -model pc101 -layout de,us -variant nodeadkeys

Now, let’s switch the de,us to us,de and try the following:

setxkbmap -model pc101 -layout us,de -variant nodeadkeys


Para mi en un experimento:

wachin@mx19:~
$ setxkbmap -query
rules:      evdev
model:      pc105
layout:     latam,us,es
variant:    ,,winkeys
options:    terminate:ctrl_alt_bksp,grp_led:scroll
wachin@mx19:~





Multiple Keyboard Layouts and Shortcuts - Kate
https://kate-editor.org/2013/10/07/multiple-keyboard-layouts-and-shortcuts/


