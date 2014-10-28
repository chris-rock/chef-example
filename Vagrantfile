# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.define "chefserver" do |cs|
    cs.vm.box = "ubuntu/precise64"

    cs.vm.provider "virtualbox" do |v|
      v.memory = 2048
    end

    cs.vm.network "private_network", ip: "192.168.50.10"
    cs.vm.provision "shell", path: "install/chefserver.sh"
  end

  config.vm.define "workstation" do |ws|
    ws.vm.box = "ubuntu/precise64"
    ws.vm.network "private_network", ip: "192.168.50.20"
    ws.vm.provision "shell", path: "install/chefdk.sh"
  end

  config.vm.define "rollout" do |ro|
    ro.vm.box = "ubuntu/precise64"
    ro.vm.network "private_network", ip: "192.168.50.30"
  end

end
