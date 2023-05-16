#!/bin/bash

# Solicitar información
echo "Introduzca los elementos que desea agregar a su lista de compras. Cuando quiera terminar, digite '.'"

# Declarar el array y la variable de procesamiento
listaCompras=()
procesar=true

# Leer elementos y agregarlos al array
while $procesar; do
    read -r elemento
    if [ "$elemento" = "." ]; then
        procesar=false
        echo "Lista completada"
    else
        listaCompras+=("$elemento")
    fi
done

# Enviar listado de artículos a un archivo de texto
archivo="Listado_de_compras.txt"

# Crear el archivo y escribir el listado de compras
{
    printf "%s\n" "${listaCompras[@]}"
} >"$archivo"

# Terminación del script y mensaje en pantalla
echo "Su lista de compras ha sido exportada al archivo $archivo bajo el directorio actual."

# Cambios realizados:

# Se agregó el modificador -r al comando read para evitar que interprete barras invertidas \ como caracteres de escape.
# Se cambió la condición del if para comparar correctamente el valor de elemento con "." utilizando el operador de igualdad (=) en lugar de (==) ya que Bash no requiere == para comparaciones de cadenas.
# Se cambió el nombre del archivo de salida a "Listado_de_compras.txt" para evitar espacios en el nombre del archivo.
# Se utilizó una construcción de grupo de comandos para redirigir la salida de printf directamente al archivo $archivo. Esto evita abrir y cerrar el archivo en cada iteración del bucle for y mejora el rendimiento.
# Se agregó un punto al final del mensaje en pantalla para una mejor legibilidad.
# Con estas mejoras, el código funcionará correctamente y será más robusto y legible.