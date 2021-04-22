#!/bin/bash
ip=$(hostname -I)
nip=$(echo "$ip" | xargs)
cla=$(ip a | grep $nip)
read string1 string2 string3 <<< "$cla"
folder=/usr/share/nmap
if [ -d $folder ]
then
sudo bash -c "echo '$(sudo nmap -sn $string2 | grep MAC | cut -c14-21)' >> new.txt && python3 nmap.py && rm new.txt"
else
sudo apt install nmap
sudo bash -c "echo '$(sudo nmap -sn $string2 | grep MAC | cut -c14-21)' >> new.txt && python3 nmap.py && rm new.txt"
fi

