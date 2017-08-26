<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->

- [docker-ansible-nginx-lb:alpine-udp-lb](#docker-ansible-nginx-lbalpine-udp-lb)
  - [Purpose](#purpose)
  - [Requirements](#requirements)
  - [Consuming](#consuming)
  - [License](#license)
  - [Author Information](#author-information)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

# docker-ansible-nginx-lb:alpine-udp-lb

A [Docker](https://www.docker.com) container to load-balance generic services on `UDP`..
`mrlesmithjr/nginx-lb:alpine-udp-lb`

## Purpose

To front-end UDP load-balancing to your containerized UDP services. Allowing
for scaling out.

## Requirements

Define your [Docker](https://www.docker.com) service group-name when spinning up.

## Consuming

```bash
docker run -d -p 53:53/udp \
  -e BACKEND_SERVICE_NAME="dns" \
  -e BACKEND_SERVICE_PORT="53" \
  -e FRONTEND_SERVICE_PORT="53" \
  mrlesmithjr/nginx-lb:alpine-udp-lb
```

## License

MIT

## Author Information

Larry Smith Jr.

-   [@mrlesmithjr](https://www.twitter.com/mrlesmithjr)
-   [EverythingShouldBeVirtual](http://www.everythingshouldbevirtual.com)
-   [mrlesmithjr.com](http://mrlesmithjr.com)
-   mrlesmithjr [at] gmail.com
