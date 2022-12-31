FROM julia:latest

RUN \
    apt update && \
    apt install -y clang && \
    julia -e 'import Pkg; Pkg.add(url="https://github.com/Chemical118/KrCli.jl");'

ENV PATH=$PATH:/root/.julia/bin

COPY docker-entrypoint.sh /usr/local/bin/
ENTRYPOINT ["docker-entrypoint.sh"]
CMD []