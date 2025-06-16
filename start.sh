#!/bin/bash

# Initialize ファイルが存在しなかったら runtime 用の image を build する
if [ ! -e .initialized  ]; then
    pushd docker/langs
    ./build.sh
    popd

    pushd library-checker-judge
    ./run_protoc.sh
    popd
fi

touch .initialized
docker compose up -d --build
open http://localhost:5173
