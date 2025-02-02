#!/bin/bash

FORCE=${FORCE_UPLOAD:-false}
pushd library-checker-judge/uploader
go run . -force=$FORCE -dir $PROBLEMS_PATH $PROBLEMS_PATH/sample/aplusb/info.toml
popd
