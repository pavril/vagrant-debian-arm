Vagrant.configure(2) do |config|
  
  config.vm.box = "debian/stretch64"

  config.vm.synced_folder "./code", "/home/vagrant/code"

  config.ssh.forward_agent = true
  config.ssh.forward_x11 = true

  config.vm.provision "shell", inline: <<-SHELL
     
    sudo apt-get update
    sudo apt-get install -y -qq gedit git-all

    sudo mkdir -p /opt/gnu/arm
    sudo chmod 755 /opt/gnu/arm
    cd /opt/gnu/arm

    sudo tar xvjf /vagrant/opt_gnu_arm_64.tar.bz2

    sudo sed -i 's/GRUB_CMDLINE_LINUX_DEFAULT="quiet"/GRUB_CMDLINE_LINUX_DEFAULT="quiet vsyscall=emulate"/g' /etc/default/grub
    touch /home/vagrant/.bashrc

    #sudo /usr/sbin/update-grub

    touch /home/vagrant/.bashrc
    grep "401infrc.sh" /home/vagrant/.bashrc > /dev/null 2>&1 || echo "source /vagrant/etc/401infrc.sh" >> /home/vagrant/.bashrc
    grep ".bashrc" /home/vagrant/.bash_profile > /dev/null 2>&1 || echo "source /home/vagrant/.bashrc" >> /home/vagrant/.bash_profile
    source /vagrant/etc/401infrc.sh


  SHELL
end
