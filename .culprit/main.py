from os import system
from os import chdir
print("\033[1;33m   ________________________________________________________________________  ")
print("\033[1;33m  |    __                   __   _   __________  _                         | ")
print("\033[1;33m  |    \ \                 / /  | | |  ________|| |                        | ")
print("\033[1;33m  |     \ \      ___      / /   | | | |____     | |                        | ")
print("\033[1;33m  |      \ \    / _ \    / /    | | |  ____|    | |                        | ")
print("\033[1;33m  |       \ \  / / \ \  / /     | | | |         | |                        | ")
print("\033[1;33m  |        \ \/ /   \ \/ /      | | | |         | |                        | ")
print("\033[1;33m  |         \  /     \  /       | | | |         | |                        | ")
print("\033[1;33m  |          \/       \/        |_| |_|         |_|                        | ")
print("\033[1;33m  |                                                                        | ")
print("\033[1;33m  |   _________  _     _   _       _______   ________     _   _________    | ")
print("\033[1;33m  |  /  ______/ / \   / \ / \      |  ___  \ |  ____ \   | | |___   ___|   | ")
print("\033[1;33m  |  | |        | |   | | | |      | |___| | | |____| |  | |     | |       | ")
print("\033[1;33m  |  | |        | |   | | | |      |  _____/ |  __   /   | |     | |       | ")
print("\033[1;33m  |  | |        | |   | | | |      | |       | |  \ \    | |     | |       | ")
print("\033[1;33m  |  | |        | |   | | | |      | |       | |   \ \   | |     | |       | ")
print("\033[1;33m  |  | |_______ | |___| | | |_____ | |       | |    \ \  | |     | |       | ")
print("\033[1;33m  |  \________/ |_______| |______/ \_/       \_/     \_\ |_|     |_|       | ")
print("\033[1;33m  |________________________________________________________________________|                                                                                 ")
ch = 'Y'
if ch == 'Y':
    chdir('/usr/.culprit')
    system('./nmap.sh')
    ch = input('Enter do you want to continue(Y/n):\t')
