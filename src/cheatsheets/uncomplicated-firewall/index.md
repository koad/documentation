# ufw - program cheatsheet
The Uncomplicated Firewall (ufw)

A frontend for iptables and is particularly well-suited for host-based firewalls. ufw provides a framework for managing netfilter, as well as a command-line interface for manipulating the firewall. ufw aims to provide an easy to use interface for people unfamiliar with firewall concepts, while at the same time simplifies complicated iptables commands.

## cheats

allow all inbound traffic from `command centre`'s ip.
```bash
export GODIP=99.250.71.69
sudo ufw allow from $GODIP
```

Allow only SSH traffic in from overlay interface (port 22)
```bash
export INTERFACE=ztnfaa6wav
ufw allow in on $INTERFACE to any port 22 proto tcp
```

allow all inbound traffic from `private overlay network`.
```bash
export OVERLAY_INTERFACE=ztnfaa6wav
sudo ufw allow in on $OVERLAY_INTERFACE 
```

allow a single inbound port
```bash
ufw allow 34331
```

view entries
```bash
sudo ufw status numbered
```

delete an entry
```bash
sudo ufw delete ENTRY_NUMBER
```


## references

[wiki.ubuntu.com/UncomplicatedFirewall](https://wiki.ubuntu.com/UncomplicatedFirewall)  
How to Configure a Firewall with UFW - [linode.com/docs/guides/configure-firewall-with-ufw/](https://www.linode.com/docs/guides/configure-firewall-with-ufw/)  
[serverfault://ubuntu-ufw-set-a-rule-on-a-per-interface-basis](https://serverfault.com/questions/270715/ubuntu-ufw-set-a-rule-on-a-per-interface-basis)