#!/bin/sh

# Configure /etc/hosts
echo "CONFIGURE /etc/hosts ..."
grep -xF "192.0.2.101 node1.example.com node1" /etc/hosts || echo "192.0.2.101 node1.example.com node1" >> /etc/hosts


# Install packages
echo "INSTALL PACKAGES ..."
PACKAGE_LIST="git lsof mc net-tools tar telnet tree vim wget zip"

if [ -x "$(command -v apt-get)" ]; then
    echo "--> Add universe repository"
    add-apt-repository -y universe
    echo "--> Install packages"
    apt-get install -y -q openjdk-11-jdk nmap $PACKAGE_LIST
  elif [ -x "$(command -v dnf)" ]; then
    echo "--> Install EPEL Release"
    dnf install -y -q epel-release
    echo "--> Install packages"
    dnf install -y -q bind-utils java-11-openjdk nmap-ncat $PACKAGE_LIST
  elif [ -x "$(command -v yum)" ]; then
    echo "--> Install EPEL Release"
    yum install -y -q epel-release
    echo "--> Install packages"
    yum install -y -q bind-utils java-11-openjdk nmap-ncat $PACKAGE_LIST
  else echo "FAILED TO INSTALL PACKAGE: Package manager not found. You must manually install: $PACKAGE_LIST">&2
fi


# Zookeeper provision
echo "PROVISION ZOOKEEPER ..."
WORK_DIR="/opt"
ZK_HOME="$WORK_DIR/zookeeper"

cd $WORK_DIR
wget -q https://archive.apache.org/dist/zookeeper/zookeeper-$ZK_VERSION/apache-zookeeper-$ZK_VERSION-bin.tar.gz
tar -zxf apache-zookeeper-$ZK_VERSION-bin.tar.gz
mv apache-zookeeper-$ZK_VERSION-bin zookeeper
mv $ZK_HOME/conf/zoo_sample.cfg $ZK_HOME/conf/zoo.cfg
sed -i "s|dataDir=.*|dataDir=$ZK_HOME/data|g" $ZK_HOME/conf/zoo.cfg

echo "CRETAE ZOOKEEPER SERVICE ..."
tee /etc/systemd/system/zookeeper.service << EOT
[Unit]
Description=Zookeeper Server
Documentation=https://zookeeper.apache.org/doc
Requires=network.target
After=network.target

[Service]
Type=forking
Environment="JMXPORT=9900"
Environment="LOG_DIR=/var/log/zookeeper"
WorkingDirectory=/opt/zookeeper
ExecStart=/opt/zookeeper/bin/zkServer.sh start
ExecStop=/opt/zookeeper/bin/zkServer.sh stop
ExecReload=/opt/zookeeper/bin/zkServer.sh restart
Restart=on-failure

[Install]
WantedBy=multi-user.target
EOT

systemctl daemon-reload
systemctl start zookeeper.service
