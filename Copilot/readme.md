## Criando imagem 
docker build -t copilot-cli:1.0.28 -f Dockerfile .

## Use o script copilot.sh
docker run -it \
  -v "$HOME/.config/copilot:/root/.config/copilot" \
  -v ~/Downloads/matera/aplicar/IaC-Matera-MP:/work \
  -w /work \
  --net=host \
  -v /var/run/docker.sock:/var/run/docker.sock \
  copilot-cli:1.0.28

## Container Copilot mult CLI

docker run -it \
  --name copilot-cli \
  -v ~/ai-platform/shared:/shared \
  -v ~/ai-platform/cache/copilot:/root/.cache \
  -v ~/ai-platform/projects/meu-projeto:/work \
  -w /work \
  copilot-cli
