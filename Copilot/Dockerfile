FROM ubuntu:22.04

# Avoid interactive prompts during builds
ENV DEBIAN_FRONTEND=noninteractive

# Allow overriding Copilot version and optional SHA256 via build-args
ARG COPILOT_VERSION=1.0.30
ARG COPILOT_SHA256="20351e8a253ddd398a3d2c2cd594c13567972bce02ed4c713b32590b3752b1d4"

# Install minimal packages and clean APT caches in one layer
RUN apt-get update && \
    apt-get install -y --no-install-recommends ca-certificates curl && \
    rm -rf /var/lib/apt/lists/*

# Download Copilot, optionally verify SHA256, install and clean up
RUN set -eux; \
    COPILOT_URL="https://github.com/github/copilot-cli/releases/download/v${COPILOT_VERSION}/copilot-linux-x64.tar.gz"; \
    curl --fail --silent --show-error --location -o /tmp/copilot.tar.gz "$COPILOT_URL"; \
    if [ -n "$COPILOT_SHA256" ]; then echo "$COPILOT_SHA256  /tmp/copilot.tar.gz" | sha256sum -c -; fi; \
    tar -C /tmp -xzf /tmp/copilot.tar.gz; \
    mv /tmp/copilot /usr/local/bin/copilot; \
    chmod +x /usr/local/bin/copilot; \
    rm -f /tmp/copilot.tar.gz

#ENTRYPOINT ["/usr/local/bin/copilot"]
