#!/bin/bash
# TODO: in ex4 script, change the sshd.config file to permit connection with public key.
# based on that, in ex5 connect with password and generate new ssh keys and copy them between machines to allow direct connection using the newly generated key with "ssh -i <newkey> <server>"
# copy the vagrant private key:
ssh-keygen -q -f /home/vagrant/.ssh/direct-key -t ecdsa -b 521
sudo chown vagrant:vagrant /home/vagrant/.ssh/direct-key
#sudo cp /vagrant/.vagrant/machines/server2/virtualbox/private_key ~/.ssh/id_rsa
# change ownership:
#add fix to exercise5-server1 here