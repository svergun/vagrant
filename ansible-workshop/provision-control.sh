#!/bin/sh

# Generate SSH key pair
ssh-keygen -b 2048 -t rsa -f /home/vagrant/.ssh/id_rsa -q -N ""

# Configure SSH for managed nodes
printf "Host node*\n  StrictHostKeyChecking no\n  UserKnownHostsFile /dev/null\n  User vagrant\n" > .ssh/config
chmod 600 .ssh/config

# Copy SSH public key to managed nodes
i=1
while [ $i -le $n ]; do
  sshpass -p 'vagrant' ssh-copy-id -i /home/vagrant/.ssh/id_rsa.pub vagrant@node$i
  i=`expr $i + 1`
done

# Install python pip
curl -s https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip.py --user
