# vm - Setup of Ubuntu VM using Vagrant

## Prerequisites

* Download and install VirtualBox from [https://www.virtualbox.org/wiki/Downloads](https://www.virtualbox.org/wiki/Downloads)
* Download and install Vagrant from [https://www.vagrantup.com/downloads](https://www.vagrantup.com/downloads)

## Setup

* Run `vagrant up` inside this directory
  * `Vagrantfile` contains the description of the VM
  * `setup.sh` is the provisioning shell script: [https://www.vagrantup.com/docs/provisioning/shell](https://www.vagrantup.com/docs/provisioning/shell)
  * As part of this setup the `ba-ndncert/code` repository is cloned and made available inside the VM in the `xxx` folder 

## Connect to the VM with SSH in VSCode

### Setup
* Copy the output from `vagrant ssh-config` to `ssh-config.txt`
* Open remote window in VSCode
* Select *Connect to Host*->*Configure SSH Hosts...*->*Settings*
* Enter the path to the `ssh-config.txt` file
* Open remote window in VSCode again
* Select *Connect to Host*->*\<hostname\>* (*\<hostname\>* is *default* and can be changed in `ssh-config.txt`)
* Select *linux* as remote platform

### Usage
* Open remote window in VSCode
* Select *Connect to Host*->*\<hostname\>* (*\<hostname\>* is *default* and can be changed in `ssh-config.txt`)

### Quick access
If you just need to access the console you can use `vagrant ssh` instead
