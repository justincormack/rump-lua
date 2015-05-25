#!/bin/sh

export CC=rumprun-cc

curl http://www.lua.org/ftp/lua-5.1.5.tar.gz | tar xzf -
cd lua-5.1.5
sed -i 's/CC= gcc//' src/Makefile
make bsd
make install
make clean
