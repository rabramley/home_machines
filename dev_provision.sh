#!/usr/bin/env bash

sudo apt-get install -y sshpass git

sudo apt-get install -y software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -y ansible

cp /vagrant/ssh.config /home/vagrant/.ssh/config

ssh-keygen -f /home/vagrant/.ssh/id_rsa -t rsa -N ''
sshpass -p 'volumio' ssh-copy-id -i /home/vagrant/.ssh/id_rsa.pub -o StrictHostKeyChecking=no volumio@192.168.1.203

