# Creando Kernel de Tiempo Real (Real Time) para MX Linux 21

# ¿Qué versión de Kernel está instalado en este Sistema Operativo?

Primero debo saber qué kernel trae esta distrubución, pongo en la terminal:

`uname -r` 

y me da:

5.10.0-13-686-pae

entonces se que si instalo una versión como esa debería de funcionar.

# Instalar dependencias

Debemos instalar las siguientes dependencias:

```sudo apt-get install libncurses5-dev fakeroot wget xz-utils flex bison libssl-dev```

# Elegir la versión del código fuente del Kernel a Compilar

Ahora es necesario ver cual Kernel se podría instalar, y es necesario saber que en la siguiente página ellos tienen los Kernel con Soporte de Largo Plazo (LTS), para esto me dirigo a:

**Longterm release kernels**
https://www.kernel.org/category/releases.html

**Nota**: Si sepan Inglés les aconsejo que lean.

Allí encuentro y copio la siguiente información en esta fecha 2022-06-15:

```
Version Maintainer 	                        Released 	Projected EOL
5.15 	Greg Kroah-Hartman & Sasha Levin 	2021-10-31 	Oct, 2023
5.10 	Greg Kroah-Hartman & Sasha Levin 	2020-12-13 	Dec, 2026
5.4 	Greg Kroah-Hartman & Sasha Levin 	2019-11-24 	Dec, 2025
4.19 	Greg Kroah-Hartman & Sasha Levin 	2018-10-22 	Dec, 2024
4.14 	Greg Kroah-Hartman & Sasha Levin 	2017-11-12 	Jan, 2024
4.9 	Greg Kroah-Hartman & Sasha Levin 	2016-12-11 	Jan, 2023
```

entonces lo más seguro es que funcione la versión:

5.10
5.15

# Versión de Kernel elegida para buscar el Parque Real Time correcto

Voy a usar una versión del Kernel:

5.10

entonces con esto en mente debo buscar un parque RT para esta versión, para esto me dirijo a:

https://mirrors.edge.kernel.org/pub/linux/kernel/projects/rt

allí entre toda la lista busco el número 

5.10

y allí dentro busco un patch para la versión 5.10 y a esta fecha que hago este tutorial encuentro el más actual que es:

patch-5.10.109-rt65.patch.xz                       07-Apr-2022 03:09    171K

y me descargo ese. Aquí pongo el enlace:

https://mirrors.edge.kernel.org/pub/linux/kernel/projects/rt/5.10/patch-5.10.109-rt65.patch.xz

pero les explico que luego es muy posible que este enlace ya no esté disponible porque ellos generalmente andan haciendo actualizaciones

# Buscar el código fuente correcto para el mismo parque RT

Me dirijo a:

https://mirrors.edge.kernel.org/pub/linux/kernel/

allí dentro busco:

v5.x

y allí encuentro:

https://mirrors.edge.kernel.org/pub/linux/kernel/v5.x/


y allí dentro encuentro el código fuente que encaja con el parque:

linux-5.10.109.tar.xz                              28-Mar-2022 08:03    115M

pongo el enlace:

https://mirrors.edge.kernel.org/pub/linux/kernel/v5.x/linux-5.10.109.tar.xz

**Nota:** Con el paso del tiempo este archivo ya no estará disponible porque lo actualizan. En Linux es así porque cuando encuentran una vulnerabilidad la corrigen.

# Resumen de Descarga

Haré un resumen de los enlaces para poner en la terminal y descargar:

**Parche RT**

    wget -c https://mirrors.edge.kernel.org/pub/linux/kernel/projects/rt/5.10/patch-5.10.109-rt65.patch.xz

**Kernel**

    wget -c https://mirrors.edge.kernel.org/pub/linux/kernel/v5.x/linux-5.10.109.tar.xz

# Aplicación del Parche RT

Ubíquese en una terminal en el lugar donde está el parche y el código fuente, y ponga:

tar xJvf linux-5.10.109.tar.xz
cd linux-5.10.109
xzcat ../patch-5.10.109-rt65.patch.xz | patch -p1
wget -c https://github.com/wachin/AV-Linux-archivos-importantes/raw/master/AVL-MXE-2021.05.22-xfce4-openbox-i386.iso/usr/src/linux-headers-5.9.1-rt19avl1/.config


y si activamos el ver los archivos ocultos, ejemplo en Thunar con Ctrl + H vemos ahora el archivo:

.config

abrir ese archivo con un editor de texto como Gedit y buscar la línea:

CONFIG_SYSTEM_TRUSTED_KEYS

allí borrar lo que esté dentro de las comillas, en mi caso estaba así (en otro Linux puede que esté otra cosa):

CONFIG_SYSTEM_TRUSTED_KEYS="debian/certs/debian-uefi-certs.pem"

y lo dejé así:

CONFIG_SYSTEM_TRUSTED_KEYS=""

Guardar el archivo y cerrar el editor de texto.

Ahora poner allí mismo en la terminal:

make menuconfig


CONFIGURAR EL TIEMPO REAL
Seleccionar en: 

General setup ---> Preemption Model (xxxx)--->

elegir:

- Fully Preemptible Kernel (Real Time)



exFAT

Este Kernel si tiene soporte:

File Systems ---> DOS/FAT/exFAT 



PONER EL TIMER A 1000 Hz
En:

Processor type and features ---> Timer Frecuency (xxx) ---

entrar y chequear la frecuencia a 1000 Hz

salir



*********************************************************


Con el .config del Kernel por defecto tiene 

schedutil

 en:

Power management and ACPI options --- 

CPU Frequency scaling ---

Default CPUFreq governor (schedutil)

voy a ver si al usar otro .config cambia a performance




make deb-pkg LOCALVERSION=-wachin KDEB_PKGVERSION=$(make kernelversion)-1





**BASADO EN:**

System configuration [Linux-Sound]
https://wiki.linuxaudio.org/wiki/system_configuration#do_i_really_need_a_real-time_kernel











