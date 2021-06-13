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

$d = $(date +%F)
while read a b;
do
	if [[ "$a" < "$d" ]];
	then
		sed -i.bak '1d' future.txt
	fi
done < future.txt

for i in {01..30} 
do
	cp future.txt /home/sysAd_$i/schedule.txt
done
for i in {01..30} 
do
	cp future.txt /home/appDev_$i/schedule.txt
done
for i in {01..30} 
do
	cp future.txt /home/webDev_$i/schedule.txt
done
cp future.txt /home/Jay_Jay/schedule.txt
