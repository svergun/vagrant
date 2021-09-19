Zookeeper Standalone Server
===========================

This Vagrantfile is configured to deploy a standalone zookeeper server. By default will be provisioned a **CentOS 8** virtual machine. You may change the distributive using the `VAGRANT_NODE_DISTR` environment variable.

Using this Vagrant file you may provision virtual machines based on the following distributives:
  * Red Hat based: Red Hat Entreprise Linux, CentOS, Oracle Linux, Fedora
  * Debian based: Debian, Ununtu

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

Reset `VAGRANT_NODE_DISTR` to default value

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
* Zookeeper Version: `3.6.3`
* Zookeeper Port: `2181`
* Zookeeper JMX Port: `9900`
* Java: `Open JDK 11`

## List of Pre-installed Packages

* bind-utils
* epel-release (for Red Hat based)
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
