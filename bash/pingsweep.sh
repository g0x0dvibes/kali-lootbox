#!/bin/bash
for i in {1..254} ;do
(ping -w 3 -c 1 10.11.1.$i | grep "bytes from" &);
done
