FROM mrlesmithjr/alpine-ansible

MAINTAINER Larry Smith Jr. <mrlesmithjr@gmail.com>

ENV BACKEND_SERVICE_PORT="80" \
    FRONTEND_SERVICE_PORT="8080" \
    RANCHER_ACCESS_KEY="" \
    RANCHER_HOST="" \
    RANCHER_HOST_PORT="8080" \
    RANCHER_PROJECT_ID="1a5" \
    RANCHER_SECRET_KEY="" \
    RANCHER_SERVICE_NAME="" \
    RANCHER_STACK_NAME=""

# Copy Ansible Related Files
COPY config/ansible/ /

# Run Ansible playbook
RUN ansible-playbook -i "localhost," -c local /playbook.yml && \
    rm -rf /tmp/* && \
    rm -rf /var/cache/apk/*

# Copy Docker Entrypoint
COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]

COPY config/supervisord/*.ini /etc/supervisor.d/

COPY config/rancher-gen/ /etc/

EXPOSE 80 443 8080
