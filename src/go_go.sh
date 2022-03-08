#!/usr/bin/env bash
clear
trap "echo oh;exit" SIGTERM SIGINT

# echo -e "nameserver 103.86.96.100\nnameserver 103.86.99.100" >  /etc/resolv.conf
echo "nameserver 8.8.8.8" >  /etc/resolv.conf
echo "nameserver 8.8.4.4" >>  /etc/resolv.conf

cd /root/SDA_ALL/
rm -rf site_5
git reset --hard
git pull
cd /root/SDA_ALL/MOP/
chmod +x *
pwd
while true
do
	dbus-uuidgen > /var/lib/dbus/machine-id
	echo "NEW ..............."
	cd /root/SDA_ALL/MOP/
	# timeout 5m python3 48_ads.py
	python3 chom.py
done
