#!/bin/bash

caminho="./script_sample_folder/"

if ! [ -d $caminho ]; then
    echo "Pasta principal não existe!"
    exit 1
fi

# Verifica se o argumento foi passado
if [ -z "$1" ]; then
    echo "ERROR!!!!"
    echo "Tente usar parâmetros como o nome do ficheiro que deseja encontrar."
    echo "Exemplo: './04.sh true para apagar tudo './04.sh [nome da pasta]' para apagar so uma pasta'"
    exit 1
fi

apagar_tudo=false
if [ $1 == "true" ]; then
    echo "vou deletar todas as pastas dentro da pasta script_sample_folder"
    rm -rf $caminho*
    encontrado=true
    apagar_tudo=true
fi
if [ $1 == "false" ]; then
    echo "nada foi apagado"
    exit 1
fi

if ! [ -d $caminho/$1 ]; then
    echo "Pasta $caminho$1 não existe!"
    exit 1
else
    if [ $apagar_tudo == "false" ]; then
        encontrado=false
        caminho_pasta="$caminho$1"
        if [ -d $caminho_pasta ] ; then
            rm -rf $caminho_pasta
            echo "O folder $1 foi."
            encontrado=true
        fi

        if [ "$encontrado" = false ]; then
            echo "Nenhuma pasta encontrada '$1'."
        fi
    fi
fi