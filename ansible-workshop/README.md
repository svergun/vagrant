Ansible Workshop
================

## Synopsis

The Vagrant file builds a simple environment for learning Ansible automation.

## Defaults

* Number of controle nodes: `1`
* Control node hostname: `control`
* Control node FQDN: `control.example.com`
* Control node IPv4: `192.0.2.100`
* Control node vCPU: `1`
* Control node vRAM: `2048`
* Number of managed nodes: `3`
* Managed node hostname: `node[1..3]`
* Managed node FQDN: `node[1..3].example.com`
* Managed node IPv4: `192.0.2.10[1..3]`
* Managed node vCPU: `1`
* Managed node vRAM: `1024`
* Default user: `vagrant`
* Default Auth Method: `SSH private key`
* Base Image: `CentOS 7`

The control machine creates an ssh key pair and copies them to the managed nodes to be able to connect using an ssh key.

## Requirements

* VirtualBox
  * Download - https://www.virtualbox.org/wiki/Downloads
  * Install - https://www.virtualbox.org/manual/UserManual.html#installation
* Vagrant
  * Download - https://www.vagrantup.com/downloads.html
  * Install - https://www.vagrantup.com/docs/installation

## Preinstalled Packages

* bind-utils
* epel-release
* git
* lsof
* mc
* net-tools
* nmap-ncat
* pip
* python3
* sshpass
* tar
* telnet
* tree
* vim
* wget
* zip

## Change Node Counts

Replace `3` by the necessary number of nodes in the following strings:

```bash
for i in {1..3}; do echo "192.0.2.10$i node$i.example.com node$i" >> /etc/hosts; done
```

```ruby
(1..3).each do |i|
```

## Usage

Run all virtual machines

```
vagrant up
```

Run specific machines

```
vagrant up control node1
```

Connect to a virtual machine

```
vagrant ssh control
```

Stop all virtual machines

```
vagrant halt
```
