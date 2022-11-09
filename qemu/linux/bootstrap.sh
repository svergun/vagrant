#!/bin/sh

# Configure /etc/hosts
echo "CONFIGURE /etc/hosts ..."
i=1
while [ $i -le $VNC ]; do
  grep -xF "192.0.2.10$i $VNN$i.example.com $VNN$i" /etc/hosts || echo "192.0.2.10$i $VNN$i.example.com $VNN$i" >> /etc/hosts
  # grep -xF "192.0.2.10$i node$i.example.com node$i" /etc/hosts || echo "192.0.2.10$i node$i.example.com node$i" >> /etc/hosts
  i=`expr $i + 1`
done

# Install packages
echo "INSTALL PACKAGES ..."
PACKAGE_LIST="git lsof mc net-tools python3 tar telnet tree vim wget zip"

if [ -x "$(command -v apt-get)" ]
  then
    echo "--> Add universe repository"
    add-apt-repository -y universe
    echo "--> Install packages"
    apt-get install -y -q nmap $PACKAGE_LIST
  elif [ -x "$(command -v dnf)" ]; then
    echo "--> Install EPEL Release"
    dnf install -y -q epel-release
    echo "--> Install packages"
    dnf install -y -q bind-utils nmap-ncat $PACKAGE_LIST
  elif [ -x "$(command -v yum)" ]; then
    echo "--> Install EPEL Release"
    yum install -y -q epel-release
    echo "--> Install packages"
    yum install -y -q bind-utils nmap-ncat $PACKAGE_LIST
  else echo "FAILED TO INSTALL PACKAGE: Package manager not found. You must manually install: $PACKAGE_LIST">&2
fi


# Configure SSH Daemon
sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config && systemctl restart sshd
