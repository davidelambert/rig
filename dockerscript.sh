#!/bin/bash

## RUN WITH SUDO!!


# DOCKER CORE SERVICES
# ====================

# remove any existing installation
# apt-get remove docker docker-engine docker.io containerd runc

# install dependencies
apt-get update
apt-get install apt-transport-https ca-certificates curl gnupg lsb-release

# add docker gpg key & repo to apt
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null

# install
apt-get update
apt-get install docker-ce docker-ce-cli containerd.io

# add user to docker group so is not required
# NOTE: it may be necessary to log out of user session (not just bash)
usermod -aG docker $USER
newgrp docker

# uncomment to start docker services on boot if not Ubuntu/Fedora
# systemctl enable docker.service
# systemctl enable containerd.service



# DOCKER COMPOSE
# ==============

# install binary and set execution permission
curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

# install bash completion
curl -L https://raw.githubusercontent.com/docker/compose/1.29.2/contrib/completion/bash/docker-compose -o /etc/bash_completion.d/docker-compose

