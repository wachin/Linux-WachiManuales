

# Intercambiar el teclado 
En la descripción de synaptic de gxkb traduciendola dice:

"gxkb es un pequeño subprograma indicador que permite rápidamente
cambiar entre diferentes distribuciones de teclado en X. Una bandera
correspondiente al país del diseño activo se muestra
en el área del indicador.

El applet está escrito en C y utiliza la biblioteca GTK+ y
por lo tanto, no depende de ningún componente de GNOME."


# Instalación
Ponga en una terminal:

    sudo apt install gxkb system-keyboard-qt


# Programa disponible en y desde    

gxkb en Debian desde Stretch 
Entre en la siguiente dirección:

https://packages.debian.org/gxkb


system-keyboard-qt en los repositorios de MX 
http://mxrepo.com/mx/repo/pool/main/s/system-keyboard-qt/


# Modo de uso, agregar al inicio
Sugiero que lo añada al inicio de Gestor de Ventanas

Para Fluxbox
En el archivo:

.fluxbox/startup

añadirlo así.

gxkb &


# Cómo añadir más teclados después de instalado el sistema operativo
Escribo esto porque cuando uno instala MX Linux al principio uno puede añadir varios, pero después también se puede, para ello 


Iconos de banderas de los paises
este programa las tiene en:

/usr/share/gxkb/flags/

/usr/share/gxkb/flags/am.png
/usr/share/gxkb/flags/bg.png
/usr/share/gxkb/flags/by.png
/usr/share/gxkb/flags/cz.png
/usr/share/gxkb/flags/cz_qwerty.png
/usr/share/gxkb/flags/de.png
/usr/share/gxkb/flags/ee.png
/usr/share/gxkb/flags/es.png
/usr/share/gxkb/flags/fi.png
/usr/share/gxkb/flags/fr.png
/usr/share/gxkb/flags/gb.png
/usr/share/gxkb/flags/ge.png
/usr/share/gxkb/flags/gr.png
/usr/share/gxkb/flags/hr.png
/usr/share/gxkb/flags/hu.png
/usr/share/gxkb/flags/is.png
/usr/share/gxkb/flags/it.png
/usr/share/gxkb/flags/kz.png
/usr/share/gxkb/flags/lt.png
/usr/share/gxkb/flags/lv.png
/usr/share/gxkb/flags/no.png
/usr/share/gxkb/flags/pl.png
/usr/share/gxkb/flags/pt.png
/usr/share/gxkb/flags/ro.png
/usr/share/gxkb/flags/ru.png
/usr/share/gxkb/flags/se.png
/usr/share/gxkb/flags/si.png
/usr/share/gxkb/flags/sk.png
/usr/share/gxkb/flags/sr.png
/usr/share/gxkb/flags/ua.png
/usr/share/gxkb/flags/us.png
/usr/share/gxkb/flags/uz.png
/usr/share/gxkb/flags/zz.png


# CONSULTAS:

Multiple Keyboard Layouts and Shortcuts - Kate
https://kate-editor.org/2013/10/07/multiple-keyboard-layouts-and-shortcuts/

How to display keyboard switcher? [SOLVED] - antiX-forum
https://www.antixforum.com/forums/topic/how-to-display-keyboard-switcher/


