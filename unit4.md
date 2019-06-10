
#Create ifconfig in both virtual machines

#1st VM
sudo ifconfig enp0s8 10.1.1.1 netmask 255.255.255.0

#2nd VM
sudo ifconfig enp0s8 10.1.1.2 netmask 255.255.255.0

#Install ssh
sudo apt-get install openssh-server

#enable ufw
sudo enable ufw

#Check to see ssh is working
sudo systemctl status ssh.service

#ping from 1st VM to 2nd to check if its working
ping 10.1.1.2

#block specific ip address
sudo iptables -A INPUT -s 10.1.1.2 -j DROP

#revoke and allow ip address
iptables -D INPUT -s 10.1.1.2 -j DROP 

#ssh from first VM 1 to the secound
ssh 10.1.1.2

