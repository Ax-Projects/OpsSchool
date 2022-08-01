#!/bin/bash
sshfold=/home/vagrant/.ssh
echo "192.168.60.10 server1" | sudo tee -a /etc/hosts
sudo sed -i 's/#PubkeyAuth/PubkeyAuth/' /etc/ssh/sshd_config
# sudo sed -i 's/PasswordAuth/#PasswordAuth/' /etc/ssh/sshd_config
sudo cp /vagrant/.vagrant/machines/server1/virtualbox/private_key $sshfold/id_rsa
sudo chown vagrant:vagrant $sshfold/id_rsa
sudo systemctl restart sshd.service
#add fix to exercise4-server2 here
