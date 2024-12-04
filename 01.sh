#!/bin/bash

for path in ../script_sample_folder/*; do
    nome=${path: -2}
    echo >> $path/script_sample_folder-$nome.txt
done