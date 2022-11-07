# :: Header
	FROM 11notes/node:lts

# :: Run
	USER root

	# :: prepare
		RUN set -ex; \
			npm install -g npm@latest;

	# :: install
		RUN set -ex; \
			apk add --update --no-cache \
				git; \
			npx create-react-app app; \
			cd /app; \
			npm install \
				react-redux \
				@reduxjs/toolkit \
				react-router-dom \
				react-uuid \
				sass \
				@iconify/react \
				axios \
				web3; \
			mv /app/node_modules /;

	# :: cleanup
		RUN set -ex; \
			rm -f /app/README.md; \
			rm -rf /app/src/*;

	# :: copy root filesystem changes
        COPY ./rootfs /

    # :: docker -u 1000:1000 (no root initiative)
        RUN set -ex; \
			chown -R node:node \
				/app;

# :: Volumes
	VOLUME ["/app/src","/app/public", "/app/build"]

# :: Start
	RUN set -ex; chmod +x /usr/local/bin/entrypoint.sh
	USER node
	ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]