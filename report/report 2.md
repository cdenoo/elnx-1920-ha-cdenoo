# Enterprise Linux Lab Report

- Student name: Cedric Denoo
- Github repo: <https://github.com/HoGentTIN/elnx-1920-ha-cdenoo.git>

Get all services working in a docker environment.

## Requirements

- Docker runs on VM
- Mariadb runs containerized
- Webserver runs containerized
- A monitoring tool monitors and visualizes hardware state

## Test plan

1. Open terminal and run `cd Assignment-Solution2`

2. Run `vagrant up` and `vagrant status`
```
Expected: Centos-7.6 server running
```
3. Run `ping 192.168.56.10`
```
Expected: Response from server
```
4. Open database client and connect to `192.168.56.10:3306` with user `root` and password `example`
```
Expected: Connected with database
```
5. Open browser and navigate to [Cockpit](https://192.168.56.10:9090/system)
```
Expected: Login page of Cockpit shown
```
6. Log into Cockpit web client with user `vagrant` and password `vagrant`
```
Expected: Login successful and server data shown
```
7. Open browser and navigate to [Prometheus](http://192.168.56.10:3001/targets)
```
Expected: Configured exporters and their state shown
```
8. Open browser and navigate to [Grafana](http://192.168.56.10:3000/d/hb7fSE0Zz/node-exporter-dashboard?orgId=1) and login with user `admin` and password `admin`
```
Expected: Dashboard with hardware data shown
```

## Documentation

* Tried my hand at docker and docker-compose
* Looked at [Docker Docs](https://docs.docker.com/compose/gettingstarted/)
* Ran mariadb on docker, tried to connect to it from my database client
* Tried to find visualization software for collectd, but most were either dated or no longer maintained
* Looked at OpenSCAP, Icinga and ElasticStack - but since those were proprietary, I chose Grafana and Prometheus as monitoring tools
* Looked at the code from [cloudalchemy.grafana](https://github.com/cloudalchemy/ansible-grafana) and [cloudalchemy.prometheus](https://github.com/cloudalchemy/ansible-prometheus) to get an idea on where to start
* Looked at the [Grafana Docs](https://grafana.com/docs/installation/configuration/)
* Ran a basic Grafana image on docker
* Looked at the [Prometheus Docs](https://prometheus.io/docs/prometheus/latest/installation/)
* Ran a basic Prometheus image on docker
  * Issue: Prometheus and Cockpit both run on port 9090
  * Solution: Rebind Prometheus port to 3001
* Connected Grafana and Prometheus manually
* Tried to make Grafana and Prometheus connect automatically via configs
* Ran a mysqld-exporter image on docker
* Connected the mysqld-exporter image to Prometheus
  * Issue: didn't know how
  * Solution: [Prometheus Mariadb](https://computingforgeeks.com/monitoring-mysql-mariadb-with-prometheus-in-five-minutes/) and [Prometheus Mariadb Error](https://stackoverflow.com/questions/57347415/cant-monitor-mysql-using-prometheus-docker-and-prom-mysqld-exporter-image)
* Ran a node-exporter to monitor hardware
* Connected the node-exporter to Prometheus
* Tried to run docker-compose as an ansible role
  * Issue: docker service is not up yet when ansible provisioner reaches the role
  * Solution: ...

## Test report

1. Success

2. Success

![VagrantStatus](./img/R2/VagrantUp.png)

3. Success

![Ping](./img/R2/Ping.png)

4. Success

![DBeaver](./img/R2/DBeaver.png)

5. Success

![Cockpit1](./img/R2/Cockpit_1.png)

6. Success

![Cockpit](./img/R2/Cockpit_2.png)

7. Success

![Prometheus](./img/R2/Prometheus.png)

8. Success

![Grafana](./img/R2/Grafana.png)

## Resources

<!-- HaProxy -->
- [HaProxy Docker Swarm](https://www.haproxy.com/blog/haproxy-on-docker-swarm-load-balancing-and-dns-service-discovery/)
- [HaProxy Docs](https://cbonte.github.io/haproxy-dconv/)

<!-- Docker -->
- [Docker Compose](https://docs.docker.com/compose/gettingstarted/)
- [Dockerfile](https://docs.docker.com/engine/reference/builder/)
- [Docker Sandbox](https://github.com/bertvv/docker-sandbox)
- [Docker Container SSH](https://phase2.github.io/devtools/common-tasks/ssh-into-a-container/)
- [Docker Images](https://hub.docker.com/)

<!-- Grafana -->
- [Grafana](https://56k.cloud/blog/provisioning-grafana-datasources-and-dashboards-automagically/)
- [Grafana Provisioning](https://grafana.com/docs/administration/provisioning/)
- [Grafana Configuration](https://grafana.com/docs/installation/configuration/)
- [Grafana Ansible](https://github.com/cloudalchemy/ansible-grafana)

<!-- Prometheus -->
- [Prometheus Installation](https://prometheus.io/docs/prometheus/latest/installation/)
- [Prometheus Mariadb](https://computingforgeeks.com/monitoring-mysql-mariadb-with-prometheus-in-five-minutes/)
- [Prometheus Mariadb Error](https://stackoverflow.com/questions/57347415/cant-monitor-mysql-using-prometheus-docker-and-prom-mysqld-exporter-image)