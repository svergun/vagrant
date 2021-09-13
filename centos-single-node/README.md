Single Node Simple
======================

This Vagrantfile is configured to deploy a **Red Hat based** virtual machine using the Virtualbox provider. By default will be provisioned one **CentOS 8** virtual machine. 

Vagrantfile How To
=======================

# Install Vagrant

* Download - https://www.vagrantup.com/downloads.html
* Install - https://www.vagrantup.com/docs/installation

# Base Vagrant Commands

* Clone the Git repository
* Go to a Vagrantfile folder

  ```bash
  cd vagrant/centos-single-node>
  ```

* Build the virtual machine

  ```bash
  vagrant up
  ```

* Check virtual machine status

  ```bash
  > vagrant status
  ```

* Stop virtual machine

  ```bash
  > vagrant halt
  ```

* Destroy virtual machines

  ```bash
  > vagrant destroy
  ```

* Connect to a virtual machine

  ```bash
  > vagrant ssh <node_name>
  ```

* Update VM image

  ```bash
  > vagrant box list
  > vagrant box prune
  > vagrant box remove <box>
  ```

To find more options use `vagrant help`

# Default Configuration

* Default Node Count: `1`
* Default Distributive: `Linux CentOS 8`
* Node Name: `node1`
* Node FQDN: `node1.example.com`
* Node IPv4: `192.0.2.101`
* Default user: `vagrant`
* Default Auth Method: `SSH private key`
* vCPU: `1`
* vRAM: `1024`

## List of Pre-installed Packages

* bind-utils
* epel-release
* git
* lsof
* mc
* net-tools
* nmap-ncat
* tar
* telnet
* tree
* vim
* wget
* zip


Vagrantfile Extended capabilities
=======================

You may change the OS distributive using environment variables.

Using this Vagrant file you may provision a virtual machine based on the following distributives:
  * Red Hat Entreprise Linux
  * CentOS Linux
  * Oracle Linux
  * Fedora

Example how to discover the official CentOS distribitives using Vagrant CLI

```bash
vagrant cloud search --provider virtualbox --limit 100 --short centos | grep "centos/[0-9]"
centos/7
centos/8
```

To change the provisioning distributive use `VAGRANT_NODE_DISTR`

```bash
export VAGRANT_NODE_DISTR="centos/7"
vagrant up
```

Reset `VAGRANT_NODE_DISTR` to the default value

```bash
unset VAGRANT_NODE_DISTR
```
