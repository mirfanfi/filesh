#!/bin/bash
rolipreprodip="10.38.36.213
10.54.58.213
10.54.8.132
10.2.224.148
10.42.97.5
10.42.97.51
10.42.97.139
10.37.188.10
10.54.181.50
10.54.181.81
10.54.181.150
10.52.108.10
10.49.128.215"



rolipreprodport="443
443
28118
28118
8686
8686
8686
8686
8686
8686
8686
8686
3318"



int1=0
int2=0

for ip in $rolipreprodip
 do
         int1=$(( $int1+1 ))
         for port in $rolipreprodport
         do
                 int2=$(( $int2+1 ))
                 if [ $int1 -eq $int2 ]
                 then
                        nmap -Pn --traceroute -n -p $port $ip
                 fi
         done
         int2=0
 done


