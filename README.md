Repo Info
=========
A [Docker] container to load-balance syslog services on `514/UDP`..
`mrlesmithjr/nginx-lb:ubuntu-syslog-lb`

Purpose
-------
To front-end syslog load-balancing to your containerized syslog services. Allowing
for scaling out of syslog UDP services which cannot be load-balanced with HAProxy.

Requirements
------------
Define your [Docker] service group-name when spinning up.

Consuming
---------
```
docker run -d -p 514:514/udp \
  -e BACKEND_SERVICE_NAME="syslog-servers" \
  -e BACKEND_SERVICE_PORT="514" \
  -e FRONTEND_SERVICE_PORT="514" \
  mrlesmithjr/nginx-lb:ubuntu-syslog-lb
```

License
-------

BSD

Author Information
------------------

Larry Smith Jr.
- [@mrlesmithjr]
- [everythingshouldbevirtual.com]
- [mrlesmithjr@gmail.com]

[Alpine]: <https://alpinelinux.org/>
[Ansible]: <https://www.ansible.com/>
[Docker]: <https://www.docker.com>
[@mrlesmithjr]: <https://twitter.com/mrlesmithjr>
[everythingshouldbevirtual.com]: <http://everythingshouldbevirtual.com>
[mrlesmithjr@gmail.com]: <mailto:mrlesmithjr@gmail.com>
