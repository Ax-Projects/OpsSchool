#!/bin/bash
sshfold=/home/vagrant/.ssh
# sudo cp /vagrant/.vagrant/machines/server1/virtualbox/private_key /home/vagrant/.ssh/id_rsa
# sudo chown vagrant:vagrant ~/.ssh/id_rsa
sudo scp -o StrictHostKeyChecking=no -i $sshfold/id_rsa /vagrant/.vagrant/machines/server2/virtualbox/private_key vagrant@server1:$sshfold/id_rsa
sudo scp -o StrictHostKeyChecking=no -i $sshfold/id_rsa vagrant@server1:$sshfold/direct-key.pub $sshfold/direct-key.pub
cat $sshfold/direct-key.pub >> $sshfold/authorized_keys
#add fix to exercise5-server2 here
