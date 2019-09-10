#!/bin/bash
echo "Procurando arquivos"

PATH_DESTINO=/home/rodrigo/Documentos/temp_Java/

array=`find /home/rodrigo/Documentos/temp/* -name "*.java" -exec grep -l -i "br.com.viavarejo" {} \;`

echo "Arquivos selecionados"

echo "Criando novo diretório"
mkdir -p $PATH_DESTINO

echo "Copiando os arquivos"

for arquivo in $array
do
  cp -v  "$arquivo" $PATH_DESTINO$(basename "${arquivo}")
done

echo "Final do processos"
