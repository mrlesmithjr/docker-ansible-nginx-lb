Repo Info
=========
A [Docker] container to load-balance DNS services on `TCP/UDP`..
`mrlesmithjr/nginx-lb:ubuntu-dns-lb-rancher`

Purpose
-------
To front-end DNS load-balancing to your containerized DNS services. Allowing
for scaling out. Within this container [rancher-gen] is running to communicate
with the [Rancher] API to watch for changes to containers based on service names.
When a change is detected it will regenerate the NGINX configuration and reload
the service.

Requirements
------------
Generate an API key to use with the Rancher web management. You will also need
to know what your Rancher project id (Environment) is. The example below uses
the `Default` environment project id `1a5`.
Define your [Docker] service group-name when spinning up.

Consuming
---------
```
docker run -d -p 53:53 -p 53:53/udp \
  -e BACKEND_SERVICE_PORT="53" \
  -e FRONTEND_SERVICE_PORT="53" \
  -e RANCHER_ACCESS_KEY="FDE76F55B411624BACB2" \
  -e RANCHER_HOST="docker00.etsbv.internal" \
  -e RANCHER_HOST_PORT="8080" \
  -e RANCHER_PROJECT_ID="1a5" \
  -e RANCHER_SECRET_KEY="Yerrhb4sbmXyhzT4ihn5teBTkoKcnxbGzKvEptva" \
  -e RANCHER_SERVICE_NAME="pdns-authoritative" \
  -e RANCHER_STACK_NAME="DDI" \
  mrlesmithjr/nginx-lb:ubuntu-dns-lb-rancher
```

Importing into Rancher stack:
`docker-compose.yml`
```
dns-lb:
  ports:
  - 53:53/tcp
  - 53:53/udp
  environment:
    BACKEND_SERVICE_PORT: '53'
    FRONTEND_SERVICE_PORT: '53'
    RANCHER_ACCESS_KEY: FDE76F55B411624BACB2
    RANCHER_HOST: docker00.etsbv.internal
    RANCHER_HOST_PORT: '8080'
    RANCHER_PROJECT_ID: 1a5
    RANCHER_SECRET_KEY: Yerrhb4sbmXyhzT4ihn5teBTkoKcnxbGzKvEptva
    RANCHER_SERVICE_NAME: pdns-authoritative
  labels:
    io.rancher.container.pull_image: always
    io.rancher.container.dns: 'true'
  tty: true
  image: mrlesmithjr/nginx-lb:ubuntu-dns-lb-rancher
  links:
  - 'pdns-authoritative:'
  stdin_open: true
  net: host
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

[Ansible]: <https://www.ansible.com/>
[Docker]: <https://www.docker.com>
[@mrlesmithjr]: <https://twitter.com/mrlesmithjr>
[everythingshouldbevirtual.com]: <http://everythingshouldbevirtual.com>
[mrlesmithjr@gmail.com]: <mailto:mrlesmithjr@gmail.com>
