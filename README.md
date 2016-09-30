Repo Info
=========
A [Docker] container to load-balance syslog services on `UDP`..
`mrlesmithjr/nginx-lb:alpine-syslog-lb-rancher`

Purpose
-------
To front-end syslog load-balancing to your containerized syslog services. Allowing
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
docker run -d -p 514:514/udp \
  -e BACKEND_SERVICE_PORT="514" \
  -e FRONTEND_SERVICE_PORT="514" \
  -e RANCHER_ACCESS_KEY="FDE76F55B411624BACB2" \
  -e RANCHER_HOST="docker00.etsbv.internal" \
  -e RANCHER_HOST_PORT="8080" \
  -e RANCHER_PROJECT_ID="1a5" \
  -e RANCHER_SECRET_KEY="Yerrhb4sbmXyhzT4ihn5teBTkoKcnxbGzKvEptva" \
  -e RANCHER_SERVICE_NAME="syslog-collector" \
  -e RANCHER_STACK_NAME="ELK"
  mrlesmithjr/nginx-lb:alpine-syslog-lb-rancher-lb
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
