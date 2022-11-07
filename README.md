# Info
Base image to build websites with react.

This container provides an easy and simple way to use react to build your standard web project.
Contains some basic modules for modern web apps (like web3).

## Volumes
* /app/src - your react app
* /app/public - your react app public / static content
* /app/build - your react app production build

## Run
Starting development
```shell
docker run --name react \
  -v /.../app/src:/app/src \
  -v /.../app/public:/app/public \
  -d 11notes/react:[tag]
```

Build project
```shell
docker run --name react \
  -v /.../app/src:/app/src \
  -v /.../app/public:/app/public \
  -v /.../app/build:/app/build \
  -d 11notes/react:[tag] \
    build
```

## Build with
* [React](https://reactjs.org/) - React
* [React Redux](https://react-redux.js.org/) - React Redux
* [Web3](https://www.npmjs.com/package/web3) - web3
* [Iconify](https://docs.iconify.design/icon-components/react/) - Iconify
* [Axios](https://www.npmjs.com/package/axios) - Axios
* [Alpine Linux](https://alpinelinux.org/) - Alpine Linux
* [NodeJS](https://nodejs.org/en/) - NodeJS

## Tipps
* Use a webproxy to terminate the SSL connection and proxy to :3000 of this container
* Mount /build to your nginx-cluster to update production website