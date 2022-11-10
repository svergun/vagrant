#!/bin/sh

# Get Default Gateway
IP_GW=$(/sbin/ip route | awk '/default/ { print $3 }')

# Generate SSH key pair
ssh-keygen -b 2048 -t rsa -f /home/vagrant/.ssh/id_rsa -q -N ""
# Configure SSH for managed nodes
printf "Host node*\n  HostName $IP_GW\n  User vagrant\n  StrictHostKeyChecking no\n  UserKnownHostsFile /dev/null\n\n" > .ssh/config
chmod 600 .ssh/config
i=1
while [ $i -le $VNC ]; do
  printf "Host node$i\n  Port 2202$i\n\n" >> .ssh/config
  { sleep 5; echo vagrant; } | script -q /dev/null -c "ssh-copy-id -f -i /home/vagrant/.ssh/id_rsa.pub node$i"
  i=`expr $i + 1`
done

# Install python pip
curl -s https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip.py --user
