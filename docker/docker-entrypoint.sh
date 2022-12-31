#!/bin/sh
set -eu

echo "change test"

if [ ! -f "/root/.julia/bin/krcli" ]; then
    exec julia -e 'using KrCli; KrCli.comonicon_install();'
fi

if [ "$#" -eq 0 ] || [ "${1#-}" != "$1" ]; then
	exec krcli "$@"
fi

exec "$@"