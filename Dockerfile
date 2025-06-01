FROM node:18-bullseye

# Set up working directory
WORKDIR /app

# Install dependencies
RUN apt-get update && \
    apt-get install -y \
    ca-certificates \
    gnupg \
    curl \
    build-essential \
    xvfb \
    libfontconfig \
    wkhtmltopdf \
    python3 \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

# Install n8n
RUN npm install -g n8n

# Create directory for user data
RUN mkdir /root/.n8n

EXPOSE 5678

CMD ["n8n"]
