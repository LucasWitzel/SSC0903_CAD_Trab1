#!/bin/bash

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Cleaning output files
: > tempos_totais_seq.txt
: > tempos_totais_par.txt
: > tempos_parciais_seq.txt
: > tempos_parciais_par.txt

# Get all input files in entradas/ sorted by number
input_files=$(ls -v entradas2/input*.txt)

for input_file in $input_files; do
    filename=$(basename "$input_file")
    echo -e "${BLUE}Processando: $filename${NC}"
    
    ./studentsseq "$input_file"
    ./studentspar "$input_file"
done

