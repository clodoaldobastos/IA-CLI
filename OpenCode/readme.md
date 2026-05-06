## Build para criar imagem.
* docker build -t copilot-cli:1.14.20 -f Dockerfile .

## Run container para uso do CLI

✅ Comando correto (Docker do host)

docker run -it \
  --privileged \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v $PWD:/work \
  -w /work \
  --name opencode-cli \
  opencode-cli:1.14.20
