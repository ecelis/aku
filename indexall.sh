#!/bin/bash

## Author: Hernando Ramos <aku@esblender.org>

## Read general settings
. ./settings.conf

echo -e "Indexing directories...\n"

for vol in $REL_PATHS; do
  echo ${BASE_PATH}${vol}
  find ${BASE_PATH}${vol} -maxdepth 8 -type f > ${BASE_PATH}${vol}/index_${vol}.idx
done

echo -e "\n>>>>>>>>  Ready!!! Directories fully indexed.  <<<<<<<<\n"
