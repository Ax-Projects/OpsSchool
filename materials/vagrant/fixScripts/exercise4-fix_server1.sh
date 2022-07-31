#!/bin/bash
echo "192.168.60.11 server2" | sudo tee -a /etc/hosts
sudo sed -i 's/#PubkeyAuth/PubkeyAuth/' /etc/ssh/sshd_config
#sudo sed -i 's/PasswordAuth/#PasswordAuth/' /etc/ssh/sshd_config
sudo systemctl restart sshd.service
#add fix to exercise4-server1 here
