##About

The Cumulus Workbench VM Ansible Playbook is responsible for provisioning a clean Ubuntu image into a workable mgmt VM for a Cumulus Workbench reservation.

This playbook may be used in a Vagrantfile to provision a Ubuntu Vagrant VM so a user can test and install Cumulus [cldemo packages](http://github.com/CumulusNetworks/cldemo)

## Requirements:
* VM with an 2nd interface with IP 192.168.0.1/24. This is simple to provision
  in vagrant using the private network option. This is required to get
  cldemo debs to install properly


## Example Vagrant File
```
# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  config.vm.box = "fgrehm/trusty64-lxc"

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  config.vm.network "private_network", ip: "192.168.0.1", lxc__bridge_name:
'lxcbr1'

  config.vm.provision :ansible do |ansible|
    ansible.playbook = "/home/user/ccw-wbenchvm-ansible/site.yml"
  end
end
```

## License
GPL v2

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
