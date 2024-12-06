#!/bin/bash

# Verifica se o argumento foi passado
if [ -z "$1" ]; then
    echo "ERROR!!!!"
    echo "Tente usar parâmetros como o nome do ficheiro que deseja encontrar."
    echo "Exemplo: './03.sh aa'"
    exit 1
fi

caminho="./script_sample_folder/"

if [ -d "$caminho" ]; then
    encontrado=false
    for pastas in "$caminho"*"$1"*; do
        if [ $(ls -A $pastas) ] && [ -d "$pastas" ] ; then
            rm -r "$pastas"/*
            echo "Todos os arquivos em $pastas foram deletados."
            encontrado=true
        fi
    done
    if [ "$encontrado" = false ]; then
        echo "Nenhuma pasta encontrada '$1'."
    fi
else
    echo "A pasta $caminho não existe."
fi
