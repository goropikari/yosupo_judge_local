#!/bin/bash

pushd library-checker-judge
docker compose up -d --build --wait
popd

pushd library-checker-judge/judge
go run . &
popd

pushd library-checker-frontend
npm run dev &
popd
