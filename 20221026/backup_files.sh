#!/bin/bash

# Backup files

DATA=$(date +%d_%m_%y)
DIR="$HOME/backup/"
DIR_ORIGEM=("$HOME/scripts/")
ARQ_LOG="$DIR/logBKP"
LOG="1" #1 -sim, 0 - não
ARQ="backup-$DATA.tar.bz2"

mkdir -p "$DIR" 2>/dev/null
#Confere se é para gerar histórico do backup
if [ $LOG -eq 1 ]; then
#Insere linhas no histórico de backup com informações sobre data de início
    echo "Execução do backup - $(date +%d/%m/%Y)" >> "$ARQ_LOG"
    echo "Horário de início - $(date +%k:%M:%S)" >> "$ARQ_LOG"
    echo >> "$ARQ_LOG"
    echo "Arquivos compactados:" >> "$ARQ_LOG"
#Compacta os arquivos e insere no histórico de backup os arquivos copiados
    tar -cvpjf "$DIR$ARQ" "$DIR_ORIGEM" >> "$ARQ_LOG"

#Inclui informações finais no histórico de backup
    echo >> "$ARQ_LOG"
    echo "Diretório de backup: ${DIR}" >> "$ARQ_LOG";
    echo >> "$ARQ_LOG";
    echo "Horário da Finalização do backup - $(date +%k:%M:%S)" >>
    "$ARQ_LOG"
    echo "============================================" >>
    "$ARQ_LOG"
    echo >> "$ARQ_LOG"
else
#Caso o histórico do backup não seja ativado apenas compacta os arquivos e salva no local determinado.
    tar -cvpjf "$DIR$ARQ" "$DIR_ORIGEM"
fi
