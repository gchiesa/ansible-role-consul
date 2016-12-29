gchiesa.consul
==================

This role install and setup a consul cluster (docker based) on Oracle Linux 7 and CentOS 7

Requirements
------------
This role requires the gchiesa.docker to run

Role Variables
--------------

```
# proxy server to use to install packages
proxy: ""

# bootstrap node for consul cluster
consul_bootstrap_hostname: "{{ inventory_hostname }}"

# set true if the host is natted
host_natted: false
```

Dependencies
------------
This role requires the ```gchiesa.docker``` to run

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: consul_cluster
      roles:
         - { role: gchiesa.consul, consul_bootstrap_hostname: "consul01.example.com" }

License
-------

BSD
