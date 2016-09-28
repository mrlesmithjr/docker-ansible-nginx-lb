FROM mrlesmithjr/ubuntu-ansible:16.04

MAINTAINER Larry Smith Jr. <mrlesmithjr@gmail.com>

ENV BACKEND_SERVICE_NAME="syslog-servers" \
    BACKEND_SERVICE_PORT="514"

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

COPY config/supervisord/*.conf /etc/supervisor/conf.d/

EXPOSE 514/udp
