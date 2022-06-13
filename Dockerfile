# The minimum environment (Node, php, etc...)
FROM node:10-alpine

# Use RUN to execute classic command as mkdir, cd, etc...
RUN mkdir -p /usr/src/app/

WORKDIR /usr/src/app/
COPY package.json ./
COPY ./ ./

RUN npm install

# Use EXPOSE to open a port to the Docker machine, for example 80, 4242, etc...
EXPOSE 8081

# The ENTRYPOINT & CMD let you tell to Docker what to do when the container is mounted
ENTRYPOINT [ "npm", "run", "development" ]