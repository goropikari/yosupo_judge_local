#!/usr/bin/env bash

set -e

SCRIPT_DIR=$(cd $(dirname $0); pwd)

docker build -t library-checker-images-gcc -f $SCRIPT_DIR/Dockerfile.GCC $SCRIPT_DIR
docker build -t library-checker-images-python3 -f $SCRIPT_DIR/Dockerfile.PYTHON3 $SCRIPT_DIR
docker build -t library-checker-images-pypy -f $SCRIPT_DIR/Dockerfile.PYPY $SCRIPT_DIR
docker build -t library-checker-images-golang -f $SCRIPT_DIR/Dockerfile.GOLANG $SCRIPT_DIR
docker build -t library-checker-images-ruby -f $SCRIPT_DIR/Dockerfile.RUBY $SCRIPT_DIR
