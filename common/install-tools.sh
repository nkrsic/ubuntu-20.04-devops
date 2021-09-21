
# Install yq tool for YAML parsing + editing
# (Useful for common devops tasks)

YQ_URL="https://github.com/mikefarah/yq/releases/download/v4.13.2/yq_linux_amd64"

wget $YQ_URL -O /usr/bin/yq &&\
    chmod +x /usr/bin/yq


