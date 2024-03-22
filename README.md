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
