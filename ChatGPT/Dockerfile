FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive
ENV NODE_VERSION=20

RUN apt-get update && \
    apt-get install -y curl ca-certificates gnupg bash && \
    rm -rf /var/lib/apt/lists/*

RUN curl -fsSL https://deb.nodesource.com/setup_${NODE_VERSION}.x | bash - && \
    apt-get install -y nodejs

WORKDIR /opt/chatgpt-cli

RUN npm init -y && \
    npm install openai readline-sync && \
    npm pkg set type=module

# CLI dentro do contexto do node_modules
COPY build/chatgpt.js /opt/chatgpt-cli/chatgpt.js

# wrapper global
RUN printf '#!/bin/bash\nnode /opt/chatgpt-cli/chatgpt.js "$@"\n' > /usr/local/bin/chatgpt

RUN chmod +x /usr/local/bin/chatgpt

CMD ["/bin/bash"]