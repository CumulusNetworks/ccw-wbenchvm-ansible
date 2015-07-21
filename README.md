##About

The Cumulus Workbench VM Ansible Playbook is responsible for provisioning a pristine Ubuntu 14.04 VM into a workable management VM for a Cumulus Workbench reservation.

This Cumulus Workbench VM provides an easy to install  chef or puppet server that can be used outside the Cumulus workbench environment
for demonstrations and testing.

This playbook may be used in a Vagrantfile to provision a Ubuntu Vagrant VM so a user can test and install Cumulus [cldemo packages](http://github.com/CumulusNetworks/cldemo).
For more details on how to use cldemo packages, go to the [Cumulus Workbench Guide](https://support.cumulusnetworks.com/hc/en-us/articles/203005993-Cumulus-Workbench-User-Guide)
## Requirements:

* Ubuntu 14.04 LTS Server Virtual Machine or Bare Metal Server
* The server must be configured with a 2nd interface with an IP of 192.168.0.1/24.
* ``eth0`` must be configured as a management port.  This is required to get cldemo packages to install properly


## Example Vagrant File to bring up Cumulus Workbench VM

```ruby
# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  config.vm.box = "ubuntu/trusty64"

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  config.vm.network "private_network", ip: "192.168.0.1", virtualbox__intnet: true

  config.vm.provision :ansible do |ansible|
    ansible.playbook = "/home/user/ccw-wbenchvm-ansible/site.yml"
  end
end
```

## Installing Puppet or Chef servers

After the VM is provisioned, installing a working puppet or chef server can be done via the ``apt-get`` commands. Example

```
$ apt-get install cldemo-wbench-puppetserver
OR

$ apt-get intall cldemo-wbench-chefserver
```
## License
MIT

##Development

1. Fork it.
2. Create your feature branch (`git checkout -b my-new-feature`).
3. Commit your changes (`git commit -am 'Add some feature'`).
4. Push to the branch (`git push origin my-new-feature`).
5. Create new Pull Request.


###Testing
Run `./test_playbook.sh` to perform lint and syntax checks.

---

![Cumulus icon](http://cumulusnetworks.com/static/cumulus/img/logo_2014.png)

### Cumulus Linux

Cumulus Linux is a software distribution that runs on top of industry standard networking hardware. It enables the latest Linux applications and automation tools on networking gear while delivering new levels of innovation and ﬂexibility to the data center.

For further details please see: [cumulusnetworks.com](http://www.cumulusnetworks.com)

## Contributors
- Stanley Karunditu [@skamithi](https://github.com/skamithi)
