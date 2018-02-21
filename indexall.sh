#!/bin/bash

BASE_PATH="/Volumes/"
REL_PATHS="VIDEO/LUIS/. VIDEO/001\ CAPTURAS/. NANDO_SCRATCH/DISCO\ OSITO/."


#   indexa los volumenes listados a archivos de texto


echo "Indexando volumenes"

#find /Volumes/VIDEO/LUIS/. -maxdepth 8 -type d >  /Volumes/NANDO_SCRATCH/INDEXADO/Lista_de_archivos_Luis.txt
find /Volumes/ -maxdepth 8 -type d >  /Volumes/NANDO_SCRATCH/INDEXADO/Lista_de_archivos_Luis.txt
find /Volumes/ -maxdepth 8 -type d >  /Volumes/NANDO_SCRATCH/INDEXADO/Lista_archivos\ en\ capturas.txt
find /Volumes/ -maxdepth 8 -type d > /Volumes/NANDO_SCRATCH/INDEXADO/Lista_archivos_Osito.txt
find /Volumes/VIDEO/NANDO/. -maxdepth 8 -type d > /Volumes/NANDO_SCRATCH/INDEXADO/Lista_archivos_NANDO.txt
find /Volumes/VIDEO/003\ PRIMER\ INFORME/MATERIAL\ EXTERNO/. -maxdepth 8 -type d > /Volumes/NANDO_SCRATCH/INDEXADO/Lista_material_externo.txt
find /Volumes/VIDEO/002\ PAN/. -maxdepth 8 -type d > /Volumes/NANDO_SCRATCH/INDEXADO/Lista_material_PAN.txt


echo ">>>>>>>>  Listo!!! Volumenes indexados. <<<<<<<<"

El segundo script busca en ese archivo por palabras, en este caso solo son nombres de directorios.
