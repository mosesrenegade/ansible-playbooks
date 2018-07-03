#!/bin/bash

# Install Ansible and its dependencies before executing this role.

if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

apt install -y ssh python-apt ansible python-psycopg2
echo "localhost" >> /etc/ansible/hosts
