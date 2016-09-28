Repo Info
=========
A [Docker] container to load-balance DNS services on `TCP/UDP`..
`mrlesmithjr/nginx-lb:ubuntu-dns-lb`

Purpose
-------
To front-end DNS load-balancing to your containerized DNS services. Allowing
for scaling out.

Requirements
------------
Define your [Docker] service group-name when spinning up.

Consuming
---------
```
docker run -d -p 53:53 -p 53:53/udp \
  -e BACKEND_SERVICE_NAME="dns-servers" \
  -e BACKEND_SERVICE_PORT="53" \
  -e FRONTEND_SERVICE_PORT="53" \
  mrlesmithjr/nginx-lb:ubuntu-dns-lb
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
