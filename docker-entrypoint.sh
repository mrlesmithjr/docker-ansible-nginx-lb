#!/bin/sh

ansible-playbook -i "localhost," -c local /docker-entrypoint.yml \
  --extra-vars "backend_service_name=$BACKEND_SERVICE_NAME \
  backend_service_port=$BACKEND_SERVICE_PORT"

exec supervisord -n
