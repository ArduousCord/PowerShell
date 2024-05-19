
#Windows Commandline Essentials

ciper /E  #encrypt every file in the current folder

attrib +h +s +r foldername #hide folder

ipconfig /all #network information

ipconfig /release #get new ipaddress from dhcp server
ipconfig /renew #get new ipaddress from dhcp server

getmac /v #get mac address  

netsh wlan show profile #every wifi profile the device has ever connected to

netsh wlan show profile wifinetwork key=clear | findstr"Key Content" #show 'wifinetwork' password

systeminfo #displays system information

powercfg /energy

powercfg /batteryreport

curl qrenco.de/https://... #create a qr code from a url

curl dict.org/d:word #look up the meaning of a word

del /q/f/s %temp%\* #delete all temporary files, first command
del /s/q C:\Windows\temp\* #delete all temporary files, second command

shutdown /r /fw /f /t 0 #restart into BIOS

help #manual


