# Alpine :: React
Run React based on Alpine Linux. Small, lightweight, secure and fast 🏔️

## Volumes
* **/app/src** - Directory of  your react app
* **/app/public** - Directory of your react app public / static content
* **/app/build** - Directory of your react app production build

## Run
Starting development
```shell
docker run --name react \
  -v ../src:/app/src \
  -v ../public:/app/public \
  -d 11notes/app:[tag]
```

Build project
```shell
docker run --name react \
docker run --name react \
  -v ../src:/app/src \
  -v ../public:/app/public \
  -v ../build:/app/build \
  -d 11notes/app:[tag] \
    build
```

## Parent
* [11notes/node:stable](https://github.com/11notes/docker-node)

## Build with
* [React](https://reactjs.org)
* [React Redux](https://react-redux.js.org)
* [Web3](https://www.npmjs.com/package/web3)
* [Iconify](https://docs.iconify.design/icon-components/react)
* [Axios](https://www.npmjs.com/package/axios)
* [Alpine Linux](https://alpinelinux.org)
* [NodeJS](https://nodejs.org/en)

## Tips
* Don't bind to ports < 1024 (requires root), use NAT/reverse proxy
* [Permanent Storage](https://github.com/11notes/alpine-docker-netshare) - Module to store permanent container data via NFS/CIFS and more