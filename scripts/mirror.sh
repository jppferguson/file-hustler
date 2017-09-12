#!/bin/bash

# check if download directory has been set
if [ -z ${URL_DOWNLOAD_DIR+x} ]; then
  URL_DOWNLOAD_DIR="../downloads/"
fi

# where to put log file
MIRROR_URL=$1
MIRROR_DOMAIN=$(echo "${MIRROR_URL}" | cut -d'/' -f3)
MIRROR_LOG="${URL_DOWNLOAD_DIR}${MIRROR_DOMAIN}-mirror.log"

# mirror the site
wget --convert-links -r $MIRROR_URL -P $URL_DOWNLOAD_DIR -o $MIRROR_LOG --html-extension --wait=2
