Vagrant.configure(2) do |config|
  
  config.vm.box = "debian/stretch64"
  config.vm.synced_folder "./code", "/home/vagrant/code"

  config.ssh.forward_agent = true
  config.ssh.forward_x11 = true

  config.vm.provision "shell", inline: <<-SHELL
     
    sudo apt-get update
    sudo apt-get install gedit -y -qq

    sudo mkdir -p /opt/gnu/arm
    sudo chmod 755 /opt/gnu/arm
    cd /opt/gnu/arm
    sudo tar xvjf /vagrant/installations/opt_gnu_arm_64.tar.bz2

    sudo sed -i 's/GRUB_CMDLINE_LINUX_DEFAULT="quiet"/GRUB_CMDLINE_LINUX_DEFAULT="quiet vsyscall=emulate"/g' /etc/default/grub
    # sudo grub-update

    touch /home/vagrant/.bashrc
    source /vagrant/installations/etc/config.sh

  SHELL
end
