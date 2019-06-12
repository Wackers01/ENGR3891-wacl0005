#!/bin/sh
#Download Git
sudo apt-get install git

#Enter GIT_ROOT
cd $GIT_ROOT

#Clone Repository
git clone https://github.com/MEGA65/mega65-core.git

#Configure
sudo git config --global url.ssh://git@github.com/.insteadOf https://github.com/

#Change directory into the mega65-core
cd mega65-core

#Checkout development branch
sudo git checkout development

#Pull from Git
sudo git pull

#Leave Git directory
cd ..

#Clone fpgajtag
sudo git clone https://github.com/cambridgehackers/fpgajtag.git
cd fpgajtag
make

#if git clone doest not work
sudo apt-get install libusb-1.0-0-dev
sudo cp src/fpgajtag /usr/local/bin
cd ../
cd mega65-core

#Install gcc
sudo apt install gcc

#install make
sudo apt-get install ubuntu-make 

#Install Python
sudo apt-get install python3.6

#install libpng-dev
sudo apt-get install libpng-dev

#clone cbmconvert 
sudo git clone https://github.com/sasq64/cbmconvert.git

#Compile and install cmbconvert
cd ~/Documents/MEGA65/cbmconvert
make -f Makefile.unix
sudo make install

# Install Xilinx 14.7
cd Xilinx_ISE_DS_14.7_1015_1.tar ~/Documents/
cd ~/Documents
tar xvf Xilinx_ISE_DS_14.7_1015_1.tar
cd ~/Documents/Xilinx_ISE_DS_14.7_1015_1
sudo ./xsetup

#Compile the mega65 core
cd ~/Documents/MEGA65/mega65-core
./compile.sh
