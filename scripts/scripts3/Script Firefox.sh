#! /bin/bash

rm -r ~/.mozilla
tar -xf ~/.mozilla.tar.gz -C ~/
firefox


## Primero sacar respaldo de la carpeta de Mozilla
## yo le he copiado a /home/washington/Firefox-ok/.mozilla 
## y lo he comprimido allí para tener ese respaldo allí
## y luego el comprimido .mozilla.tar.gz lo he puesto en HOME
## para ahora si desde allí lanzar este
## La segunda línea descomprime el archivo tar pero cambiando 
## la ruta a ~/.config/ esto lo aprendí viendo la ayuda
## tar --help
## -C, --directory=DIR        cambia al directorio DIR


