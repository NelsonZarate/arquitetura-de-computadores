#!/bin/bash

if [ $# -eq 0 ]; then   
    echo "Folder não encontrado"
    exit 1
fi

if ! [-d ../$1 ]; then
    echo "$1 não é um diretorio valido"
    exit 1
fi

for path in ../$1/*; do
    nome=${path: -2}
    echo >> $path/script_sample_folder-$nome.txt
done