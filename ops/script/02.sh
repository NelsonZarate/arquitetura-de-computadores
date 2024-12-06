#!/bin/bash

if [ $# -eq 0 ]; then   
    echo "Folder não encontrado"
    exit 1
fi
caminho="./script_sample_folder/"
for path in $caminho*; do
    nome=${path: -2}
    #length_path=$((${#path}-3))
    #novo_path=${path::length_path}
    mv $path $caminho$1-$nome
done

#usando o basename

# Percorre todos os diretórios em script_sample_folder
# for path in ./script_sample_folder/*; do
#     if [ -d "$path" ]; then
#         nome=$(basename "$path")
#         novo_nome="./script_sample_folder/$1$nome"
#         mv "$path" "$novo_nome"
#         echo "Renomeado $path para $novo_nome"
#     fi
# done
