Linux Multi Node Virtual Environment
======================

This is a Vagrantfile to deploy a few **CentOS based** virtual machines using a Virtualbox provider. By default will be provisioned three **CentOS 9s** virtual machines. You can change the number of virtual machines and distributive version using the [virtual environment extended capabilities](https://github.com/svergun/vagrant/wiki/VE-Extended-Capabilities).

[Install Virtual Environment](https://github.com/svergun/vagrant/wiki/Install-Virtual-Environment)

[Vagrant Base Commands](https://github.com/svergun/vagrant/wiki/Vagrant-Base-Commands)

[Vagrant CLI Official Guide](https://developer.hashicorp.com/vagrant/docs/cli)

[Virtual Environment Extended Capabilities](https://github.com/svergun/vagrant/wiki/VE-Extended-Capabilities)

# Default Configuration

* Default Node Count: `3`
* Default Distributive: `Linux CentOS 9s`
* Node Name: `node[1..3]`
* Node FQDN: `node[1..3].example.com`
* Node IPv4: `192.0.2.10[1..3]`
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
