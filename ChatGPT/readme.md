## criando a imagem do CLI
docker build -t chatgpt-cli .

## Antes de iniciar o container:
export OPENAI_API_KEY="colocar sua chave aqui"

## Inicindo CLI
docker run -it -e $OPENAI_API_KEY  chatgpt-cli
