# docker-demo

The `Dockerfile` defines a simple docker image containing a Node.js application.

It is based on `node:alpine` as it is significantly smaller than `node:latest`.
We copy the both `app.js` and `package.json` to `/usr/src/app/` and install the dependencies (i.e. `Express.js`) using `npm`.
`npm start` then executes the app, starting the web server.

The application itself is an ever so slightly adapted example from the [Express.js Getting Started Guide](https://expressjs.com/en/starter/hello-world.html).
The app listens on port `3000` of all local interfaces (`0.0.0.0`).

The image can be built and executed using the `docker` command:

```sh
docker build . -t docker-demo
docker run -p 8080:3000 -it docker-demo
```

If everything works correctly, the app is then available through http://localhost:8080.