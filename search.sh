#!/bin/bash

## Author: Hernando Ramos <aku@esblender.org>
## Menu from
## https://serverfault.com/questions/144939/multi-select-menu-in-bash-script
## 2013-05-10 - Dennis Williamson

OS=$(uname)

if [ ${OS} = "Darwin" ];
then
  OPENCMD="open"
else
  OPENCMD="xdg-open"
fi

. ./settings.conf

choice () {
  local choice=$1
  if [[ ${opts[choice]} ]]
  then
    opts[choice]=
  else
    opts[choice]=+
  fi
}


akubanner () {
  echo "
  /// /// /// /// /// /// /// /// /// /// /// /// /// /// /// ///

  ╦ ╦╔═╗╦═╗╔╗╔╔═╗╔╗╔╔╦╗╔═╗
  ╠═╣║╣ ╠╦╝║║║╠═╣║║║ ║║║ ║
  ╩ ╩╚═╝╩╚═╝╚╝╩ ╩╝╚╝═╩╝╚═╝
  ╔═╗╔═╗╔═╗╦═╗╔═╗╦ ╦
  ╚═╗║╣ ╠═╣╠╦╝║  ╠═╣
  ╚═╝╚═╝╩ ╩╩╚═╚═╝╩ ╩
  ╔═╗╔╗╔╔═╗╦╔╗╔╔═╗
  ║╣ ║║║║ ╦║║║║║╣
  ╚═╝╝╚╝╚═╝╩╝╚╝╚═╝

  /// /// /// /// /// /// /// /// /// /// /// /// /// /// /// ///"
}

akubanner
echo "What are you looking for?"

read varsearch

echo -e ">   >>   >>>   >>>>   >>>>>   >>>>>>   searching...\n"
#       Extraer lineas de texto con el string buscado. La segunda opción funciona para coincidencias parciales en palabras
#grep -rnwi /Users/nando/Desktop/INDEXADO/ -e ""
for vol in $REL_PATHS; do
  idxfile=$(find ${BASE_PATH}${vol} -name "index_${vol}.idx")
  grepout=$(grep -ri ${idxfile} -e "${varsearch}")
  echo -e $grepout
done
echo -e "/// /// /// /// /// /// /// /// /// /// /// /// /// /// /// ///"
echo -e "The End"
echo -e "/// /// /// /// /// /// /// /// /// /// /// /// /// /// /// ///\n"

while :
do
  clear
  #options=("1 ${}")
  select $opt in "${grepout[@]}"
  do
    case $opt in
      "1 ${opts[1]}")
        choice 1
        break
        ;;
      "2 ${opts[2]}")
        choice 2
        break
        ;;
      "Done")
        break 2
        ;;
      *) printf '%s\n' 'Invalid option';;
    esac
  done
done
