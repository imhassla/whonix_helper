#!/usr/bin/env bash
echo -n > /etc/network/interfaces
echo -n > /etc/resolv.conf
echo -n > /etc/apt/sources.list
{
  echo 'deb http://http.kali.org/kali kali-rolling main non-free contrib'
  echo 'deb-src http://http.kali.org/kali kali-rolling main non-free contrib'
} > /etc/apt/sources.list
ln -fs /usr/share/zoneinfo/Etc/UTC /etc/localtime
echo UTC0 > /etc/localtime
echo “net.ipv4.tcp_timestamps = 0” > /etc/sysctl.d/tcp_timestamps.conf
service network-manager stop
{
  echo 'auto eth0'
  echo 'iface eth0 inet static'
  echo 'address 10.152.152.11'
  echo 'netmask 255.255.192.0'
  echo 'gateway 10.152.152.10'
} > /etc/network/interfaces
echo 'nameserver 10.152.152.10' > /etc/resolv.conf
sudo ifdown eth0
sudo ifup eth0
apt update
apt dist-upgrade