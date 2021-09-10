Fresh Multinode Simple
======================

This Vagrantfile is configured to deploy a **Red Hat based** virtual machine using the Virtualbox provider. By default will be provisioned one **CentOS 8** virtual machine. You may change the OS distributive using the environment variable.

Using this Vagrant file you may provision a virtual machine based on the following distributives:
  * Red Hat Entreprise Linux
  * CentOS Linux
  * Oracle Linux
  * Fedora

You can discover Vagrant boxes on [Vagrant Cloud](https://app.vagrantup.com/boxes/search)

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
