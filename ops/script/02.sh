#!/bin/bash

if [ $# -eq 0 ]; then   
    echo "Folder não encontrado"
    exit 1
fi

if ! [ -d ../$1 ]; then
    echo "$1 não é um diretorio valido"
    exit 1
fi

for path in ./1/*; do
    nome=${path: -2}
    length_path=$((${#path}-3))
    novo_path=${path::length_path}
    mv $path $novo_path/$2-$nome
done
