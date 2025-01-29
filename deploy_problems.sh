#!/bin/bash

pushd library-checker-judge/uploader
go run . -dir $PROBLEMS_PATH $(find $PROBLEMS_PATH -name info.toml -not -path '*/test/*')
popd
