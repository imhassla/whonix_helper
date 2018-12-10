#!/usr/bin/env bash
echo -n > /etc/network/interfaces
echo -n > /etc/resolv.conf
rm -rf /etc/NetworkManager/system-connections
service network-manager restart