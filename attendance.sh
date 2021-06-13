#! /usr/bin/bash

f = 0; str = "2019-09-27";
d1 = "$1";
d2 = "$2"; 

if [ $# -eq 0 ]; then
    d1 = "2019-09-27";
    $2d = $(date +%F);
fi

for i in {01..30}
do
awk -F '[-,]' 
	'{ if("$2" < "$d2" && "$2" > "$d1")
		if("str != "$2" && f=0) 
			{print $1" "$2; f=0;}
		str = "$2"; 
		if("$1" == "sysAd_$i") 
			f=1;
	}'
attendance.log

for i in {01..30}
do
awk -F '[-,]' 
	'{ if("$2" < "$d2" && "$2" > "$d1")
		if("str != "$2" && f=0) 
			print $1" "$2; f=0;
		str = "$2"; 
		if("$1" == "webDev_$i") 
			f=1;
	}'
attendance.log

for i in {01..30}
do
awk -F '[-,]' 
	'{ if("$2" < "$d2" && "$2" > "$d1")
		if("str != "$2" && f=0) 
			print $1" "$2; f=0;
		str = "$2"; 
		if("$1" == "appDev_$i") 
			f=1;
	}'
attendance.log
done

