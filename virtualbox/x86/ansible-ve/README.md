Ansible Workshop
================

This is a Vagrant file to run an Ansible virtual environment. By default, it consists of one control node and two managed nodes. The virtual machines provisioning on **CentOS 9s** by default. You can change the number of managed nodes and distributive version using the [virtual environment extended capabilities](https://github.com/svergun/vagrant/wiki/VE-Extended-Capabilities).

[Install Virtual Environment](https://github.com/svergun/vagrant/wiki/Install-Virtual-Environment)

[Vagrant Base Commands](https://github.com/svergun/vagrant/wiki/Vagrant-Base-Commands)

[Vagrant CLI Official Guide](https://developer.hashicorp.com/vagrant/docs/cli)

[Virtual Environment Extended Capabilities](https://github.com/svergun/vagrant/wiki/VE-Extended-Capabilities)

## Default Configuration

* Number of controle nodes: `1`
* Control node hostname: `control`
* Control node FQDN: `control.example.com`
* Control node IPv4: `192.0.2.100`
* Control node vCPU: `1`
* Control node vRAM: `2048`
* Number of managed nodes: `2`
* Managed node hostname: `node[1..2]`
* Managed node FQDN: `node[1..2].example.com`
* Managed node IPv4: `192.0.2.10[1..2]`
* Managed node vCPU: `1`
* Managed node vRAM: `1024`
* Default user: `vagrant`
* Default Auth Method: `SSH private key`
* Base Image: `CentOS 9s`

The control machine creates an ssh key pair and copies a public key to the managed nodes to be able to connect using an ssh key.

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

Ansible Dynamic Inventory
=========================

Use `inventory/vagrant_inventory.py` script to build the Ansible dynamic inventory of your Vagrant environment.
