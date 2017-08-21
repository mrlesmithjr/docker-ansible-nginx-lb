<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**  *generated with [DocToc](https://github.com/thlorenz/doctoc)*

- [docker-ansible-nginx-lb:alpine-tcp-lb](#docker-ansible-nginx-lbalpine-tcp-lb)
  - [Purpose](#purpose)
  - [Requirements](#requirements)
  - [Consuming](#consuming)
  - [License](#license)
  - [Author Information](#author-information)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

# docker-ansible-nginx-lb:alpine-tcp-lb

A [Docker](https://www.docker.com) container to load-balance generic services on `TCP`..
`mrlesmithjr/nginx-lb:alpine-tcp-lb`

## Purpose

To front-end TCP load-balancing to your containerized TCP services. Allowing
for scaling out.

## Requirements

Define your [Docker](https://www.docker.com) service group-name when spinning up.

## Consuming

```bash
docker run -d -p 5601:5601 \
  -e BACKEND_SERVICE_NAME="kibana-web" \
  -e BACKEND_SERVICE_PORT="5601" \
  -e FRONTEND_SERVICE_PORT="5601" \
  mrlesmithjr/nginx-lb:alpine-tcp-lb
```

## License

MIT

## Author Information

Larry Smith Jr.

-   [@mrlesmithjr](https://www.twitter.com/mrlesmithjr)
-   [EverythingShouldBeVirtual](http://www.everythingshouldbevirtual.com)
-   [mrlesmithjr.com](http://mrlesmithjr.com)
-   mrlesmithjr [at] gmail.com
