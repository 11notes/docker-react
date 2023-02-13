#!/bin/ash
cd /app

if [[ -z "${REACT_PORT}" ]]; then
  REACT_PORT=3000
fi

if [ -z "${1}" ]; then
    sed -ir "s/\"start\": \"react-scripts start\"/\"start\": \"PORT=${REACT_PORT} react-scripts start\"/" /app/package.json
    set -- "npm" start
else
    case "${1}" in
        build)
            set -- "npm" run build
        ;;
    esac
fi

exec "$@"