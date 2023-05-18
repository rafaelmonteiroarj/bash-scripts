#!/bin/bash


# run ==> bash conversao-jpg-png.sh algoritmos big_data 
PATH_IMAGES=./imagens-livros
# sips -s format png $PATH_IMAGES/$1.jpg --out $PATH_IMAGES/$1.png
# sips -s format png $PATH_IMAGES/$2.jpg --out $PATH_IMAGES/$2.png

# for image in $@
# do
# echo $image
# done

converte_imagem(){
cd imagens-livros

if [ ! -d png ]
then
    mkdir png
fi

for imagem in *.jpg
do
    imagem_sem_extensao=$(ls $imagem | awk -F. '{ print $1 }')
    sips -s format png $imagem_sem_extensao.jpg --out png/$imagem_sem_extensao.png
done
}

converte_imagem 2>erros_conversao.txt
if [ $? -eq 0 ]
then
    echo "Conversão realizada com sucesso"
else
    echo "Houve uma falha no processo"
fi