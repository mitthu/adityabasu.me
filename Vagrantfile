# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vagrant.plugins = "vagrant-notify-forwarder"
  config.vm.box = "ubuntu/focal64"

  config.vm.network "forwarded_port", guest: 4000, host: 4000, host_ip: "127.0.0.1"

  config.vm.provider "virtualbox" do |vb|
  	vb.cpus = 2
    vb.memory = "1024"
  end
  
  config.vm.provision "shell", inline: <<-SHELL
    apt-get update
    apt-get install -y make htop fish

    # Configure VM
    echo "www" >/etc/hostname
    hostname -F /etc/hostname
    chsh --shell `which fish` vagrant
    su vagrant -c "mkdir -p ~/.config/fish/"
    su vagrant -c "echo 'set -x EDITOR /usr/bin/vim' >~/.config/fish/config.fish"
    su vagrant -c "echo 'cd /vagrant' >>~/.config/fish/config.fish"

    # Setup git
    su vagrant -c 'git config --global user.name "Aditya Basu"'
    su vagrant -c 'git config --global user.email "ab.aditya.basu@gmail.com"'

    # Install dependencies
    su vagrant -c "make -C /vagrant/ depsinstall"
  SHELL
end
