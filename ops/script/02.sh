#!/bin/bash

if [ $# -eq 0 ]; then   
    echo "Folder não encontrado"
    exit 1
fi
caminho="./script_sample_folder/"
for path in $caminho*; do
    nome=${path: -2}

    mv $path $caminho$1-$nome
done
