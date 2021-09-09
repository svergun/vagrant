Fresh Multinode Simple
======================

This Vagrantfile is configured to deploy multiple **Red Hat based** virtual machines using the Virtualbox provider. By default will be provisioned three **CentOS 8** virtual machines. You may change the number of virtual machines and distributive using environment variables.

Using this Vagrant file you may provision virtual machines based on the following distributives:
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

To change the number of provisioned virtual machines use `VAGRANT_NODE_COUNT`

```bash
export VAGRANT_NODE_COUNT=5
vagrant up
```

To change the provisioning distributive use `VAGRANT_NODE_DISTR`

```bash
export VAGRANT_NODE_DISTR="centos/7"
vagrant up
```

Reset `VAGRANT_NODE_COUNT` and `VAGRANT_NODE_DISTR` to default values

```bash
unset VAGRANT_NODE_COUNT
unset VAGRANT_NODE_DISTR
```

# Default Configuration

* Default Node Count: `3`
* Default Distributive: `Linux CentOS 8`
* Node Name: `node[1..3]`
* Node FQDN: `node[1..3].example.com`
* Node IPv4: `192.0.2.10[1..3]`
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
