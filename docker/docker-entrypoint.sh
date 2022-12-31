#!/bin/sh
set -eu

if [ ! -f "/root/.julia/bin/krcli" ]; then
    julia -e 'using KrCli; KrCli.comonicon_install();'
fi

exec "$@"
