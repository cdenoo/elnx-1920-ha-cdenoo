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

The test report is a transcript of the execution of the test plan, with the actual results. Significant problems you encountered should also be mentioned here, as well as any solutions you found. The test report should clearly prove that you have met the requirements.

## Resources

- [Wordpress NGINX docker github](https://github.com/mjstealey/wordpress-nginx-docker)
- [Multiple service instances](https://pspdfkit.com/blog/2018/how-to-use-docker-compose-to-run-multiple-instances-of-a-service-in-development/)
- [Ansible docker_compose](https://docs.ansible.com/ansible/latest/modules/docker_compose_module.html?highlight=docker)