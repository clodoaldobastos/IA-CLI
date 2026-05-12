## Build para criar imagem.
* docker build -t opencode-cli:1.14.20 -f Dockerfile .

## Run container para uso do CLI

✅ Comando correto (Docker do host)

docker run -it \
  --privileged \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v $PWD:/work \
  -w /work \
  --name opencode-cli \
  opencode-cli:1.14.20

Dentro do container digitar: opencode

## Execução recomendada OpenCode 'multi-cli'

docker run -it \
  --privileged \
  --name opencode-cli \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v ~/ai-platform/shared:/shared \
  -v ~/ai-platform/cache/opencode:/root/.cache \
  -v ~/ai-platform/projects/meu-projeto:/work \
  -w /work \
  -e AI_SHARED=/shared \
  -e PROJECT_CONTEXT=/work/.opencode \
  opencode-cli:1.14.20
