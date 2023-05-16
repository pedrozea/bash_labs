#! /bin/bash

#Creación de la carpeta
echo "Creando la carpeta..."

folderName="Folder_$(date +%Y-%m-%d)"

if [[ -d $folderName ]]
then
    rm -r $folderName
fi
  
mkdir $folderName

#Creación de archivos
echo "Creando 10 nuevos archivos dentro la carpeta..."
for i in {1..10}
do 
    fileName="$folderName/archivo_$i.txt"
    fileInfo=$(date +"%Y-%m-%d %H:%M:%S")
    echo "Fecha y hora de creación: $fileInfo" > "$fileName"
done

#Imprimir el resultado del script
echo "Script completado! Se creó la nueva carpeta $folderName bajo el directorio actual"
