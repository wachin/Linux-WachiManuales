
Para el siguiente error:

Project ERROR: Unknown module(s) in QT: multimedia

solución:

    sudo apt-get install qtmultimedia5-dev libqt5multimediawidgets5 libqt5multimedia5-plugins libqt5multimedia5



```
mkdir build
cd build
qmake ../vnote.pro
make
sudo make install
```

opcional, instalar en otro lado


```
mkdir build
cd build
qmake PREFIX=/home/wachin/bin/ ../vnote.pro 
make
sudo make install
```



Define the installation prefix using qmake? | Qt Forum
https://forum.qt.io/topic/8774/define-the-installation-prefix-using-qmake/5
https://forum.qt.io/post/121133

