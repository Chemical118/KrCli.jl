FROM julia:latest

RUN \
    apt-get update && \
    apt-get install -y clang && \
    julia -e 'import Pkg; Pkg.add(url="https://github.com/Chemical118/KrCli.jl");'

ENV PATH=$PATH:/root/.julia/bin

COPY --chmod=777 docker-entrypoint.sh /usr/local/bin/
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["krcli"]