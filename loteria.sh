#! /bin/bash
#! /bin/sh

#Solicitud de información
echo "Por favor introduzca a continuación un número del 0 al 100:"
read number

#Validación del número ingresado y generación del mensaje en pantalla:

if [[ $number -ge 0 && $number -le 100 ]]
then
    echo "El número ingresado es ${number}"
else
    echo "El número no está dentro del rango solicitado. Por favor introduzca un número del 0 al 100:"
fi
