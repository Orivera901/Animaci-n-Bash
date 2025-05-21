#!/bin/bash

META=40
POSA=0
POSB=0

#Variables con los emojis de cada elemento
carroA="🚗"
carroB="🏎️"
metaEmoji="🏁"

while true; do
    clear

    #Se elige aleatoriamente cuanto avanza cada carro
    ((POSA += RANDOM % 2))
    ((POSB += RANDOM % 2))

    #Se imprimen los autos y la meta
    printf "%${POSA}s%s" "" "$carroA"
    printf "%$((META - POSA))s%s\n" "" "$metaEmoji"

    printf "%${POSB}s%s" "" "$carroB"
    printf "%$((META - POSB))s%s\n" "" "$metaEmoji"

    echo "------------------------------------------"

    sleep 0.1

    #Se revisa cual carro gano o si fue un empate
    if ((POSA >= META && POSB >= META)); then
        echo "🚦 ¡Empate!"
        break
    elif ((POSA >= META)); then
        echo "🚗 ¡Ganó el carro A!"
        break
    elif ((POSB >= META)); then
        echo "🏎️ ¡Ganó el carro B!"
        break
    fi
done
