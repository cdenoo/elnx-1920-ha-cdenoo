# Setup ssh
- Host:
  - Port-forward: NAT - 127.0.0.1:22 -> 10.0.2.15:22
  - `ssh-keygen -t rsa -b 4096`
  - `eval $(ssh-agent -s)`
  - `ssh-add ~/.ssh/id_rsa`
  - `shh root@localhost`
- Guest:
  - `mkdir .ssh`
  - `chmod 700 .ssh`
  - `touch .ssh/authorized_keys`
  - `chmod 600 .ssh/authorized_keys`
  - `sed -i 's/#PubkeyAuthentication yes/PubkeyAuthentication yes/' /etc/ssh/sshd_config`
  - `systemctl restart sshd`


# Troubleshooting

## Link layer

- Kabels
- Poorten (licht)
- ip link
  - NO-CARRIER -> UP

## Network layer

- ip a
  - `sudo nmtui`
- ip r
  - Nat:        10.0.2.0 /24
  - Host-only:  192.168.135.0 /24
- `less /etc/sysconfig/network-scripts/ifcfg-*`
  - bootproto=dhcp/static
  - onboot=yes
- `systemctl restart network` || `systemctl restart NetworkManager` (centos 8)
- Global Default Gateway: `less /etc/sysconfig/network`
- ping default-gateway
  - 10.0.2.2 /24
- `less /etc/resolv.conf`
  - DNS Servers
- `dig linux.org +short`
- `curl https://icanhazip.com/`

## Transport layer

- `systemctl status SERVICE.service`
- `ss -tlnp`
- `firewall-cmd --list-all`
  - `firewall-cmd --add-service=SERVICE --permanent`
  - `firewall-cmd --add-port=PORT/tcp --permanent`
  - `systemctl restart firewalld`

## Application layer

- `journalctl -f -u SERVICE.service`
- `systemctl restart SERVICE.service`