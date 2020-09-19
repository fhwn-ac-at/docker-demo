FROM node:alpine

WORKDIR /usr/src/app

# copy app and package definition
COPY . .

# install dependencies
RUN [ "npm", "install" ]

# start the server
CMD [ "npm", "start" ]

EXPOSE 3000