#!/bin/sh

ansible-playbook playbook.yml

echo
echo
echo "Provides metrics on infrastructure hosts"
echo
echo
sleep 5

ansible-playbook -i ../docker_ansible/dyno_inventory.ini install_nodexporter.yml
