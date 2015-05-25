# Build Lua with Docker

FROM justincormack/frankenlibc

MAINTAINER Justin Cormack

COPY . /usr/src/lua51

WORKDIR /usr/src/lua51

ENV CC rumprun-cc

RUN ./build.sh && rm -rf lua-5.1.5
