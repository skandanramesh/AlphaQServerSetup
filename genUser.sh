#! /usr/bin/bash

groupadd secondyears
groupadd thirdyears
groupadd fourthyears
for i in {01..30} 
do
	if [ "$i" -lt 11 ]
	then
		useradd -m -g secondyearsysAds sysAd_$i
	elif [ "$i" -lt 21 ]
	then
		useradd -m -g thirdyearsysAds syasAd_$i
	else
		useradd -m -g fourthyearsysAds sysAd_$i
	fi
	echo password$i | passwd --stdin user$i
done
for i in {01..30} 
do
	if [ "$i" -lt 11 ]
	then
		useradd -m -g secondyearappDevs appDev_$i
	elif [ "$i" -lt 21 ]
	then
		useradd -m -g thirdyearappDevs appDev_$i
	else
		useradd -m -g fourthyearappDevs appDev_$i
	fi
	echo password$i | passwd --stdin user$i
done
for i in {01..30} 
do
	if [ "$i" -lt 11 ]
	then
		useradd -m -g secondyearwebDevs webDev_$i
	elif [ "$i" -lt 21 ]
	then
		useradd -m -g thirdyearwebDevs webDev_$i
	else
		useradd -m -g fourthyearwebDevs webDev_$i
	fi
	echo password$i | passwd --stdin user$i
done
useradd -m Jay_Jay
echo password | passwd --stdin user$i

