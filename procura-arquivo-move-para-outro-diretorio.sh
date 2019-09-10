#!/bin/bash
echo "Procurando arquivos"

array=`find /home/rodrigo/Desktop/restore/* -name "*.java" -exec grep -l -i "br.com.viavarejo" {} \;`

echo "Arquivos selecionados"

echo "Criando novo diretório"
mkdir -p /home/rodrigo/Desktop/arquivo_java

echo "Copiando os arquivos"

for arquivo in $array
do
  cp --parents --preserve -a  "$arquivo" /home/rodrigo/Desktop/arquivo_java/
done

echo "Final do processos"
