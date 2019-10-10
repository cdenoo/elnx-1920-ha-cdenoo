# Enterprise Linux Lab Report

- Student name: Cedric Denoo
- Github repo: <https://github.com/HoGentTIN/elnx-1920-ha-cdenoo.git>

Opzetten lamp-stack met wordpress geinstalleerd.

## Requirements

- srv001: Webserver is van buitenaf bereikbaar (host naar guest)
- srv001: Apache webserver draait en toont de php testpagina op http://192.168.56.10/ en wordpress op http://192.168.56.10/wordpress
- srv001: Mariadb draait en is juist geconfigureerd (paswoorden)
- srv001: PHP is geinstalleerd en werkt, bevestigd door de php testpagina op http://192.168.56.10/

## Test plan

How are you going to verify that the requirements are met? The test plan is a detailed checklist of actions to take, including the expected result for each action, in order to prove your system meets the requirements. Part of this is running the automated tests, but it is not always possible to validate *all* requirements throught these tests.

### Beschikbaarheid
- open terminal op host
- run commando `ping 192.168.56.10`
- als de server reageert en pongs terugstuurt is de test geslaagd

### Apache
1. Systemctl
- ssh naar terminal srv001
- run commando `systemctl status httpd`
- als service httpd op "Active: active (running)" staat is de eerste test geslaagd
2. Webpaginas
- open browser en surf naar `http://192.168.56.10/`
- open browser en surf naar `http://192.168.56.10/wordpress`
- als beide webpaginas beschikbaar zijn, is de test geslaagd

### PHP
1. Terminal
- ssh naar terminal srv001
- run commando `php -v`
- als de output een versie van php weergeeft is de test geslaagd
2. Webpagina
- open browser en surf naar `http://192.168.56.10/`
- als de webpagina een overzicht geeft van de installatie van PHP is de test geslaagd

### Mariadb
1. Systemctl
- ssh naar terminal srv001
- run commando `systemctl status mariadb`
- als service httpd op "Active: active (running)" staat is de eerste test geslaagd

2. PHPMyAdmin
- open browser en surf naar `http://192.168.56.10/phpmyadmin`
- log in met user `root` en paswoord `root_password` zoals geconfigureerd in `/ansible/host_vars/srv001.yml`
- als het phpMyAdmin dashboard tevoorschijn komt is de test geslaagd

3. Wordpress
- open browser en surf naar `http://192.168.56.10/wordpress`
- log in als `wordpress_user` met `wordpress_password` zoals geconfigureerd in `/ansible/host_vars/srv001.yml`
- als de wordpress configuratie tevoorschijn komt is de test geslaagd

## Documentation

Describe *in detail* how you completed the assignment, with main focus on the "manual" work. It is of course not necessary to copy/paste your code in this document, but you can refer to it with a hyperlink.

Make sure to write clean Markdown code, so your report looks good and is clearly structured on Github.

## Test report

The test report is a transcript of the execution of the test plan, with the actual results. Significant problems you encountered should also be mentioned here, as well as any solutions you found. The test report should clearly prove that you have met the requirements.

## Troubleshooting

- Bij creeren nieuwe Host-Only Adapter geeft vagrant een error.
  - Oplossing: Control panel netwerk adapter af en aan zetten

## Resources

- https://github.com/bertvv

- [lynis](https://cisofy.com/lynis/)
- [open-scap](https://www.open-scap.org/)
- [haproxy](http://www.haproxy.org/)
- [icinga](https://icinga.com/)
- [docker](https://www.docker.com/)
- [docker compose](https://docs.docker.com/compose/)
- [kubernetes](https://kubernetes.io/)
- [collectd](https://collectd.org/)
- https://www.tecmint.com/setup-high-availability-clustering-in-centos-ubuntu/
- [grafana](https://grafana.com/)
- [elastic stack](https://www.elastic.co/products/)