FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

ARG OPENCODE_VERSION=v1.14.20

# Define diretório padrão dentro do container
WORKDIR /work

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    ca-certificates curl tar jq && \
    rm -rf /var/lib/apt/lists/*

RUN set -eux; \
    URL=$(curl -s https://api.github.com/repos/anomalyco/opencode/releases/tags/$OPENCODE_VERSION \
        | jq -r '.assets[] | select(.name == "opencode-linux-x64.tar.gz") | .browser_download_url'); \
    \
    if [ -z "$URL" ] || [ "$URL" = "null" ]; then \
        echo "Release ou asset não encontrado: $OPENCODE_VERSION"; \
        exit 1; \
    fi; \
    \
    echo "Downloading: $URL"; \
    curl -L -o /tmp/opencode.tar.gz "$URL"; \
    \
    mkdir -p /tmp/opencode; \
    tar -C /tmp/opencode -xzf /tmp/opencode.tar.gz; \
    \
    install -m 755 /tmp/opencode/opencode /usr/local/bin/opencode; \
    \
    /usr/local/bin/opencode --version || true

# ENTRYPOINT ["/usr/local/bin/opencode"]
