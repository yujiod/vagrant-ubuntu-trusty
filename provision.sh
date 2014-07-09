#!/bin/sh

sed -i".bak" -e 's/\/\/archive\.ubuntu\.com/\/\/jp.archive.ubuntu.com/g' /etc/apt/sources.list

if [ ! `which ansible` ]; then
    apt-add-repository -y ppa:rquillo/ansible
    apt-get update -y
    apt-get install -y ansible
fi

ansible-playbook -i /vagrant/ansible/hosts /vagrant/ansible/playbook.yml
