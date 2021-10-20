Ansible Workshop
================

## Synopsis

The Vagrant file builds a learning Ansible environment. By default it consists of one control node and two managed nodes. The virtual machines provisioning on **CentOS 8** by default.

## Defaults

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
* Base Image: `CentOS 8`

The control machine creates an ssh key pair and copies a public key to the managed nodes to be able to connect using an ssh key.

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

To find more options use `vagrant help`

Extended capabilities
=====================

You may change the number of virtual machines and distributive using environment variables `VAGRANT_NODE_COUNT` and `VAGRANT_NODE_DISTR`.

Supported distributives:
  * Red Hat based: _Red Hat Entreprise Linux, CentOS, Oracle Linux, Fedora_
  * Debian based: _Debian, Ununtu_

You can discover Vagrant boxes on [Vagrant Cloud](https://app.vagrantup.com/boxes/search)

Example how to discover the official CentOS or Ubuntu distribitives using Vagrant CLI

```bash
vagrant cloud search --provider virtualbox --limit 100 --short centos | grep "centos/[0-9]"
centos/7
centos/8
```

```bash
vagrant cloud search --provider virtualbox --limit 100 --short ubuntu | grep "^ubuntu/.*"
ubuntu/trusty64
ubuntu/xenial64
ubuntu/trusty32
ubuntu/bionic64
ubuntu/focal64
ubuntu/xenial32
```

To change the provisioning distributive use `VAGRANT_NODE_DISTR`

```bash
export VAGRANT_NODE_DISTR="centos/7"
vagrant up
```

To change the number of provisioned virtual machines use `VAGRANT_NODE_COUNT`

```bash
export VAGRANT_NODE_COUNT=5
vagrant up
```

Reset `VAGRANT_NODE_COUNT` and `VAGRANT_NODE_DISTR` to default values

```bash
unset VAGRANT_NODE_COUNT
unset VAGRANT_NODE_DISTR
```

Ansible Dynamic Inventory
=========================

Use `inventory/vagrant_inventory.py` script to build the Ansible dynamic inventory of your Vagrant environment.

---

Maintained by [Sergey Vergun](https://www.linkedin.com/in/svergun/)
