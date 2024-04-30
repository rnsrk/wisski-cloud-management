# WissKI Cloud API Deamon

Many thanks to [Iqan Shaikh](https://github.com/iqan/node-api-starter) for the node-api-starter project.

## Pre-requisites
- NodeJS & NPM
- MongoDB
- Docker
- Docker Compose

## Getting started

### To Run App
- Clone the repo
```bash
git clone git@github.com:rnsrk/wisski_cloud_api_daemon.git
```

- Change to app dir and install dependencies
```bash 
cd ./wisski_cloud_api_daemon/app && npm i
```

### Build and run docker containers
- Change back to app root Build images
```bash
cd .. && docker compose build
```
- run all containers
```bash
docker compose up -d
```
- Follow logs
```bash
docker logs wisski_cloud_api_daemon -f
```
- To stop
```bash
docker compose down
```

## Routes:
- For healthcheck: http://localhost:2912/wisski-cloud-daemon/api/v1/healthcheck
- For Swagger specs: http://localhost:2912/wisski-cloud-daemon/api/v1/api-specs/
