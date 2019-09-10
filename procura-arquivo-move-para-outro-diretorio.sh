#!/bin/bash
echo "Inicio do processo de busca de arquivos"

PATH_ORIGEM=/home/rodrigo/Documentos/temp/*
PATH_DESTINO=/home/rodrigo/Documentos/temp_Java/

echo "Buscando arquivos"
array=`find $PATH_ORIGEM -name "*.java" -exec grep -l -i "br.com.viavarejo.mongo.entity.enums" {} \;`

echo "Removendo arquivos antigos"
rm -rf $PATH_DESTINO

echo "Criando novo diretório"
mkdir -p $PATH_DESTINO

echo "Copiando os arquivos"

for arquivo in $array
do
  cp -v  "$arquivo" $PATH_DESTINO$(basename "${arquivo}")
done

echo "Inicio do processo de busca de arquivos"
