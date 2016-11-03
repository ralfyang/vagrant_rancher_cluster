# vagrant_rancher_cluster
## Requirement Install
### Virtual Box install
* https://www.virtualbox.org/wiki/Downloads

### Vagrant install
* https://www.vagrantup.com/downloads.html
* Box(Virtual Machine OS image) add
```
vagrant box add ubuntu1404 https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box
```

### Source Pull
* git clone https://github.com/goody80/vagrant_rancher_cluster.git


## How to use
### Instruction
```
cd vagrant_rancher_cluster
vagrant up rancher && vagrant up vmhost01  && vagrant up vmhost02
```

### Rancher addmin page
* http://localhost:8080

### Test Server connection
```
telnet 192.200.10.100 8080
```

## Host information add
### Host Registration URL
* Something else: http://192.200.10.100:8080

