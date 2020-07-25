#!/usr/bin/python
import socket
import sys
import time

if len(sys.argv) != 2:
     print "Usage: smtp_enum.py file.txt"
     sys.exit(0)

# Open file
#f = open(, "r")

# Create a Socket
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

print "Connecting to SMTP server..."
# Connect to the Server
connect = s.connect(('10.11.1.217',25))

print "Receiving banner..."
# Receive the banner
banner = s.recv(4096)

print banner

with open(sys.argv[1]) as fp:
     line = fp.readline()
     while line:
        print "Trying " + line
        s.send('VRFY ' + line + '\r\n')
        result = s.recv(4096)
        time.sleep(7)

print result
# Close the file and socket
fp.close()
s.close()
