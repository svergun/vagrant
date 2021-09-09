Vagrantfiles Collection
=======================

# Install Vagrant

* Download - https://www.vagrantup.com/downloads.html
* Install - https://www.vagrantup.com/docs/installation

# Vagrantfiles List

* [Ansible Workshop](ansible-workshop/)
* [CentOS Multi Node](centos-multi-node/)
* [CentOS Single Node](centos-single-node/)

# Base Vagrant Commands

* Clone the Git repository
* Go to a Vagrantfile folder

  ```bash
  cd vagrant/<vagrantfile-folder>
  ```

* Build all virtual machines

  ```bash
  vagrant up
  ```
* Build a specific virtual machine

```bash
vagrant up <node_name>
```

* Check virtual machines status

  ```bash
  > vagrant status

  Current machine states:
   
  control                   running (virtualbox)
  node1                     running (virtualbox)
  node2                     running (virtualbox)
  ```

* Stop virtual machines

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

---

Maintained by [Sergey Vergun](https://www.linkedin.com/in/svergun/)
