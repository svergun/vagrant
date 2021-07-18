Fresh Multinode Simple
======================

Deploys three fresh CentOS 8 nodes.

## Preinstalled Packages

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

## Default Values

* Node Name: `node[1..3]`
* Node FQDN: `node[1..3].example.com`
* Node IPv4: `192.0.2.10[1..3]`
* Default user: `vagrant`
* Default Auth Method: `SSH private key`
* vCPU: `1`
* vRAM: `1024`

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

```bash
> vagrant up
```

Run the first node

```bash
> vagrant node1 up
```
