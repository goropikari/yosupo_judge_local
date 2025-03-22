#!/bin/bash

# Initialize ファイルが存在しなかったら runtime 用の image を build する
if [ ! -e .initialized  ]; then
    pushd library-checker-judge
    ./langs/build.sh
    ./gen_protoc.sh
    popd
fi

touch .initialized
docker compose up -d --build
open http://localhost:5173
