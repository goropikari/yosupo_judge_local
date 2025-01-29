#!/bin/bash

pushd library-checker-judge
./langs/build.sh
./gen_protoc.sh
popd

pushd library-checker-judge/judge
go mod tidy
popd


pushd library-checker-frontend
npm install
npm run protoc
popd
