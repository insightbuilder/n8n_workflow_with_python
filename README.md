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

# Installation Instructions:

Ensure you have docker and docker-compose
application is installed in our OS.

## n8n with python:

The docker file used to build the image is
different. The python support is incorporated into
the image. The same is updated in the
docker-compose

The docker-compose file, along with the Dockerfile
are self-sufficient to get the n8n interface to be
hosted locally.

## n8n with pdf and python:

Updated the Dockerfile with both binaries required
for creating the pdf and python. The earlier
dockerfile is renamed as Dockerfil0

To create the docker image execute the below
command

docker built -t n8n-pdf-python .

**Testing html to pdf conversion on cli:**

After docker image is created, execute the below

docker run -it -v $(pwd)/shared:/data/shared -p
5678:5678 n8n-pdf-python /bin/sh

Get or create a simple html file and name it test.html.
In the shell spawned from the docker image run the
command

wkhtmltopdf /data/shared/test.html
/data/shared/test.pdf

You must see a test.pdf file.

**Adding the Docker Image to docker-compose file:**

After that update the docker-compose.yml file in the current folder with
the n8n-pdf-python image. The earlier version
docker-compose file is renamed to
docker-compose0.yml
