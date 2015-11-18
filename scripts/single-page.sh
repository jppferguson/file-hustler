#!/bin/bash

# check if download directory has been set
if [ -z ${URL_DOWNLOAD_DIR+x} ]; then
  URL_DOWNLOAD_DIR="../downloads/"
fi

# get a single page and all its assets
wget -p --convert-links -nH -nd -P $URL_DOWNLOAD_DIR $1
