Repo Info
=========
A [Docker] container to load-balance generic services on `TCP`..
`mrlesmithjr/nginx-lb:ubuntu-tcp-lb`

Purpose
-------
To front-end TCP load-balancing to your containerized TCP services. Allowing
for scaling out.

Requirements
------------
Define your [Docker] service group-name when spinning up.

Consuming
---------
```
docker run -d -p 5601:5601 \
  -e BACKEND_SERVICE_NAME="kibana-web" \
  -e BACKEND_SERVICE_PORT="5601" \
  -e FRONTEND_SERVICE_PORT="5601" \
  mrlesmithjr/nginx-lb:ubuntu-tcp-lb
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
