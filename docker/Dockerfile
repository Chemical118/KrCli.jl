FROM julia:latest

LABEL org.opencontainers.image.authors="wowo0118@korea.ac.kr"

RUN \
    apt update && \
    apt install -y clang && \
    julia -e 'import Pkg; Pkg.add(url="https://github.com/Chemical118/KrCli.jl"); using KrCli; KrCli.comonicon_install();'

ENV PATH=$PATH:/root/.julia/bin