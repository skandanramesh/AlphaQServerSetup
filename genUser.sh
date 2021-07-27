#! /usr/bin/bash

sudo groupadd secondyearsysAds
sudo groupadd thirdyearsysAds
sudo groupadd fourthyearsysAds
sudo groupadd secondyearwebDevs
sudo groupadd thirdyearwebDevs
sudo groupadd fourthyearwebDevs
sudo groupadd secondyearappDevs
sudo groupadd thirdyearappDevs
sudo groupadd fourthyearappDevs
for i in {01..30} 
do
	if [ "$i" -lt 11 ]
	then
		sudo useradd -m -g secondyearsysAds sysAd_$i
	elif [ "$i" -lt 21 ]
	then
		sudo useradd -m -g thirdyearsysAds sysAd_$i
	else
		sudo useradd -m -g fourthyearsysAds sysAd_$i
	fi
	echo sysAd_$i:password$i | sudo chpasswd
done
for i in {01..30} 
do
	if [ "$i" -lt 11 ]
	then
		sudo useradd -m -g secondyearappDevs appDev_$i
	elif [ "$i" -lt 21 ]
	then
		sudo useradd -m -g thirdyearappDevs appDev_$i
	else
		sudo useradd -m -g fourthyearappDevs appDev_$i
	fi
	echo appDev_$i:password$i | sudo chpasswd
done
for i in {01..30} 
do
	if [ "$i" -lt 11 ]
	then
		sudo useradd -m -g secondyearwebDevs webDev_$i
	elif [ "$i" -lt 21 ]
	then
		sudo useradd -m -g thirdyearwebDevs webDev_$i
	else
		sudo useradd -m -g fourthyearwebDevs webDev_$i
	fi
	echo webDev_$i:password$i | sudo chpasswd
done
sudo useradd -m Jay_Jay
echo Jay_Jay:password | sudo chpasswd
