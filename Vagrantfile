# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  config.vm.provider "VirtualBox" do |v|
    v.memory = 2048
    v.cpus = 2
  end

  config.vm.define "acs" do |x|
    x.vm.box = "ubuntu/trusty64"
    x.vm.hostname = "acs"
    x.vm.network "private_network", ip: "192.168.33.10"
    x.vm.synced_folder './ansible', '/home/vagrant/ansible', mount_options: ["dmode=775,fmode=664"]
    x.vm.provision "shell" do |s|
      s.path = "acs_provision.sh"
      s.privileged = false
    end
    x.vm.provision "shell" do |s|
      # Fix missing newline character at the end of the authorized keys file
      s.inline = "echo '\n' >> /home/vagrant/.ssh/authorized_keys"
    end
  end
  
end
