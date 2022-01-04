## IMPORTANT
## DOCKERFILE is a blueprint for building DOCKER IMAGE
## DOCKER IMAGE is a template for running DOCKER CONTAINERS
## CONTAINER is a running process

## A Developer can define the code environment with a docker file, then any other developer 
## can use that Dockerfile to recreate the environment = image



## FROM sets baseimage:<version> tag
## FROM node:12 alpine
FROM node:12 

## WORKDIR sets the working directory for any subsequent like ADD, COPY, CMD, etc.
WORKDIR /app

## COPY help keep the node modules up to date
## COPY take two args, 1st arg: local files AND 2nd arg is the location in the container
## This acts like copy local package.json to current working location in the container
COPY package*.json ./


## RUN is like open a terminal to install the command
RUN npm install 

## Now after run npm install, we'll copy all the local files to the current working directory
## We DO NOT want the local node_modules directory to be copied over to the container -> create a .dockerignore
## COPY the local source code to container working directory
COPY . .

## Now we have the source code in the docker image
## In order to run code, use an ENV 
ENV PORT=8080

## EXPOSE defines the port the container will listen to during runtime
EXPOSE 8080

## The final instruction should be the CMD instruction
## There can be only one of these CMD per dockerfile 
## CMD tells the container how to run the actual applicaiton
CMD ["yarn", "dev"]


## To build a docker image, use docker build -t <name>
## -t = tag, gives the image a nametag