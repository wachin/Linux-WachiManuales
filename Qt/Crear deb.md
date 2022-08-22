Posiblemente se pueda crear el deb así:

Make a Debian Package (.deb) from a Qt Project - Ask Ubuntu
https://askubuntu.com/questions/274311/make-a-debian-package-deb-from-a-qt-project

I just made my package by following tutorial. I recommend running qmake to create the Makefile, so that you don't run into problems while executing dpkg-buildpackage.

Steps

Assuming you have already setup the debian directory in the source code,

Copy the source directory (where the .pro file is) to your Home directory and rename it to yourProjectName_projectVersion.

Open a terminal and execute cd yourProjectName_projectVersion.
    
Para mi es así:
    
    dh_make -s -c gpl -e wachin.id@gmail.com --createorig
        
pero si el programa no está en <package>-<version> se puede así:

    dh_make -s -c gpl -e wachin.id@gmail.com --createorig -p vnote_3.13.1
    
otro ejemplo:
    
    dh_make -s -c gpl -e wachin.id@gmail.com --createorig -p ffmulticonverter-1.8.1
    
Finally, execute 

    dpkg-buildpackage
    
o:

    dpkg-buildpackage -rfakeroot
    


. You may get something like error exit status 255, if so, check that the tar.xs file in you Home folder matches the file requested by dpkg-buildpackage (check the last lines of the output of dpkg-buildpackage to find out what file wants).

If you seek an easier and faster way, you can use Debreate (I did not test it, so I cannot assure you that it will work).

I hope this helps anyone who wants to distribute their Qt project.



How to Build Debian Packages with Meson/Ninja | by Selam G. | Dev Genius
https://blog.devgenius.io/how-to-build-debian-packages-from-meson-ninja-d1c28b60e709
