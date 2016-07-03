# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/precise64"

  config.vm.network "forwarded_port", guest: 3000, host: 3000

  config.vm.provider "virtualbox" do |vb|
    # Don't boot with headless mode
    # vb.gui = true
    # Use VBoxManage to customize the VM. For example to change memory:
    vb.customize ["modifyvm", :id, "--memory", "1024"]
  end

  config.vm.provision "shell", path: "mongo.sh"
  config.vm.provision "shell", path: "rvm.sh", privileged: false
  config.vm.provision "shell", path: "ruby.sh", privileged: false
  config.vm.provision "shell", path: "git.sh"
  config.vm.provision "shell", path: "errbit.sh", privileged: false
  config.vm.provision "shell", path: "nginx.sh"

  config.vm.box_check_update = false

  # config.vm.synced_folder "../data", "/vagrant_data"
end
