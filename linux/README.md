Linux Multi Node Virtual Environment
======================

This Vagrantfile to deploy a few **Linux** virtual machines using the Virtualbox provider. By default will be provisioned three **Ubuntu Jammy** virtual machines (minimal installation). You can change the number of virtual machines and distributive version using the [virtual environment extended capabilities](https://github.com/svergun/vagrant/wiki/VE-Extended-Capabilities).

[Install Virtual Environment](https://github.com/svergun/vagrant/wiki/Install-Virtual-Environment)

[Vagrant Base Commands](https://github.com/svergun/vagrant/wiki/Vagrant-Base-Commands)

[Vagrant CLI Official Guide](https://developer.hashicorp.com/vagrant/docs/cli)

[Virtual Environment Extended Capabilities](https://github.com/svergun/vagrant/wiki/VE-Extended-Capabilities)

# Default Configuration

* Default Node Count: `3`
* Default Distributive: `Ubuntu Jammy`
* Node Name: `node[1..3]`
* Node FQDN: `node[1..3].example.com`
* Node IPv4: `192.0.2.10[1..3]`
* Default user: `vagrant`
* Default Auth Method: `SSH private key`
* vCPU: `1`
* vRAM: `1024`

## List of Pre-installed Packages

* epel-release (for RedHat based distributives only)
* git
* bind-utils
* lsof
* mc
* net-tools
* nmap
* tar
* telnet
* tree
* vim
* wget
* zip
