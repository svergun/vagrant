#!/bin/sh


# Configure /etc/hosts
echo "CONFIGURE /etc/hosts ..."
i=1
while [ $i -le $n ]; do
  grep -xF "192.0.2.10$i node$i.example.com node$i" /etc/hosts || echo "192.0.2.10$i node$i.example.com node$i" >> /etc/hosts
  i=`expr $i + 1`
done

# Install packages
echo "INSTALL PACKAGES ..."
PACKAGE_LIST="git lsof mc net-tools tar telnet tree vim wget zip"

# Install packages
echo "--> Install EPEL Release"
yum install -y -q epel-release

echo "INSTALL PACKAGES ..."
PACKAGE_LIST="git bind-utils iftop lsof mc mtr net-tools nmap-ncat tar tcpdump telnet traceroute tree vim wget zip"
yum install -y -q $PACKAGE_LIST

# Configure SSH Daemon
sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config && systemctl restart sshd
