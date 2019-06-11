
#Download Git
sudo apt-get install git

#Enter GIT_ROOT
cd $GIT_ROOT

#Clone Repository
git clone https://github.com/MEGA65/mega65-core.git

#Config
git config --global url.ssh://git@github.com/.insteadOf https://github.com/

#Change directory into the mega65-core
cd mega65-core
/mega65-core>

#Checkout development branch
git checkout development

#Pull from Git
git pull

#Leave Git directory
cd ..

#Clone fpgajtag
git clone https://github.com/cambridgehackers/fpgajtag.git
cd fpgajtag
make

#if git clone doest not work
sudo apt-get install libusb-1.0-0-dev
sudo cp src/fpgajtag /usr/local/bin
cd ../
cd mega65-core

#Check version
fpgajtag --version

#Install gcc
sudo apt install gcc

#install make
sudo apt-get install ubuntu-make 

#Install Python
sudo apt-get install python3.6

#install libpng-dev
sudo apt-get install libpng-dev

#clone cbmconvert 
git clone https://github.com/sasq64/cbmconvert.git

#Compile and install cmbconvert
cd ./Documents/MEGA65/cbmconvert
make -f Makefile.unix
sudo make install

#Download Xilinx 14.7 WebPACK
https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/design-tools.html

#Create an account and get a FREE Webpack License
https://www.xilinx.com/registration/sign-in.html?oamProtectedResource=wh%3Dwww.xilinx.com%20wu%3D%2Fmember%2Fforms%2Flicense-form.html%20wo%3D1%20rh%3Dhttp%3A%2F%2Fwww.xilinx.com%20ru%3D%252Fmember%252Fforms%252Flicense-form.html

# Install Xilinx 14.7
cd Xilinx_ISE_DS_14.7_1015_1.tar ~/Documents/
cd ./Documents
tar xvf Xilinx_ISE_DS_14.7_1015_1.tar
cd ./Documents/Xilinx_ISE_DS_14.7_1015_1
sudo ./xsetup
Accept multiple license agreements
Choose ISE WebPACK from Edition List
Install to default /opt/Xilinx

#Start ISE for the first time add license
./opt/Xilinx/14.7/ISE_DS/settings64.sh

#Add settings to your .bashrc so it is available every time you log in and/or start a terminal
cd ~
vi .bashrc
#Add line to the end of the file
./opt/Xilinx/14.7/ISE_DS/settings64.sh

#Compile the mega65 core
cd ~/Documents/MEGA65/mega65-core
./compile.sh
