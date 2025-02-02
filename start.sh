#!/bin/bash

SCRIPT_DIR=$(cd $(dirname $0); pwd)

pushd library-checker-judge
docker compose up -d --build --wait
popd

pushd library-checker-frontend
npm run dev &
popd

${SCRIPT_DIR}/deploy_aplusb.sh

pushd library-checker-judge/judge
go run .
popd
