#!/bin/bash

FORCE=${FORCE_UPLOAD:-false}
uploader/uploader  -force=$FORCE -dir $PROBLEMS_PATH $PROBLEMS_PATH/sample/aplusb/info.toml
