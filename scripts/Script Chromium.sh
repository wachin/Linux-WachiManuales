#! /bin/bash

rm -r ~/.config/chromium
tar -xf ~/.config/chromium.tar -C ~/.config/
/usr/bin/chromium


## Primero sacar respaldo comprimiendo (clic derecho) como .tar la carpeta ~/.config/chromium
## quedando: ~/.config/chromium.tar
## sacar un respaldo por un caso copiadola a ~/AppsLinux
## para ahora si desde allí lanzar este script
## el script lo que hace es borrar la carpeta ~/.config/chromium
## luego descomprime ~/.config/chromium.tar
## para que siempre se abra la ultima configuración
## CONSULTA https://blog.desdelinux.net/extraer-archivos-tar-un-directorio-especifico-en-linux/
