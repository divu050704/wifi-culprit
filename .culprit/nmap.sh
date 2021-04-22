#!/bin/bash
sudo bash -c 'echo $(sudo nmap -sn 192.168.1.7/24 | grep MAC | cut -c14-21) >> new.txt && python3 nmap.py && rm new.txt'
