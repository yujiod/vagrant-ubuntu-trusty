# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.network "forwarded_port", guest: 80, host: 80
  config.vm.network "forwarded_port", guest: 443, host: 443
  config.vm.network "forwarded_port", guest: 3306, host: 3306
  config.vm.network "private_network", ip: "192.168.33.10"
  config.vm.synced_folder ".", "/vagrant", :mount_options => ['dmode=755', 'fmode=644']
  config.vm.provision "shell", :path => "provision.sh"
end
