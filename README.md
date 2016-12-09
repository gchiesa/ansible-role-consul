gchiesa.oel7consul
==================

This role install and setup a consul cluster (docker based)

Requirements
------------
This role requires the gchiesa.oel7docker to run

Role Variables
--------------

```
# proxy server to use to install packages
proxy: ""

# bootstrap node for consul cluster
consul_bootstrap_hostname: "{{ inventory_hostname }}"
```

Dependencies
------------
This role requires the ```gchiesa.oel7docker``` to run

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: consul_cluster
      roles:
         - { role: gchiesa.consul, consul_bootstrap_hostname: "consul01.example.com" }

License
-------

BSD
