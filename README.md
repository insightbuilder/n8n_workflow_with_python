# n8n_workflow_with_python

Repo contains the code, docker compose files that
is used for exploring the n8n workflows and
implementing them in Python.

Initially thought of using the n8n cloud version.
Then found their prices are ridiculous, so did not
want even to try their free trial

## Self-hosted version with Docker Compose:

Using the docker-compose from the below repo

There is a .env file that contains the credentials
to connect to the postgres database. This file
won't get pushed to the repo hub. But its
duplicate file env.txt will get pushed

https://github.com/n8n-io/n8n-hosting/tree/main/docker-compose/withPostgres

## n8n with python:

The docker file used to build the image is
different. The python support is incorporated into
the image. The same is updated in the
docker-compose

The docker-compose file, along with the Dockerfile
are self-sufficient to get the n8n interface to be
hosted locally.
