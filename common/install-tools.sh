
## Update APT

apt-get update && apt --yes upgrade

# Install yq tool for YAML parsing + editing
# (Useful for common devops tasks)

YQ_URL="https://github.com/mikefarah/yq/releases/download/v4.13.2/yq_linux_amd64"

wget $YQ_URL -O /usr/bin/yq &&\
    chmod +x /usr/bin/yq

## Install Node 16.x

curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
apt install --yes nodejs

## Install useful Python 3 packages

apt install --yes python3-venv python-setuptools python3-pip