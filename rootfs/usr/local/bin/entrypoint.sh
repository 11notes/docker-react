#!/bin/ash
cd /app

if [ -z "${1}" ]; then
    set -- "npm" start
else
    case "${1}" in
        build)
            set -- "npm" run build
        ;;
    esac
fi

exec "$@"