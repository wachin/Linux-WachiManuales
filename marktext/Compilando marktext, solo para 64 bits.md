

marktext/BUILD.md at develop · marktext/marktext
https://github.com/marktext/marktext/blob/develop/docs/dev/BUILD.md



Build Instructions

Clone the repository:

git clone https://github.com/marktext/marktext.git

Prerequisites

Before you can get started developing, you need set up your build environment:

    Node.js >=v16 but <v17 and yarn
    Python >=v3.6 for node-gyp
    C++ compiler and development tools
    Build is supported on Linux, macOS and Windows

Additional development dependencies on Linux:

    libX11 (with headers)
    libxkbfile (with headers)
    libsecret (with headers)
    libfontconfig (with headers)

On Debian-based Linux: sudo apt-get install libx11-dev libxkbfile-dev libsecret-1-dev libfontconfig-dev


Instalando node.js 16 solo para 64 bits
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -

para 32 compilar

https://nodejs.org/dist/v16.15.0/

extraer:

node-v16.15.0.tar.xz

/home/wachin/Dev/nodejs/node-v16.15.0/BUILDING.md

sudo apt-get install python3 g++ make python3-pip

# Building Node.js

If the path to your build directory contains a space, the build will likely
fail.

To build Node.js:

```
./configure
make -j4
sudo make install
```

node -v



     sudo apt-get install gcc g++ make

 
# Install eslint
https://stackoverflow.com/a/49282220/10648253

sudo npm install -g eslint
 
 
 
sudo npm install -g npm@8.8.0
 
 
eslint -v
 
     
## To install the Yarn package manager, run:

     curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | gpg --dearmor | sudo tee /usr/share/keyrings/yarnkey.gpg >/dev/null
     echo "deb [signed-by=/usr/share/keyrings/yarnkey.gpg] https://dl.yarnpkg.com/debian stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
     sudo apt-get update && sudo apt-get install yarn


# Let's build

/home/wachin/Dev/marktext/


Go to marktext folder,  Install dependencies: 
    
yarn install 
    
 
No se pudo compilar porque dice que falta una opcion de electron que solo es para 64 bits así que no se podrá compilar



   Build MarkText binaries and packages: 
    
   yarn run build
    
   MarkText binary is located under build folder






How to install Node.js 16 on Ubuntu 20.04 LTS by Josh Sherman
https://joshtronic.com/2021/05/09/how-to-install-nodejs-16-on-ubuntu-2004-lts/

electron/electron: Build cross-platform desktop apps with JavaScript, HTML, and CSS
https://github.com/electron/electron
