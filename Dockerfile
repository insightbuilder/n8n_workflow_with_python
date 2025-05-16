FROM n8nio/n8n
USER root
RUN apk add --update python3 py3-pip
USER node
RUN python3 -m pip install --user --break-system-packages pipx
RUN python3 -m pipx ensurepath
