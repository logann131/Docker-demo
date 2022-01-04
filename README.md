# Docker_demo

- docker build -t [name] . : build an image
- -t = tag, gives the image a nametag
- docker run [imageID] : run the image -> create a container
- docker run -p [localPORT]:[8080] [imageID] -> run the image -> create a container listen to localPORT

## Basica commands

- docker container ls || docker ps : show containers
- docker stop [containerID]

- docker images : show images
- docker image rm [imageID || imageName:version]

- docker exec -it [containerID] bash : Create new bash session

### Docker Compose

- Docker compose allows multible containers run at once
- First build docker-compose.yml
- docker compose up : run the compose
- docker compose down : stop all the containers
