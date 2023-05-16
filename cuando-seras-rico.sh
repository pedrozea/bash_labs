#! /bin/bash
#! /bin/sh

#Capturar información
echo "Bienvenido! Introduce tu nombre a continuación:"
read name
echo "Gracias. Ahora introduce tu edad:"
read edad

rico=$((edad+2))

#Imprimir en pantalla

echo "Hola ${name}!! Tienes ${edad} años y serás rico a tus ${rico} años. Éxito!"
