# :: Header
  FROM 11notes/node:stable
  ENV APP_VERSION=18.2.0
  ENV APP_ROOT=/app

# :: Run
  USER root

  # :: prepare
    RUN set -ex; \
      npm install -g npm@latest; \
      mkdir -p ${APP_ROOT};

  # :: install
    RUN set -ex; \
      apk add --update --no-cache \
        git; \
      apk upgrade; \
      npx create-react-app app; \
        cd ${APP_ROOT}; \
        npm install \
        react@${APP_VERSION} \
        react-redux \
        @reduxjs/toolkit \
        react-router-dom \
        react-uuid \
        sass \
        @iconify/react \
        axios \
        web3 \
        react-bootstrap \
        bootstrap; \
      mv ${APP_ROOT}/node_modules /;

  # :: cleanup
    RUN set -ex; \
      rm -f ${APP_ROOT}/README.md; \
      rm -rf ${APP_ROOT}/src/*;

  # :: copy root filesystem changes and add execution rights to init scripts
    COPY ./rootfs /
    RUN set -ex; \
      chmod +x -R /usr/local/bin

  # :: set correct permission
    RUN set -ex; \
      chown -R 1000:1000 \
        ${APP_ROOT} \
        /node_modules;

# :: Volumes
  VOLUME ["${APP_ROOT}/src","${APP_ROOT}/public", "${APP_ROOT}/build"]

# :: Start
  USER docker
  ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]