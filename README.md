# Docker_demo

## Demo
This repo's image is pushed to the docker hub at: [docker/node-app](https://hub.docker.com/repository/docker/lgad31vn/node-app)
  1. Pull the image
  
  ```docker pull lgad31vn/node-app```
  
  2. Run the image in detach mode with an assigned port 
  
  ``` docker run -d -p 5001:8080 lgad31vn/node-app ```
  
  3. Access localhost:5001 to see the express server running


## IMPORTANT
### DOCKERFILE is a blueprint for building DOCKER IMAGE
### DOCKER IMAGE is a template for running DOCKER CONTAINERS
### CONTAINER is a running process

### A Developer can define the code environment with a docker file, then any other developer 
### can use that Dockerfile to recreate the environment = image


# Docker Build
- docker build -t [name] . : build an image
- -t = tag, gives the image a nametag
- docker run [imageID] : run the image -> create a container
- docker run -p [localPORT]:[8080] [imageID] -> run the image -> create a container listen to localPORT

# Basic commands

- docker container ls || docker ps : show containers
- docker stop [containerID]

- docker images : show images
- docker image rm [imageID || imageName:version]

- docker exec -it [containerID] bash : Create new bash session

# Docker Compose

- Docker compose allows multible containers run at once
- First build docker-compose.yml
- docker compose up : run the compose
- docker compose down : stop all the containers
