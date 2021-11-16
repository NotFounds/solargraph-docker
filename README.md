# solargraph-docker
[![Docker](https://github.com/NotFounds/solargraph-docker/actions/workflows/docker-publish.yml/badge.svg?branch=main)](https://github.com/NotFounds/solargraph-docker/actions/workflows/docker-publish.yml)  
A docker image for [solargraph](https://github.com/castwide/solargraph/).

## Requirements
- docker

## How to use
Pull and Run.
```sh
$ docker run ghcr.io/notfounds/solargraph-docker:latest
```

## Getting Started with VSCode
### Requirements
- [Visual Studio Code](https://code.visualstudio.com/)
- [vscode-solargraph](https://github.com/castwide/vscode-solargraph)
- [Build image](#build-image)

### Configuration for VSCode
```json
{
  "solargraph.useBundler": false,
  "solargraph.transport": "external",
  "solargraph.externalServer": {
    "host": "localhost",
    "port": 7658
  },
}
```

### Run the solargraph server and Open Ruby project
1. [Start container](#start-container)
2. Open your ruby project


## For development
### Build image
It builds an image named "solargraph" and tag it with version.
```sh
$ make build
```

### Start container
It runs an image with port 7658 and named "solargraph"
```sh
$ make start
72aac5173c7f6aba7e6bca3a8bd6087cb549c3ebdb691db2b4ca0f3c42d7e4df
$ docker ps
CONTAINER ID   IMAGE            COMMAND                  CREATED         STATUS        PORTS                                       NAMES
72aac5173c7f   solargraph:1.1   "/usr/local/bundle/b…"   3 seconds ago   Up 1 second   0.0.0.0:7658->7658/tcp, :::7658->7658/tcp   solargraph
```

### Stop container
It stops the container
```sh
$ make stop
```
