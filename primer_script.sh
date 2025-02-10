#!/bin/bash

# Este es un comentario
echo "¡Hola mundo!"


# Para convertir este script en ejecutable escribir
# chmod +x nombrearchivo

#nombre="Miguel"
#echo "Hola, $nombre"


echo "¿Cuál es tu nombre?"
read nombre2
echo "Hola, $nombre2"


echo "¿Cuál es tu edad?"
read edad

if [ $edad -ge 18 ]; then
  echo "Eres mayor de edad"
else 
  echo "Eres menor de edad"
fi



for i in 1 2 3 4 5; do
  echo "Número: $i"
done

contador=2

while [ $contador -le 5 ]; do
  echo "Contador: $contador"
  contador=$((contador + 1))
done


saludar() {
  echo "Hola, $1"
}

saludar "Pepito"
