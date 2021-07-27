#! /usr/bin/bash
	
for i in {01..30} 
do
	touch /home/sysAd_$i/schedule.txt
done
for i in {01..30} 
do
	touch /home/appDev_$i/schedule.txt
done
for i in {01..30} 
do
	touch /home/webDev_$i/schedule.txt
done
touch /home/Jay_Jay/schedule.txt

d=$(date -I)
while read a b;
do
	if [[ "$a" == "$d" ]]
	then
        for i in {01..30}
            do
		        echo "$a $b" > /home/sysAd_$i/schedule.txt
            done
        for i in {01..30}
            do
		        echo "$a $b" > /home/appDev_$i/schedule.txt
            done
        for i in {01..30}
            do
		        echo "$a $b" > /home/webDev_$i/schedule.txt
            done
        echo "$a $b" > /home/Jay_Jay/schedule.txt
	fi
done < future.txt
