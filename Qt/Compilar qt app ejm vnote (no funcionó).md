

# Compilando vnote en MX Linux 21 de 32 bits
Esta aplicacion es complicada de compilar porque el codigo no está completo sino que tiene enlaces a otros repositorios los cuales deben estar presentes para poder compiarlo

Primero me hubico en una terminal donde tengo mis compilaciones

    cd Dev

Intento la compilación:

    git clone https://github.com/vnotex/vnote
    cd vnote
    qmake
    make

error:

Cannot find file: /home/wachin/Dev/vnote/libs/vtextedit/vtextedit.pro.

Cannot find file: /home/wachin/Dev/vnote/libs/vtextedit/src/libs/sonnet/data/data.pro.

entonces navegando en esa ruta entrando en:

https://github.com/vnotex/vnote

/libs/vtextedit/src/libs/

allí dentro hay tres carpetas marcadas como enlaces:

hunspell @ efb0389
sonnet @ 403863f
syntax-highlighting @ 807895f 

entrando en cada una de ellas copio aquí la descripción:

vnotex/sonnet at 403863fc499c58677c9b0b25f820d0baa9186a07
https://github.com/vnotex/sonnet/tree/403863fc499c58677c9b0b25f820d0baa9186a07

vnotex/hunspell at efb0389dbd3cb4c9634e1df73bacb5a290dd9311
https://github.com/vnotex/hunspell/tree/efb0389dbd3cb4c9634e1df73bacb5a290dd9311

vnotex/syntax-highlighting at 807895fcc897b94e731d91c7e92ee27e61aaeed9
https://github.com/vnotex/syntax-highlighting/tree/807895fcc897b94e731d91c7e92ee27e61aaeed9

pero ellas no se pueden clonar, pero para clonarlas allí en github hay que copiar el enlace 

en el botón verde:

Code

allí al darle clic aparece para cada uno de ellos:

https://github.com/vnotex/sonnet.git
https://github.com/vnotex/hunspell.git
https://github.com/vnotex/syntax-highlighting.git

entonces ahora entro manualmente en el codigo fuente que he descargado de vnote para encontrar correctamente la ruta donde deberán ir, así:

/home/wachin/Dev/vnote/libs/vtextedit/

y allí no hay nada, pero allí deberán de estar así que los clono allí:

estando en la terminal en:

wachin@mx21:~/Dev/vnote
$ 

allí pongo uno por uno

git clone https://github.com/vnotex/sonnet.git libs/vtextedit/sonnet
git clone https://github.com/vnotex/hunspell.git libs/vtextedit/hunspell
git clone https://github.com/vnotex/syntax-highlighting.git libs/vtextedit/syntax-highlighting

y lo mismo para lo siguiente, pero debemos de entrar al siguiente directorio pues ya existe y allí clonar:

    cd libs/vtextedit
    git clone https://github.com/vnotex/vtextedit.git 
    mv vtextedit/* .
    mv vtextedit/.git .

/home/wachin/Dev/vnote/libs/vtextedit/







CONSULTAS:

Install Qt Creator and compile your first program in Ubuntu | Ubunlog
https://ubunlog.com/en/install-qt-creator-compile-program/ 

Clonar un repositorio git a un directorio que no está vacío
https://gist.github.com/felipelavinz/8804767
