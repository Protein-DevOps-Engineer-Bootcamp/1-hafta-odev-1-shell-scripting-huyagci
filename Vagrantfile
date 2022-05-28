# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  
  config.vm.box = "ubuntu/focal64"

  # Box Settings
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # Provider Settings
  config.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id, "--uart1", "0x3F8", "4"]
    vb.customize ["modifyvm", :id, "--uartmode1", "file", File::NULL]
    vb.memory = 2048
    vb.cpus = 2
    vb.name = "week-1-assignments-huyagci"
  end

  # Network Settings
  # config.vm.network "forwarded_port", guest: 80, host: 8080
  # config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"
  # config.vm.network "private_network", ip: "192.168.56.10"
  # config.vm.network "public_network"

  # Folder Settings
  config.vm.synced_folder "./shared/scripts", "/opt/scripts"
  config.vm.synced_folder "./shared/backups", "/mnt/backups"
  config.vm.synced_folder "./shared/logs", "/tmp/logs"

  # Provision Settings
  config.vm.provision "shell", path: "./shared/scripts/bootstrap.sh"
end