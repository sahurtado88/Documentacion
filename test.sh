#!/bin/bash

# Definir la cantidad de términos en la serie Fibonacci
n=10

# Inicializar los primeros dos términos de la serie
a=0
b=1

# Mostrar los primeros dos términos de la serie
echo "Serie Fibonacci de $n términos:"
echo -n "$a, $b"

# Calcular y mostrar los siguientes términos de la serie
for ((i=2; i<n; i++))
do
    # Calcular el siguiente término
    c=$((a + b))
    
    # Mostrar el término calculado
    echo -n ", $c"
    
    # Actualizar los valores de a y b para el próximo cálculo
    a=$b
    b=$c
done

echo ""  # Salto de línea al final