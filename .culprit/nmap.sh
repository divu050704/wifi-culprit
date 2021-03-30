#! /bin/bash
echo -e "\033[1;33m   ________________________________________________________________________  " 
echo -e "\033[1;33m  |    __                   __   _   __________  _                         | "
echo -e "\033[1;33m  |    \ \                 / /  | | |  ________|| |                        | "
echo -e "\033[1;33m  |     \ \      ___      / /   | | | |____     | |                        | "
echo -e "\033[1;33m  |      \ \    / _ \    / /    | | |  ____|    | |                        | "
echo -e "\033[1;33m  |       \ \  / / \ \  / /     | | | |         | |                        | "
echo -e "\033[1;33m  |        \ \/ /   \ \/ /      | | | |         | |                        | "
echo -e "\033[1;33m  |         \  /     \  /       | | | |         | |                        | "
echo -e "\033[1;33m  |          \/       \/        |_| |_|         |_|                        | "
echo -e "\033[1;33m  |                                                                        | "
echo -e "\033[1;33m  |   _________  _     _   _       _______   ________     _   _________    | "
echo -e "\033[1;33m  |  /  ______/ / \   / \ / \      |  ___  \ |  ____ \   | | |___   ___|   | "
echo -e "\033[1;33m  |  | |        | |   | | | |      | |___| | | |____| |  | |     | |       | "
echo -e "\033[1;33m  |  | |        | |   | | | |      |  _____/ |  __   /   | |     | |       | "
echo -e "\033[1;33m  |  | |        | |   | | | |      | |       | |  \ \    | |     | |       | "
echo -e "\033[1;33m  |  | |        | |   | | | |      | |       | |   \ \   | |     | |       | "
echo -e "\033[1;33m  |  | |_______ | |___| | | |_____ | |       | |    \ \  | |     | |       | " 
echo -e "\033[1;33m  |  \________/ |_______| |______/ \_/       \_/     \_\ |_|     |_|       | "
echo -e "\033[1;33m  |________________________________________________________________________|                                                                                 "
echo -e "\033[1;33m                                                                                   \033[0m"
echo -e "\033[1;36m"
ip=$(hostname -I)
nip=$(echo "$ip" | xargs)
cla=$(ip a | grep $nip)
read string1 string2 string3 <<< "$cla"
folder=/usr/share/nmap
if [ -d $folder ]
then 
    c=$(sudo nmap -sn $string2 | grep MAC | cut -c14-21) 
    len=$(echo $c | wc -w)
    echo -e "\033[3;31m\t\t\t$len devices connected(Including router)\033[0m"
    if [[ $len == 1 ]]
    then
        c1="$(echo $c | awk '{print $(1)}')"
        g1=$(grep $c1 manuf.txt)
        echo -e "\033[0;32m$g1\033[0m"
    fi
    if [[ $len == 2 ]]
    then 
        c1="$(echo $c | awk '{print $(1)}')"
        c2="$(echo $c | awk '{print $(2)}')"
        g1=$(grep $c1 manuf.txt)
        g2=$(grep $c2 manuf.txt)
        echo -e "\033[0;32m$g1\033[0m"
        echo -e "\033[0;34m$g2\033[0m"
    fi
    if [[ $len == 3 ]]
    then
        c1="$(echo $c | awk '{print $(1)}')"
        c2="$(echo $c | awk '{print $(2)}')"
        c3="$(echo $c | awk '{print $(3)}')"
        g1=$(grep $c1 manuf.txt)
        g2=$(grep $c2 manuf.txt)
        g3=$(grep $c3 manuf.txt)
        echo -e "\033[0;32m$g1\033[0m"
        echo -e "\033[0;34m$g2\033[0m"
        echo -e "\033[0;32m$g3\033[0m"
    fi
    if [[ $len == 4 ]]
    then 
        c1="$(echo $c | awk '{print $(1)}')"
        c2="$(echo $c | awk '{print $(2)}')"
        c3="$(echo $c | awk '{print $(3)}')"
        c4="$(echo $c | awk '{print $(4)}')"
        g1=$(grep $c1 manuf.txt)
        g2=$(grep $c2 manuf.txt)
        g3=$(grep $c3 manuf.txt)
        g4=$(grep $c4 manuf.txt)
        echo -e "\033[0;32m$g1\033[0m"
        echo -e "\033[0;34m$g2\033[0m"
        echo -e "\033[0;32m$g3\033[0m"
        echo -e "\033[0;34m$g4\033[0m"        
    fi
    if [[ $len == 5 ]]
    then 
        c1="$(echo $c | awk '{print $(1)}')"
        c2="$(echo $c | awk '{print $(2)}')"
        c3="$(echo $c | awk '{print $(3)}')"
        c4="$(echo $c | awk '{print $(4)}')"
        c5="$(echo $c | awk '{print $(5)}')"
        echo -e "\033[0;32m$g1\033[0m"
        echo -e "\033[0;34m$g2\033[0m"
        echo -e "\033[0;32m$g3\033[0m"
        echo -e "\033[0;34m$g4\033[0m"
        echo -e "\033[0;32m$g5\033[0m"
    fi
    if [[ $len == 6 ]]
    then 
        c1="$(echo $c | awk '{print $(1)}')"
        c2="$(echo $c | awk '{print $(2)}')"
        c3="$(echo $c | awk '{print $(3)}')"
        c4="$(echo $c | awk '{print $(4)}')"
        c5="$(echo $c | awk '{print $(5)}')"
        c6="$(echo $c | awk '{print $(6)}')"
        echo -e "\033[0;32m$g1\033[0m"
        echo -e "\033[0;34m$g2\033[0m"
        echo -e "\033[0;32m$g3\033[0m"
        echo -e "\033[0;34m$g4\033[0m"
        echo -e "\033[0;32m$g5\034[0m"
    fi
    if [[ $len == 7 ]]
    then 
        c1="$(echo $c | awk '{print $(1)}')"
        c2="$(echo $c | awk '{print $(2)}')"
        c3="$(echo $c | awk '{print $(3)}')"
        c4="$(echo $c | awk '{print $(4)}')"
        c5="$(echo $c | awk '{print $(5)}')"
        c6="$(echo $c | awk '{print $(6)}')"
        c7="$(echo $c | awk '{print $(7)}')"
        echo -e "\033[0;32m$g1\033[0m"
        echo -e "\033[0;34m$g2\033[0m"
        echo -e "\033[0;32m$g3\033[0m"
        echo -e "\033[0;34m$g4\033[0m"
        echo -e "\033[0;32m$g5\034[0m"
        echo -e "\033[0;34m$g6\034[0m"
        echo -e "\033[0;34m$g7\034[0m"
    fi
    if [[ $len == 8 ]]
    then 
        c1="$(echo $c | awk '{print $(1)}')"
        c2="$(echo $c | awk '{print $(2)}')"
        c3="$(echo $c | awk '{print $(3)}')"
        c4="$(echo $c | awk '{print $(4)}')"
        c5="$(echo $c | awk '{print $(5)}')"
        c6="$(echo $c | awk '{print $(6)}')"
        c7="$(echo $c | awk '{print $(7)}')"
        c8="$(echo $c | awk '{print $(8)}')"
        echo -e "\033[0;32m$gc1\033[0m"
        echo -e "\033[0;34m$g2\033[0m"
        echo -e "\033[0;32m$g3\033[0m"
        echo -e "\033[0;34m$g4\033[0m"
        echo -e "\033[0;32m$g5\034[0m"
        echo -e "\033[0;34m$g6\034[0m"
        echo -e "\033[0;32m$g7\034[0m"
        echo -e "\033[0;34m$g8\034[0m"
    fi
    if [[ $len == 9 ]]
    then 
        c1="$(echo $c | awk '{print $(1)}')"
        c2="$(echo $c | awk '{print $(2)}')"
        c3="$(echo $c | awk '{print $(3)}')"
        c4="$(echo $c | awk '{print $(4)}')"
        c5="$(echo $c | awk '{print $(5)}')"
        c6="$(echo $c | awk '{print $(6)}')"
        c7="$(echo $c | awk '{print $(7)}')"
        c8="$(echo $c | awk '{print $(8)}')"
        c9="$(echo $c | awk '{print $(9)}')"
        echo -e "\033[0;32m$g1\033[0m"
        echo -e "\033[0;34m$g2\033[0m"
        echo -e "\033[0;32m$g3\033[0m"
        echo -e "\033[0;34m$g4\033[0m"
        echo -e "\033[0;32m$g5\034[0m"
        echo -e "\033[0;34m$g7\034[0m"
        echo -e "\033[0;32m$g8\034[0m"
        echo -e "\033[0;34m$g9\034[0m"
    fi
    if [[ $len == 10 ]]
    then 
        c1="$(echo $c | awk '{print $(1)}')"
        c2="$(echo $c | awk '{print $(2)}')"
        c3="$(echo $c | awk '{print $(3)}')"
        c4="$(echo $c | awk '{print $(4)}')"
        c5="$(echo $c | awk '{print $(5)}')"
        c6="$(echo $c | awk '{print $(6)}')"
        c7="$(echo $c | awk '{print $(7)}')"
        c8="$(echo $c | awk '{print &(8)}')"
        c9="$(echo $c | awk '{print &(9)}')"
        c10="$(echo $c | awk '{print &(10)}')"
        echo -e "\033[0;32m$g1\033[0m"
        echo -e "\033[0;34m$g2\033[0m"
        echo -e "\033[0;32m$g3\033[0m"
        echo -e "\033[0;34m$g4\033[0m"
        echo -e "\033[0;32m$g5\034[0m"
        echo -e "\033[0;32m$g6\034[0m"
        echo -e "\033[0;32m$g7\034[0m"
        echo -e "\033[0;32m$g8\034[0m"
        echo -e "\033[0;32m$g9\034[0m"
        echo -e "\033[0;32m$g10\034[0m"
    fi
    if [[ $len == 11 ]]
    then 
        c1="$(echo $c | awk '{print $(1)}')"
        c2="$(echo $c | awk '{print $(2)}')"
        c3="$(echo $c | awk '{print $(3)}')"
        c4="$(echo $c | awk '{print $(4)}')"
        c5="$(echo $c | awk '{print $(5)}')"
        c6="$(echo $c | awk '{print $(6)}')"
        c7="$(echo $c | awk '{print $(7)}')"
        c8="$(echo $c | awk '{print &(8)}')"
        c9="$(echo $c | awk '{print &(9)}')"
        c10="$(echo $c | awk '{print &(10)}')"
        c11="$(echo $c | awk '{print &(11)}')"
        echo -e "\033[0;32m$g1\033[0m"
        echo -e "\033[0;34m$g2\033[0m"
        echo -e "\033[0;32m$g3\033[0m"
        echo -e "\033[0;34m$g4\033[0m"
        echo -e "\033[0;32m$g5\034[0m"
        echo -e "\033[0;32m$g6\034[0m"
        echo -e "\033[0;32m$g7\034[0m"
        echo -e "\033[0;32m$g8\034[0m"
        echo -e "\033[0;32m$g9\034[0m"
        echo -e "\033[0;32m$g10\034[0m"
        echo -e "\033[0;32m$g11\034[0m"
    fi
    if [[ $len == 12 ]]
    then 
        c1="$(echo $c | awk '{print $(1)}')"
        c2="$(echo $c | awk '{print $(2)}')"
        c3="$(echo $c | awk '{print $(3)}')"
        c4="$(echo $c | awk '{print $(4)}')"
        c5="$(echo $c | awk '{print $(5)}')"
        c6="$(echo $c | awk '{print $(6)}')"
        c7="$(echo $c | awk '{print $(7)}')"
        c8="$(echo $c | awk '{print &(8)}')"
        c9="$(echo $c | awk '{print &(9)}')"
        c10="$(echo $c | awk '{print &(10)}')"
        c11="$(echo $c | awk '{print &(11)}')"
        c12="$(echo $c | awk '{print &(12)}')"
        echo -e "\033[0;32m$g1\033[0m"
        echo -e "\033[0;34m$g2\033[0m"
        echo -e "\033[0;32m$g3\033[0m"
        echo -e "\033[0;34m$g4\033[0m"
        echo -e "\033[0;32m$g5\034[0m"
        echo -e "\033[0;32m$g6\034[0m"
        echo -e "\033[0;32m$g7\034[0m"
        echo -e "\033[0;32m$g8\034[0m"
        echo -e "\033[0;32m$g9\034[0m"
        echo -e "\033[0;32m$g10\034[0m"
        echo -e "\033[0;32m$g11\034[0m"
        echo -e "\033[0;32m$g12\034[0m"
    fi
else 
    sudo apt install nmap 
    sudo nmap -sn $string2
fi