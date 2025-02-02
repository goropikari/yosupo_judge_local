#!/bin/bash

FORCE=${FORCE_UPLOAD:-false}
ulimit -s unlimited
pushd library-checker-judge/uploader
go run . -force=${FORCE} -dir $PROBLEMS_PATH $(find $PROBLEMS_PATH -name info.toml -not -path '*/test/*')
popd
