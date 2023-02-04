Fresh Multinode Simple
======================

This is a Vagrantfile to deploy a few **CentOS based** virtual machines using a Virtualbox provider. By default will be provisioned three **CentOS 9s** virtual machines. You may change the number of virtual machines and distributive version using environment variables.

List of valid distributives:

  * Red Hat Entreprise Linux
  * CentOS Linux
  * Oracle Linux
  * Fedora

You can discover Vagrant boxes on [Vagrant Cloud](https://app.vagrantup.com/boxes/search)

Example how to discover the official CentOS distribitives using Vagrant CLI

```bash
vagrant cloud search --provider virtualbox --limit 100 --short centos | grep "generic/centos.*"
```

To change the number of provisioned virtual machines use `VAGRANT_NODE_COUNT`

```bash
export VAGRANT_NODE_COUNT=5
vagrant up
```

To change the provisioning distributive use `VAGRANT_NODE_DISTR`

```bash
export VAGRANT_NODE_DISTR="generic/centos8"
vagrant up
```

Reset `VAGRANT_NODE_COUNT` and `VAGRANT_NODE_DISTR` to default values

```bash
unset VAGRANT_NODE_COUNT
unset VAGRANT_NODE_DISTR
```

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
