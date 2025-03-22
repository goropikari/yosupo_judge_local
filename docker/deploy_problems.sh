#!/bin/bash

FORCE=${FORCE_UPLOAD:-false}
ulimit -s unlimited
uploader/uploader -force=${FORCE} -dir $PROBLEMS_PATH $(find $PROBLEMS_PATH -name info.toml -not -path '*/test/*')
