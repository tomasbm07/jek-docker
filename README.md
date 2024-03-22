# Formação Docker - JeKnowledge

## Instalação

1. Descarregar e instalar o [Docker Desktop](https://www.docker.com/products/docker-desktop/) em windows e macOS

## Fase 1

### Desenvolvimento local

1. Criar um ambiente virtual com o comando `python -m venv venv`
2. Ativar o ambiente virtual
    - Windows: `venv\Scripts\activate`
    - Linux/MacOS: `source venv/bin/activate`
3. Correr a aplicação com o comando `python -m flask run`

### Criar container

1. Build container: `docker build . -t jek-app`
2. Run the containner `docker run -p 8000:8000 jek-app`

## Fase 2

1. Correr o comando `docker pull mongo`
2. Alterar o template mostrado na rota "/" para "index_2.html"
3. Correr o comando:

    ```bash
        docker run -p 27017:27017 \
            -e MONGO_INITDB_ROOT_USERNAME=username \
            -e MONGO_INITDB_ROOT_PASSWORD=password \
            mongo
    ```

4. Mudar o hostname da db para "test_mongodb"
5. Correr o comando `docker-compose up --build`

## Comandos Docker

### Docker Hub (Registry)

docker login
docker logout
docker push `or` docker image pull
docker search hello-world

### Getting Images

First Image: <https://hub.docker.com/_/hello-world>
`docker pull hello-world`

### List Images

`docker images` ou `docker image ls`

### Remove images

`docker rmi hello-world`

### Running Images

`docker run hello-world`

### Running Ubuntu Image

`docker run ubuntu`
`docker run -it ubuntu` ou `docker run -it ubuntu /bin/bash`

### Running Ubuntu Image Background

`docker run -i -t -d ubuntu`

### List Containers

`docker ps` ou `docker container ls`
`docker ps -a`

### Build Image

`docker build`
`docker image build Dockerfile`

### Generic Cleanup

`docker system prune`

### Publishing Your Own Images

`docker tag mooshak <user>/<img>:<tag>`
`docker push <user>/<img>`
