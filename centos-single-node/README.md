Single Node Simple
======================

This is a Vagrantfile to deploy a **CentOS based** virtual machine using a Virtualbox provider. By default will be provisioned one **CentOS 9s** virtual machine.


# Install Vagrant

* Download - https://www.vagrantup.com/downloads.html
* Install - https://www.vagrantup.com/docs/installation

# Base Vagrant Commands

* Clone the Git repository
* Go to a Vagrantfile folder

  ```bash
  cd vagrant/centos-single-node
  ```

* Build the virtual machine

  ```bash
  vagrant up
  ```

* Check virtual machine status

  ```bash
  vagrant status
  ```

* Stop virtual machine

  ```bash
  vagrant halt
  ```

* Destroy virtual machines

  ```bash
  vagrant destroy
  ```

* Connect to a virtual machine

  ```bash
  vagrant ssh <node_name>
  ```

* Update VM image

  ```bash
  vagrant box list
  vagrant box prune
  vagrant box remove <box>
  ```

To find more options use `vagrant help`

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


Extended capabilities
=======================

You may change the OS distributive using environment variables.

List of valid distributives:

  * Red Hat Entreprise Linux
  * CentOS Linux
  * Oracle Linux
  * Fedora

Example how to discover CentOS distribitives using Vagrant CLI

```bash
vagrant cloud search --provider virtualbox --limit 100 --short centos | grep "generic/centos.*"
```

To change provisioning distributive use `VAGRANT_NODE_DISTR`

```bash
export VAGRANT_NODE_DISTR="centos/7"
vagrant up
```

Reset `VAGRANT_NODE_DISTR` to the default value

```bash
unset VAGRANT_NODE_DISTR
```
