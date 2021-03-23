Vagrantfiles Collection
=======================

<!-- vscode-markdown-toc -->
* [Simple Help](#SimpleHelp)
* [Vagrantfiles List](#VagrantfilesList)

<!-- vscode-markdown-toc-config
	numbering=false
	autoSave=true
	/vscode-markdown-toc-config -->
<!-- /vscode-markdown-toc -->

* Vagrant
  * Download - https://www.vagrantup.com/downloads.html
  * Install - https://www.vagrantup.com/docs/installation

## <a name='SimpleHelp'></a>Simple Help

* Clone the Git repository
* Go to a Vagrantfile folder

  ```bash
  > cd vagrant/<vagrantfile-folder>
  ```

* Build virtual machines

  ```bash
  > vagrant up
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

## <a name='VagrantfilesList'></a>Vagrantfiles List

* [Fresh Multinode Simple](fresh-multinode-simple/README.md)

---

Maintained by [Sergey Vergun](https://www.linkedin.com/in/svergun/)
