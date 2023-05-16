#! /bin/bash

#Solicitar información
echo "Introduzca los elementos que desea agregar a su lista de compras. Cuando quiera terminar, digite ".""

#Asignar valores dentro de un array
procesar=true

while $procesar;do
    read elemento
    if [ $elemento == "." ];
    then
        procesar=false
        echo "Lista completada"
    else
        listaCompras+=($elemento)
    fi
done

#Enviar listado de artículos a un archivo de texto
archivo="Listado de compras.txt"

for elemento in ${listaCompras[@]}
do
    echo "$elemento" >> "$archivo"
done

#Terminación de script y mensaje en pantalla
echo "Su lista de compras ha sido exportada al archivo $archivo bajo el directorio actual"
