# Enterprise Linux Lab Report

- Student name: Cedric Denoo
- Github repo: <https://github.com/HoGentTIN/elnx-1920-ha-cdenoo.git>

Goal of this report is to load balance the services with NGINX.

## Requirements

- 1 docker container running mariadb
- 3 docker containers running wordpress
- 1 docker container running nginx
- nginx container balances load to the wordpress containers

## Test plan

### Setup
Host:
- Open directory `cd ./Assignment-Solution4/`
- Run `vagrant up`
- Open browser on http://192.168.56.10
- Configure wordpress
- Run `./scripts/production.sh`
- Open browser on http://192.168.56.10

### Production
- Open browser on http://192.168.56.10:9090
- Login with credentials
  - User: `vagrant`
  - Password: `vagrant`
- Navigate to https://192.168.56.10:9090/docker
- Check if NGINX is running
- Check if 3 instances of Wordpress are running

- Run load test on the NGINX container
- Check if load is balanced over wordpress servers

## Documentation

- Add a NGINX container
- Make wordpress containers scale
- Add nginx config file
- Tried to completely reset the vm, ran into an error with nginx
  - if the wordpress site hasn't been "installed" yet, the scaling of the container flips out
  - solution: run the wordpress container without nginx/scaling, install the site, then scale
- Automate docker-compose with ansible
  - tried to use docker_compose module
    - compatibilty issues between docker, docker-compose, python and docker_compose ansible module
  - automate docker-compose in a custom ansible role, install via web interface, then run `./scripts/production.sh`
- Write documentation

## Test report

### Setup

- Run command `cd ./Assignment-Solution4/ && vagrant up`
  - Result: success
- Open browser on http://192.168.56.10
  - Result: success
- Configure wordpress with dummy data
- Run `./scripts/production.sh`
  - Result: success
- Open browser on http://192.168.56.10
  - Result: success, shows wordpress site with dummy data

### Production
- Open browser on http://192.168.56.10:9090
  - Result: success, shows cockpit webpage
- Login with credentials
  - User: `vagrant`
  - Password: `vagrant`
  - Result: success, can log in
- Navigate to https://192.168.56.10:9090/docker
  - Result: success, shows docker containers
- Check if NGINX is running
  - Result: success, a single NGINX container is running
- Check if 3 instances of Wordpress are running
  - Result: success, 3 wordpress containers are running

- Run load test on the NGINX container
- Check if load is balanced over wordpress servers
  - Result: success, load is equally balanced between the 3 wordpress containers

## Resources

- [Wordpress NGINX docker github](https://github.com/mjstealey/wordpress-nginx-docker)
- [Multiple service instances](https://pspdfkit.com/blog/2018/how-to-use-docker-compose-to-run-multiple-instances-of-a-service-in-development/)
- [Ansible docker_compose](https://docs.ansible.com/ansible/latest/modules/docker_compose_module.html?highlight=docker)