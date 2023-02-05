Linux Single Node Virtual Environment
======================

This is a Vagrantfile to deploy a **CentOS based** virtual machine using a Virtualbox provider. By default will be provisioned one **CentOS 9s** virtual machine.

[Install Virtual Environment](https://github.com/svergun/vagrant/wiki/Install-Virtual-Environment)

[Vagrant Base Commands](https://github.com/svergun/vagrant/wiki/Vagrant-Base-Commands)

[Vagrant CLI Official Guide](https://developer.hashicorp.com/vagrant/docs/cli)

[Virtual Environment Extended Capabilities](https://github.com/svergun/vagrant/wiki/Vagrant-Extended-Capabilities)

# Default Configuration

* Default Node Count: `1`
* Default Distributive: `Linux CentOS 9s`
* Node Name: `node1`
* Node FQDN: `node1.example.com`
* Node IPv4: `192.0.2.101`
* Default user: `vagrant`
* Default Auth Method: `SSH private key`
* vCPU: `1`
* vRAM: `1024`

## List of Pre-installed Packages

* epel-release
* git
* bind-utils
* iftop
* lsof
* mc
* mtr
* net-tools
* nmap-ncat
* tar
* tcpdump
* telnet
* traceroute
* tree
* vim
* wget
* zip
