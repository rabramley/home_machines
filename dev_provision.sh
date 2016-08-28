#!/usr/bin/env bash

sudo apt-get install -y sshpass git

sudo apt-get install -y software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -y ansible

cp /vagrant/ssh.config /home/vagrant/.ssh/config

cp /etc/hosts ./hosts

printf "192.168.1.202 pidev\n" >> hosts
printf "192.168.1.203 kitchen\n" >> hosts
printf "192.168.1.204 piserver\n" >> hosts

sudo mv ./hosts /etc/hosts
