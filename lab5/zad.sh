#!/bin/sh

echo "zad5a\n"

ps aux | awk {'print "User " $1 " proc " $11 " ( CPU " $3 ", MEM " $4 " )"'}

echo "\nzad5b\n"

ps aux | awk {'print "User " $1 " proc " parts[split($11, parts, "/")] " ( CPU " $3 ", MEM " $4 " )"'}

echo "\nzad5c\n"

ps aux | awk '{cpu += $3; mem += $4 } END {print "CPU = " cpu, "\nMEM = " mem}'

echo "\nzad5d\n"

ps aux | awk '{cpu[$1] += $3; mem[$1] += $4 } END {for (i in cpu) print "User " i, "\nCPU = " cpu[i], "\nMEM = " mem[i]}'

echo "\nzad5e\n"

ps aux | awk '{if($3 > maxC) {maxC= $3; usrC = $1} if($4 > maxM) {maxM= $4; usrM = $1}} END {print "User " usrC, "CPU = " maxC "\nUser " usrM " MEM = " maxM}'




