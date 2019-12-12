#! /usr/bin/bash

vagrant ssh -c "docker-compose -f /vagrant/files/docker-compose-setup.yml down"
vagrant ssh -c "docker-compose -f /vagrant/files/docker-compose.yml up -d"