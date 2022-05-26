# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  
  config.vm.box = "ubuntu/focal64"

  # Box Settings
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # Provider Settings
  config.vm.provider "virtualbox" do |vb|
    vb.memory = 1024
    vb.cpus = 2
  end

  # Network Settings
  # config.vm.network "forwarded_port", guest: 80, host: 8080
  # config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"
  config.vm.network "private_network", ip: "192.168.56.10"
  # config.vm.network "public_network"

  # Folder Settings
  config.vm.synced_folder "./data", "/var/www/html"
  # , :nfs { :mount_options => ["dmode=777", "fmode=666"] }

  # Provision Settings
  # config.vm.provision "shell", inline: <<-SHELL
  #   apt-get update
  #   apt-get install -y apache2
  # SHELL

  config.vm.provision "shell", path: "bootstrap.sh"
end