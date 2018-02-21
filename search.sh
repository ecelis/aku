#!/bin/bash

## Author: Hernando Ramos <aku@esblender.org>


. ./settings.conf

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

#
# Hace tiempo trate de encontrara la manera de que en cada string que regresa la busqueda me pusiera un hyperlink a la carpeta correspondiente pero no e encontrado la manera. También quisiera poner algo que hiciera que haga menos verboso la salida de search.sh, pues ahora es mas a menos así:
#
# /Volumes/NANDO_SCRATCH/INDEXADO//Lista_archivos en capturas.txt:/Volumes/VIDEO/001 CAPTURAS/./201709/20170911 ENTREGA DE PATRULLAS EN LA GANADERA VICTORIA
# /Volumes/NANDO_SCRATCH/INDEXADO//Lista_archivos en capturas.txt:/Volumes/VIDEO/001 CAPTURAS/./201709/20170911 ENTREGA DE PATRULLAS EN LA GANADERA VICTORIA/FINALES
# /Volumes/NANDO_SCRATCH/INDEXADO//Lista_archivos en capturas.txt:/Volumes/VIDEO/001 CAPTURAS/./201709/20170911 ENTREGA DE PATRULLAS EN LA GANADERA VICTORIA/master
# /Volumes/NANDO_SCRATCH/INDEXADO//Lista_archivos en capturas.txt:/Volumes/VIDEO/001 CAPTURAS/./201709/20170911 ENTREGA DE PATRULLAS EN LA GANADERA VICTORIA/GRAFICOS
# /Volumes/NANDO_SCRATCH/INDEXADO//Lista_archivos en capturas.txt:/Volumes/VIDEO/001 CAPTURAS/./201709/20170911 ENTREGA DE PATRULLAS EN LA GANADERA VICTORIA/AUDIO
# /Volumes/NANDO_SCRATCH/INDEXADO//Lista_archivos en capturas.txt:/Volumes/VIDEO/001 CAPTURAS/./201709/20170911 ENTREGA DE PATRULLAS EN LA GANADERA VICTORIA/MATERIAL
# /Volumes/NANDO_SCRATCH/INDEXADO//Lista_archivos en capturas.txt:/Volumes/VIDEO/001 CAPTURAS/./201709/20170911 ENTREGA DE PATRULLAS EN LA GANADERA VICTORIA/MATERIAL/OSMO
# /Volumes/NANDO_SCRATCH/INDEXADO//Lista_archivos en capturas.txt:/Volumes/VIDEO/001 CAPTURAS/./201709/20170911 ENTREGA DE PATRULLAS EN LA GANADERA VICTORIA/MATERIAL/100CANON
# /Volumes/NANDO_SCRATCH/INDEXADO//Lista_archivos en capturas.txt:/Volumes/VIDEO/001 CAPTURAS/./201709/20170911 ENTREGA DE PATRULLAS EN LA GANADERA VICTORIA/MATERIAL/CAM 03
# /Volumes/NANDO_SCRATCH/INDEXADO//Lista_archivos en capturas.txt:/Volumes/VIDEO/001 CAPTURAS/./201709/20170911 ENTREGA DE PATRULLAS EN LA GANADERA VICTORIA/MATERIAL/101CANON
# /Volumes/NANDO_SCRATCH/INDEXADO//Lista_archivos en capturas.txt:/Volumes/VIDEO/001 CAPTURAS/./201709/20170911 ENTREGA DE PATRULLAS EN LA GANADERA VICTORIA/PROYECTOS
# /Volumes/NANDO_SCRATCH/INDEXADO//Lista_archivos en capturas.txt:/Volumes/VIDEO/001 CAPTURAS/./201709/20170911 ENTREGA DE PATRULLAS EN LA GANADERA VICTORIA/PROYECTOS/PR
# /Volumes/NANDO_SCRATCH/INDEXADO//Lista_archivos en capturas.txt:/Volumes/VIDEO/001 CAPTURAS/./201709/20170911 ENTREGA DE PATRULLAS EN LA GANADERA VICTORIA/PROYECTOS/AE
# /Volumes/NANDO_SCRATCH/INDEXADO//Lista_archivos en capturas.txt:/Volumes/VIDEO/001 CAPTURAS/./201709/20170911 ENTREGA DE PATRULLAS EN LA GANADERA VICTORIA/PROYECTOS/AU
# /Volumes/NANDO_SCRATCH/INDEXADO//Lista_archivos en capturas.txt:/Volumes/VIDEO/001 CAPTURAS/./201709/20170911 ENTREGA DE PATRULLAS EN LA GANADERA VICTORIA/DOCS
# /Volumes/NANDO_SCRATCH/INDEXADO//Lista_archivos en capturas.txt:/Volumes/VIDEO/001 CAPTURAS/./201709/20170904 EVENTO UNIDOS POR REYNOSA/MATERIAL/PATRULLAS
# /Volumes/NANDO_SCRATCH/INDEXADO//Lista_archivos_Osito.txt:/Volumes/NANDO_SCRATCH/DISCO OSITO/./2017/5 MAYO 2017/2017_05_07 TOMAS DE RECORRIDO DE PATRULLAS
# /// /// /// /// /// /// /// /// /// /// /// /// /// /// /// ///
# Fin de la busqueda
# /// /// /// /// /// /// /// /// /// /// /// /// /// /// /// ///
#
