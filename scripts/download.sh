#!/bin/bash

# check if download directory has been set
if [ -z ${URL_DOWNLOAD_DIR+x} ]; then
  URL_DOWNLOAD_DIR="../downloads/"
fi

URL_LIST_FILE="./url-list.txt"

# check url-list file exists
echo "Checking ${URL_LIST_FILE} exists..."
if [ -f $URL_LIST_FILE ]
then
  echo "File exists, downloading all the files into ${URL_DOWNLOAD_DIR}...\n"
  # download a list of urls
  wget -x -i $URL_LIST_FILE -P $URL_DOWNLOAD_DIR
else
  echo "File doesnt exist. Please create ${URL_LIST_FILE} and try again."
fi
