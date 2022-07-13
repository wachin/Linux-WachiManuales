

# Compilando vnote en MX Linux 21 de 32 bits
Dependencias:

    sudo apt install libqt5svg5-dev 
    
    qtwebengine5-dev
    
    sudo apt-get install cmake build-essential libqt5x11extras5-dev qt5-qmake qtbase5-dev-tools extra-cmake-modules qtdeclarative5-dev-tools qtdeclarative5-dev qtcreator qttools5-dev qttools5-dev-tools libqt5svg5-dev

Esta aplicacion es complicada de compilar porque el codigo no está completo sino que tiene enlaces a otros repositorios los cuales deben estar presentes para poder compiarlo

Primero me hubico en una terminal donde tengo mis compilaciones

    cd Dev

Intento la compilación:

    git clone https://github.com/vnotex/vnote
    cd vnote
    qmake
    make

error:

wachin@mx21:~/Dev/vnote
$ make
cd libs/ && ( test -e Makefile || /usr/lib/qt5/bin/qmake -o Makefile /home/wachin/Dev/vnote/libs/libs.pro ) && make -f Makefile 
make[1]: se entra en el directorio '/home/wachin/Dev/vnote/libs'
cd vtextedit/ && ( test -e Makefile || /usr/lib/qt5/bin/qmake -o Makefile /home/wachin/Dev/vnote/libs/vtextedit/vtextedit.pro ) && make -f Makefile 
Cannot find file: /home/wachin/Dev/vnote/libs/vtextedit/vtextedit.pro

## Solución

    git clone clone https://github.com/vnotex/vtextedit.git 


entonces navegando en esa ruta entrando en:

https://github.com/vnotex/vnote

libs

allí hay dos enlaces:

QHotkey @ 18ac011
vtextedit @ a6a9a31 

entro en:

vnotex/vtextedit at a6a9a31cf64b4a159d360f0ef6ed6cf296f8eca8
https://github.com/vnotex/vtextedit/tree/a6a9a31cf64b4a159d360f0ef6ed6cf296f8eca8

vnotex/QHotkey at 18ac011008d3ae55abc19233ba94fad1ea9801d8
https://github.com/vnotex/QHotkey/tree/18ac011008d3ae55abc19233ba94fad1ea9801d8

pero ellas no se pueden clonar, pero para clonarlas allí en github hay que copiar el enlace 

en el botón verde:

Code

allí al darle clic aparece para cada uno de ellos:

https://github.com/vnotex/vtextedit.git
https://github.com/vnotex/QHotkey.git

entonces ahora entro manualmente en el codigo fuente que he descargado de vnote para encontrar correctamente la ruta donde deberán ir, así:

/home/wachin/Dev/vnote/libs/vtextedit/

y allí no hay nada, pero allí deberán de estar así que los clono allí:

estando en la terminal en:

wachin@mx21:~/Dev/vnote
$ 

    cd libs/vtextedit
    git clone https://github.com/vnotex/vtextedit.git Temp0
    mv Temp0/* .
    mv Temp0/.git .
    mv Temp0/.gitignore .
    cd ../QHotkey
    git clone https://github.com/vnotex/QHotkey.git Temp1
    mv Temp1/* .
    mv Temp1/.git .
    mv Temp1/.gitignore .

Ahora me hubico en el directorio de la compilación

cd ../..

estando en:

wachin@mx21:~/Dev/vnote
$ make
cd libs/ && ( test -e Makefile || /usr/lib/qt5/bin/qmake -o Makefile /home/wachin/Dev/vnote/libs/libs.pro ) && make -f Makefile 
make[1]: se entra en el directorio '/home/wachin/Dev/vnote/libs'
.......
cd syntax-highlighting/ && ( test -e Makefile || /usr/lib/qt5/bin/qmake -o Makefile /home/wachin/Dev/vnote/libs/vtextedit/src/libs/syntax-highlighting/syntax-highlighting.pro ) && make -f Makefile 
Cannot find file: /home/wachin/Dev/vnote/libs/vtextedit/src/libs/syntax-highlighting/syntax-highlighting.pro.


## Solución
Entro en el directorio que no hay:

/vnote/libs/vtextedit/src/libs/syntax-highlighting/syntax-highlighting.pro.

allí en al terminal así:

cd libs/vtextedit/src/libs/

entonces navegando en esa ruta en github entrando en:

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

ahora estando en :

estando en la terminal en:

wachin@mx21:~/Dev/vnote/libs/vtextedit/src/libs
$ 

pongo

ls

y me aparecen:

```
🗀 libs
├── 🗀 hunspell
├── 🗀 sonnet
└── 🗀 syntax-highlighting
```

cada uno de ellos está vacío, allí debo entrar y clonar los repositorios

    cd hunspell
    git clone https://github.com/vnotex/hunspell.git Temp2
    mv Temp2/* .
    mv Temp2/.git .
    mv Temp2/.gitignore .
    cd ../sonnet
    git clone https://github.com/vnotex/sonnet.git Temp3
    mv Temp3/* .
    mv Temp3/.git .
    mv Temp3/.gitignore .
    cd ../syntax-highlighting
    git clone https://github.com/vnotex/syntax-highlighting.git Temp3
    mv Temp3/* .
    mv Temp3/.git .
    mv Temp3/.gitignore .
    
ahora si vuelvo a la ruta de la compilación (devemos volver 5 directorios atŕas):

cd ../../../../..

hago make estando en:


wachin@mx21:~/Dev/vnote
$ make
cd libs/ && ( test -e Makefile || /usr/lib/qt5/bin/qmake -o Makefile /home/wachin/Dev/vnote/libs/libs.pro ) && make -f Makefile
......
.....
..
.



log de instalación:

wachin@mx21:~/Dev/vnote
$ sudo make install
[sudo] password for wachin: 
cd libs/ && ( test -e Makefile || /usr/lib/qt5/bin/qmake -o Makefile /home/wachin/Dev/vnote/libs/libs.pro ) && make -f Makefile install
make[1]: se entra en el directorio '/home/wachin/Dev/vnote/libs'
cd vtextedit/ && ( test -e Makefile || /usr/lib/qt5/bin/qmake -o Makefile /home/wachin/Dev/vnote/libs/vtextedit/vtextedit.pro ) && make -f Makefile install
make[2]: se entra en el directorio '/home/wachin/Dev/vnote/libs/vtextedit'
cd src/ && ( test -e Makefile || /usr/lib/qt5/bin/qmake -o Makefile /home/wachin/Dev/vnote/libs/vtextedit/src/src.pro ) && make -f Makefile install
make[3]: se entra en el directorio '/home/wachin/Dev/vnote/libs/vtextedit/src'
cd libs/ && ( test -e Makefile || /usr/lib/qt5/bin/qmake -o Makefile /home/wachin/Dev/vnote/libs/vtextedit/src/libs/libs.pro ) && make -f Makefile install
make[4]: se entra en el directorio '/home/wachin/Dev/vnote/libs/vtextedit/src/libs'
cd syntax-highlighting/ && ( test -e Makefile || /usr/lib/qt5/bin/qmake -o Makefile /home/wachin/Dev/vnote/libs/vtextedit/src/libs/syntax-highlighting/syntax-highlighting.pro ) && make -f Makefile install
make[5]: se entra en el directorio '/home/wachin/Dev/vnote/libs/vtextedit/src/libs/syntax-highlighting'
/usr/lib/qt5/bin/qmake -install qinstall -exe libVSyntaxHighlighting.so.1.0.0 /usr/lib/libVSyntaxHighlighting.so.1.0.0
strip --strip-unneeded /usr/lib/libVSyntaxHighlighting.so.1.0.0
ln -f -s libVSyntaxHighlighting.so.1.0.0 /usr/lib/libVSyntaxHighlighting.so
ln -f -s libVSyntaxHighlighting.so.1.0.0 /usr/lib/libVSyntaxHighlighting.so.1
ln -f -s libVSyntaxHighlighting.so.1.0.0 /usr/lib/libVSyntaxHighlighting.so.1.0
make[5]: se sale del directorio '/home/wachin/Dev/vnote/libs/vtextedit/src/libs/syntax-highlighting'
cd katevi/ && ( test -e Makefile || /usr/lib/qt5/bin/qmake -o Makefile /home/wachin/Dev/vnote/libs/vtextedit/src/libs/katevi/katevi.pro ) && make -f Makefile install
make[5]: se entra en el directorio '/home/wachin/Dev/vnote/libs/vtextedit/src/libs/katevi'
make[5]: No se hace nada para 'install'.
make[5]: se sale del directorio '/home/wachin/Dev/vnote/libs/vtextedit/src/libs/katevi'
cd peg-markdown-highlight/ && ( test -e Makefile || /usr/lib/qt5/bin/qmake -o Makefile /home/wachin/Dev/vnote/libs/vtextedit/src/libs/peg-markdown-highlight/peg-markdown-highlight.pro ) && make -f Makefile install
make[5]: se entra en el directorio '/home/wachin/Dev/vnote/libs/vtextedit/src/libs/peg-markdown-highlight'
make[5]: No se hace nada para 'install'.
make[5]: se sale del directorio '/home/wachin/Dev/vnote/libs/vtextedit/src/libs/peg-markdown-highlight'
cd sonnet/data/ && ( test -e Makefile || /usr/lib/qt5/bin/qmake -o Makefile /home/wachin/Dev/vnote/libs/vtextedit/src/libs/sonnet/data/data.pro ) && make -f Makefile install
make[5]: se entra en el directorio '/home/wachin/Dev/vnote/libs/vtextedit/src/libs/sonnet/data'
cd parsetrigrams/ && ( test -e Makefile || /usr/lib/qt5/bin/qmake -o Makefile /home/wachin/Dev/vnote/libs/vtextedit/src/libs/sonnet/data/parsetrigrams/parsetrigrams.pro ) && make -f Makefile install
make[6]: se entra en el directorio '/home/wachin/Dev/vnote/libs/vtextedit/src/libs/sonnet/data/parsetrigrams'
make[6]: No se hace nada para 'install'.
make[6]: se sale del directorio '/home/wachin/Dev/vnote/libs/vtextedit/src/libs/sonnet/data/parsetrigrams'
cd gentrigrams/ && ( test -e Makefile || /usr/lib/qt5/bin/qmake -o Makefile /home/wachin/Dev/vnote/libs/vtextedit/src/libs/sonnet/data/gentrigrams/gentrigrams.pro ) && make -f Makefile install
make[6]: se entra en el directorio '/home/wachin/Dev/vnote/libs/vtextedit/src/libs/sonnet/data/gentrigrams'
make[6]: No se hace nada para 'install'.
make[6]: se sale del directorio '/home/wachin/Dev/vnote/libs/vtextedit/src/libs/sonnet/data/gentrigrams'
make[5]: se sale del directorio '/home/wachin/Dev/vnote/libs/vtextedit/src/libs/sonnet/data'
cd sonnet/src/core/ && ( test -e Makefile || /usr/lib/qt5/bin/qmake -o Makefile /home/wachin/Dev/vnote/libs/vtextedit/src/libs/sonnet/src/core/core.pro ) && make -f Makefile install
make[5]: se entra en el directorio '/home/wachin/Dev/vnote/libs/vtextedit/src/libs/sonnet/src/core'
make[5]: No se hace nada para 'install'.
make[5]: se sale del directorio '/home/wachin/Dev/vnote/libs/vtextedit/src/libs/sonnet/src/core'
make[4]: se sale del directorio '/home/wachin/Dev/vnote/libs/vtextedit/src/libs'
cd editor/ && ( test -e Makefile || /usr/lib/qt5/bin/qmake -o Makefile /home/wachin/Dev/vnote/libs/vtextedit/src/editor/editor.pro ) && make -f Makefile install
make[4]: se entra en el directorio '/home/wachin/Dev/vnote/libs/vtextedit/src/editor'
/usr/lib/qt5/bin/qmake -install qinstall -exe libVTextEdit.so.1.0.0 /usr/lib/libVTextEdit.so.1.0.0
strip --strip-unneeded /usr/lib/libVTextEdit.so.1.0.0
ln -f -s libVTextEdit.so.1.0.0 /usr/lib/libVTextEdit.so
ln -f -s libVTextEdit.so.1.0.0 /usr/lib/libVTextEdit.so.1
ln -f -s libVTextEdit.so.1.0.0 /usr/lib/libVTextEdit.so.1.0
make[4]: se sale del directorio '/home/wachin/Dev/vnote/libs/vtextedit/src/editor'
make[3]: se sale del directorio '/home/wachin/Dev/vnote/libs/vtextedit/src'
cd tests/ && ( test -e Makefile || /usr/lib/qt5/bin/qmake -o Makefile /home/wachin/Dev/vnote/libs/vtextedit/tests/tests.pro ) && make -f Makefile install
make[3]: se entra en el directorio '/home/wachin/Dev/vnote/libs/vtextedit/tests'
cd test_textfolding/ && ( test -e Makefile || /usr/lib/qt5/bin/qmake -o Makefile /home/wachin/Dev/vnote/libs/vtextedit/tests/test_textfolding/test_textfolding.pro ) && make -f Makefile install
make[4]: se entra en el directorio '/home/wachin/Dev/vnote/libs/vtextedit/tests/test_textfolding'
make[4]: No se hace nada para 'install'.
make[4]: se sale del directorio '/home/wachin/Dev/vnote/libs/vtextedit/tests/test_textfolding'
cd test_utils/ && ( test -e Makefile || /usr/lib/qt5/bin/qmake -o Makefile /home/wachin/Dev/vnote/libs/vtextedit/tests/test_utils/test_utils.pro ) && make -f Makefile install
make[4]: se entra en el directorio '/home/wachin/Dev/vnote/libs/vtextedit/tests/test_utils'
make[4]: No se hace nada para 'install'.
make[4]: se sale del directorio '/home/wachin/Dev/vnote/libs/vtextedit/tests/test_utils'
make[3]: se sale del directorio '/home/wachin/Dev/vnote/libs/vtextedit/tests'
cd demo/ && ( test -e Makefile || /usr/lib/qt5/bin/qmake -o Makefile /home/wachin/Dev/vnote/libs/vtextedit/demo/demo.pro ) && make -f Makefile install
make[3]: se entra en el directorio '/home/wachin/Dev/vnote/libs/vtextedit/demo'
make[3]: No se hace nada para 'install'.
make[3]: se sale del directorio '/home/wachin/Dev/vnote/libs/vtextedit/demo'
make[2]: se sale del directorio '/home/wachin/Dev/vnote/libs/vtextedit'
cd QHotkey/ && ( test -e Makefile || /usr/lib/qt5/bin/qmake -o Makefile /home/wachin/Dev/vnote/libs/QHotkey/QHotkey.pro ) && make -f Makefile install
make[2]: se entra en el directorio '/home/wachin/Dev/vnote/libs/QHotkey'
cd HotkeyTest/ && ( test -e Makefile || /usr/lib/qt5/bin/qmake -o Makefile /home/wachin/Dev/vnote/libs/QHotkey/HotkeyTest/HotkeyTest.pro ) && make -f Makefile install
make[3]: se entra en el directorio '/home/wachin/Dev/vnote/libs/QHotkey/HotkeyTest'
make[3]: No se hace nada para 'install'.
make[3]: se sale del directorio '/home/wachin/Dev/vnote/libs/QHotkey/HotkeyTest'
cd QHotkey/ && ( test -e Makefile || /usr/lib/qt5/bin/qmake -o Makefile /home/wachin/Dev/vnote/libs/QHotkey/QHotkey/QHotkey.pro ) && make -f Makefile install
make[3]: se entra en el directorio '/home/wachin/Dev/vnote/libs/QHotkey/QHotkey'
make[3]: No se hace nada para 'install'.
make[3]: se sale del directorio '/home/wachin/Dev/vnote/libs/QHotkey/QHotkey'
make[2]: se sale del directorio '/home/wachin/Dev/vnote/libs/QHotkey'
make[1]: se sale del directorio '/home/wachin/Dev/vnote/libs'
cd src/ && ( test -e Makefile || /usr/lib/qt5/bin/qmake -o Makefile /home/wachin/Dev/vnote/src/src.pro ) && make -f Makefile install
make[1]: se entra en el directorio '/home/wachin/Dev/vnote/src'
/usr/lib/qt5/bin/qmake -install qinstall -exe vnote /usr/bin/vnote
strip /usr/bin/vnote
/usr/lib/qt5/bin/qmake -install qinstall /home/wachin/Dev/vnote/src/data/core/vnote.desktop /usr/share/applications/vnote.desktop
/usr/lib/qt5/bin/qmake -install qinstall /home/wachin/Dev/vnote/src/data/core/logo/16x16/vnote.png /usr/share/icons/hicolor/16x16/apps/vnote.png
/usr/lib/qt5/bin/qmake -install qinstall /home/wachin/Dev/vnote/src/data/core/logo/32x32/vnote.png /usr/share/icons/hicolor/32x32/apps/vnote.png
/usr/lib/qt5/bin/qmake -install qinstall /home/wachin/Dev/vnote/src/data/core/logo/48x48/vnote.png /usr/share/icons/hicolor/48x48/apps/vnote.png
/usr/lib/qt5/bin/qmake -install qinstall /home/wachin/Dev/vnote/src/data/core/logo/64x64/vnote.png /usr/share/icons/hicolor/64x64/apps/vnote.png
/usr/lib/qt5/bin/qmake -install qinstall /home/wachin/Dev/vnote/src/data/core/logo/128x128/vnote.png /usr/share/icons/hicolor/128x128/apps/vnote.png
/usr/lib/qt5/bin/qmake -install qinstall /home/wachin/Dev/vnote/src/data/core/logo/256x256/vnote.png /usr/share/icons/hicolor/256x256/apps/vnote.png
/usr/lib/qt5/bin/qmake -install qinstall /home/wachin/Dev/vnote/src/data/core/logo/vnote.svg /usr/share/icons/hicolor/scalable/apps/vnote.svg
cp /home/wachin/Dev/vnote/src/vnote_extra.rcc /usr/bin/vnote_extra.rcc
make[1]: se sale del directorio '/home/wachin/Dev/vnote/src'
cd tests/ && ( test -e Makefile || /usr/lib/qt5/bin/qmake -o Makefile /home/wachin/Dev/vnote/tests/tests.pro ) && make -f Makefile install
make[1]: se entra en el directorio '/home/wachin/Dev/vnote/tests'
cd test_utils/ && ( test -e Makefile || /usr/lib/qt5/bin/qmake -o Makefile /home/wachin/Dev/vnote/tests/test_utils/test_utils.pro ) && make -f Makefile install
make[2]: se entra en el directorio '/home/wachin/Dev/vnote/tests/test_utils'
make[2]: No se hace nada para 'install'.
make[2]: se sale del directorio '/home/wachin/Dev/vnote/tests/test_utils'
cd test_core/ && ( test -e Makefile || /usr/lib/qt5/bin/qmake -o Makefile /home/wachin/Dev/vnote/tests/test_core/test_core.pro ) && make -f Makefile install
make[2]: se entra en el directorio '/home/wachin/Dev/vnote/tests/test_core'
cd test_notebook/ && ( test -e Makefile || /usr/lib/qt5/bin/qmake -o Makefile /home/wachin/Dev/vnote/tests/test_core/test_notebook/test_notebook.pro ) && make -f Makefile install
make[3]: se entra en el directorio '/home/wachin/Dev/vnote/tests/test_core/test_notebook'
make[3]: No se hace nada para 'install'.
make[3]: se sale del directorio '/home/wachin/Dev/vnote/tests/test_core/test_notebook'
cd test_theme/ && ( test -e Makefile || /usr/lib/qt5/bin/qmake -o Makefile /home/wachin/Dev/vnote/tests/test_core/test_theme/test_theme.pro ) && make -f Makefile install
make[3]: se entra en el directorio '/home/wachin/Dev/vnote/tests/test_core/test_theme'
make[3]: No se hace nada para 'install'.
make[3]: se sale del directorio '/home/wachin/Dev/vnote/tests/test_core/test_theme'
make[2]: se sale del directorio '/home/wachin/Dev/vnote/tests/test_core'
cd test_task/ && ( test -e Makefile || /usr/lib/qt5/bin/qmake -o Makefile /home/wachin/Dev/vnote/tests/test_task/test_task.pro ) && make -f Makefile install
make[2]: se entra en el directorio '/home/wachin/Dev/vnote/tests/test_task'
make[2]: No se hace nada para 'install'.
make[2]: se sale del directorio '/home/wachin/Dev/vnote/tests/test_task'
make[1]: se sale del directorio '/home/wachin/Dev/vnote/tests'




CONSULTAS:

Install Qt Creator and compile your first program in Ubuntu | Ubunlog
https://ubunlog.com/en/install-qt-creator-compile-program/ 

Clonar un repositorio git a un directorio que no está vacío
https://gist.github.com/felipelavinz/8804767
