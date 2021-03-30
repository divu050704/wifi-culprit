import os 
ch = 'Y'
while ch =='Y':
	os.chdir('/usr/.culprit')
	os.system('./nmap.sh')
	ch = input('\033[0;31m\nDo you want to continue(Y/n):\t\033[34m')
					