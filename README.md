# docker-demo

The `Dockerfile` defines a simple docker image containing a Node.js application.

It is based on `node:alpine` as it is significantly smaller than `node:latest`.
It copies `app.js` to `/usr/src/app/app.js` in the container and executes the module through the `node` executable.

The application itself is an ever so slightly adapted example from the [Node.js Getting Started Guide](https://nodejs.org/en/docs/guides/getting-started-guide/).
The app listens on port `3000` of all local interfaces (`0.0.0.0`).

The image can be built and executed using the `docker` command:

```sh
docker build . -t docker-demo
docker run -p 8080:3000 -it docker-demo
```

If everything works correctly, the app is then available through http://localhost:8080.