#!/bin/bash
#we need to remove the "location" part in the end of /etc/apache2/sites-enabled/000-default.conf 
#sudo sed -i'.bak' 's/\(<.*Location.*>\).*//g' /etc/apache2/sites-enabled/000-default.conf
sudo sed -i'.bak' '32,34d' /etc/apache2/sites-enabled/000-default.conf
sudo systemctl reload apache2
#add fix to exercise3 here
