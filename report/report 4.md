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

How are you going to verify that the requirements are met? The test plan is a detailed checklist of actions to take, including the expected result for each action, in order to prove your system meets the requirements. Part of this is running the automated tests, but it is not always possible to validate *all* requirements throught these tests.

## Documentation

- Add a NGINX container
- Make wordpress containers scale
- Add nginx config file
- Tried to completely reset the vm, ran into an error with nginx
  - if the wordpress site hasn't been "installed" yet, the scaling of the container flips out
  - solution: run the wordpress container without nginx/scaling, install the site, then scale

## Test report

The test report is a transcript of the execution of the test plan, with the actual results. Significant problems you encountered should also be mentioned here, as well as any solutions you found. The test report should clearly prove that you have met the requirements.

## Resources

- [Wordpress NGINX docker github](https://github.com/mjstealey/wordpress-nginx-docker)
- [Multiple service instances](https://pspdfkit.com/blog/2018/how-to-use-docker-compose-to-run-multiple-instances-of-a-service-in-development/)