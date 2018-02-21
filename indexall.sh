#!/bin/bash

## Author: Hernando Ramos <aku@esblender.org>

## Read general settings
. ./settings.conf

echo -e "Indexing directories...\n"

for vol in $REL_PATHS; do
  echo ${BASE_PATH}${vol}
  find ${BASE_PATH}${vol} -maxdepth 8 -type d > ${BASE_PATH}${vol}/index_${vol}.txt
done

echo -e "\n>>>>>>>>  Ready!!! Directories fully indexed.  <<<<<<<<\n"
