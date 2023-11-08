# Cómo crear Script para añadir 75Hz en Monitor Externo en Linux

How to Set Custom Resolution Using xrandr?
https://itslinuxfoss.com/set-custom-resolution-using-xrandr/

Por: Wachín
Este tutorial es sólo para monitores externos conectados a una laptop, o para una computadora de escritorio (nunca para la pantalla de una laptop, exepto que sea una AlienWare o que sepa que acepta 75 o más Hz)

INSTRUCCIONES PARA UNA LAPTOP CONECTADA A UN MONITOR EXTERNO
Primero necesito saber el nombre del monitor externo, coloco en la terminal

	xrandr

y me da (haré un resumen de lo que sale):

	Screen 0: minimum 320 x 200, current 1600 x 900, maximum 8192 x 8192
	LVDS-1 connected primary 1600x900+0+0 (normal left inverted right x axis y axis) 382mm x 215mm
	   1600x900      60.08*+  60.08  
	   1400x900      60.08  
	   1440x810      60.08  
	   1368x768      60.08  
	   1280x800      60.08  
	   1280x720      60.08  
	   1024x768      60.08  
	   960x720       60.08  
	   928x696       60.08  
	   896x672       60.08  
	   1024x576      60.08  
	   960x600       60.08  
	   960x540       60.08  
	   800x600       60.08  
	   840x525       60.08  
	   864x486       60.08  
	   700x525       60.08  
	   800x450       60.08  
	   640x512       60.08  
	   700x450       60.08  
	   640x480       60.08  
	   720x405       60.08  
	   684x384       60.08  
	   640x360       60.08  
	   512x384       60.08  
	   512x288       60.08  
	   480x270       60.08  
	   400x300       60.08  
	   432x243       60.08  
	   320x240       60.08  
	   360x202       60.08  
	   320x180       60.08    
	VGA-1 disconnected (normal left inverted right x axis y axis)
	DP-1 disconnected (normal left inverted right x axis y axis)



Esto significa que el monitor de la laptop es LVDS-1

Ahora, ingrese los siguientes datos a la terminal:

	cvt 1280 768 75

como resultado aparece así:

	
	# 1280x768 74.89 Hz (CVT) hsync: 60.29 kHz; pclk: 102.25 MHz
	Modeline "1280x768_75.00"  102.25  1280 1360 1488 1696  768 771 781 805 -hsync +vsync
	
	
Copie la segunda linea después de "Modeline" desde el "1280x.... y pongala con xrandr --newmode al principio, así:

	xrandr --newmode "1280x768_75.00"  102.25  1280 1360 1488 1696  768 771 781 805 -hsync +vsync
	
luego añada las siguientes lineas con los datos 1280x768_75.00, así

	xrandr --addmode LVDS-1 1280x768_75.00
	xrandr --output LVDS-1 --mode 1280x768_75.00

Entonces esto es lo que pondré en el script que debo hacer para ejecutarlo en un archivo y no tener que siempre andar teniendo que poner esas tres lineas:

---------------------------------------------------------
	xrandr --newmode "1280x768_75.00" 102.98 1280 1360 1496 1712 768 769 772 802 -HSync +Vsync
	xrandr --addmode VGA-1 1280x768_75.00
	xrandr --output VGA-1 --mode 1280x768_75.00
-------------------------------------------------------------

Adaptado para Ubuntu de:
http://www.arunviswanathan.com/node/53

#################################################
Poner 75Hz a Monitor Viewsonic desde PC emachines
#################################################

$ xrandr
Screen 0: minimum 320 x 200, current 1366 x 768, maximum 8192 x 8192
VGA1 connected primary 1366x768+0+0 (normal left inverted right x axis y axis) 410mm x 230mm
1366x768 59.79*+
1280x1024 75.02 60.02

1280x960 60.00
1280x800 74.93 59.81
1152x864 75.00
1024x768 75.03 70.07 60.00
832x624 74.55
800x600 72.19 75.00 60.32 56.25
640x480 75.00 72.81 66.67 59.94
720x400 70.08

######################

gtf 1366 768 75

# 1368x768 @ 75.00 Hz (GTF) hsync: 60.15 kHz; pclk: 110.19 MHz
Modeline "1368x768_75.00" 110.19 1368 1456 1600 1832 768 769 772 802 -HSync +Vsync

xrandr --newmode "1368x768_75.00" 110.19 1368 1456 1600 1832 768 769 772 802 -HSync +Vsync
xrandr --addmode VGA1 "1368x768_75.00"
xrandr --output VGA1 --mode 1368x768_75.00

######################

gtf 1280 800 75

	# 1280x800 @ 75.00 Hz (GTF) hsync: 62.63 kHz; pclk: 107.21 MHz
	Modeline "1280x800_75.00" 107.21 1280 1360 1496 1712 800 801 804 835 -HSync +Vsync

xrandr --newmode "1280x800_75.00" 107.21 1280 1360 1496 1712 800 801 804 835 -HSync +Vsync
xrandr --addmode VGA1 "1280x800_75.00"
xrandr --output VGA1 --mode 1280x800_75.00

RESULTADO ALGO BORROSO

######################

gtf 1280 960 75

# 1280x960 @ 75.00 Hz (GTF) hsync: 75.15 kHz; pclk: 129.86 MHz
Modeline "1280x960_75.00" 129.86 1280 1368 1504 1728 960 961 964 1002 -HSync +Vsync

xrandr --newmode "1280x960_75.00" 129.86 1280 1368 1504 1728 960 961 964 1002 -HSync +Vsync
xrandr --addmode VGA1 "1280x960_75.00"
xrandr --output VGA1 --mode 1280x960_75.00

######################


