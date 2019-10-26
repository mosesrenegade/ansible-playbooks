#!/bin/bash

if [ -z $( which ansible ) ]
  then
  sudo apt update -y
  sudo apt install software-properties-common -y
  sudo apt-add-repository --yes --update ppa:ansible/ansible -y
  sudo apt install ansible -y
fi

sudo ansible-playbook -i inventory laptop.yml
