touch /home/vagrant/.bashrc
grep "401infrc.sh" /home/vagrant/.bashrc > /dev/null 2>&1 || echo "source /vagrant/installations/etc/401infrc.sh" >> /home/vagrant/.bashrc
grep ".bashrc" /home/vagrant/.bash_profile > /dev/null 2>&1 || echo "source /home/vagrant/.bashrc" >> /home/vagrant/.bash_profile
source /vagrant/installations/etc/401infrc.sh
