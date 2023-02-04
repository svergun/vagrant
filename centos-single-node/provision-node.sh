#!/bin/sh


# Configure /etc/hosts
echo "CONFIGURE /etc/hosts ..."
grep -xF "192.0.2.101 node1.example.com node1" /etc/hosts || echo "192.0.2.101 node1.example.com node1" >> /etc/hosts

# Install packages
echo "--> Install EPEL Release"
yum install -y -q epel-release

echo "INSTALL PACKAGES ..."
PACKAGE_LIST="epel-release git bind-utils iftop lsof mc mtr net-tools nmap-ncat tar tcpdump telnet traceroute tree vim wget zip"
yum install -y -q $PACKAGE_LIST

# Configure SSH Daemon
sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config && systemctl restart sshd



