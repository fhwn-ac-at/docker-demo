FROM node:alpine

WORKDIR /usr/src/app
COPY app.js .

CMD [ "node", "app.js" ]

EXPOSE 3000