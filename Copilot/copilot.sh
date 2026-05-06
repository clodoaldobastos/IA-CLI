docker run -it \
  -v "$HOME/.config/copilot:/root/.config/copilot" \
  -v $PWD:/work \
  -w /work \
  --net=host \
  -v /var/run/docker.sock:/var/run/docker.sock \
  copilot-cli:1.0.30