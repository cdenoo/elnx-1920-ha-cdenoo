#! /usr/bin/bash

vagrant ssh -c "docker-compose -f /vagrant/files/docker-compose-setup.yml down"
sleep 10
vagrant ssh -c "docker-compose -f /vagrant/files/docker-compose.yml up -d"