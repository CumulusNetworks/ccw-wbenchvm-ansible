##About

The Cumulus Workbench VM Ansible Playbook is responsible for provisioning a clean Ubuntu image into a workable mgmt VM for a Cumulus Workbench reservation.

> Maybe? : This playbook may be used in a Vagrantfile to provision a Ubuntu Vagrant VM so a user can test and install Cumulus [cldemo packages](http://github.com/CumulusNetworks/cldemo)

## License
GPL v2

##Development

1. Fork it.
2. Create your feature branch (`git checkout -b my-new-feature`).
3. Commit your changes (`git commit -am 'Add some feature'`).
4. Push to the branch (`git push origin my-new-feature`).
5. Create new Pull Request.


###Description of Folders for this git repo

* tests: contains tests for each ansible module
* library: contains ansible modules and are ready to be called by ``ansible`` or ``ansible-playbook``.

###Testing
Run `./test_playbook.sh` to perform lint and syntax checks.

---

![Cumulus icon](http://cumulusnetworks.com/static/cumulus/img/logo_2014.png)

### Cumulus Linux

Cumulus Linux is a software distribution that runs on top of industry standard networking hardware. It enables the latest Linux applications and automation tools on networking gear while delivering new levels of innovation and ﬂexibility to the data center.

For further details please see: [cumulusnetworks.com](http://www.cumulusnetworks.com)

## Contributors
- Stanley Karunditu [@skamithi](https://github.com/skamithi)
