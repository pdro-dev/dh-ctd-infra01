

####### SCRIPT AINDA NÃO FUNCIONAL COMO DESEJADO #######



# shell script para criar pastas e verificar se pasta existe

# se não existir, informar que não existe e criar a pasta
# se existir, informar pasta já existe

# cria 3 pastas
# qtd=3
DIR=pasta_
# cria lista vazia para nomes de pastas
array_pasta=()

# receber a quantidade de pastas a serem criadas
echo "Digite a quantidade de pastas a serem criadas:"
read qtd


# verificar pastas existentes na pasta atual
glob=$(ls -d */)
for i in $glob
do
    echo $i
    array_pasta+=($i)
done

# length array_pasta
length=${#array_pasta[@]}
qtd_mais_length=$((qtd+length))

# verifica se qtd é maior de length
if [ $qtd -gt $length ]; then
## criar pastas até a quantidade desejada
    diferenca=$((qtd-length))
    echo "Já existem $length pastas ... Criando + $diferenca"
    for i in $(seq $length $qtd_mais_length)
    do
        mkdir $DIR$i
        array_pasta+=($DIR$i)
    done
    # exibe lista de pastas criadas
    for i in ${array_pasta[@]}
    do
        echo "Pasta $i criada"
    done
else
    echo "Já existem $length pastas ... Não é necessário criar mais"
    # verifica se pasta existe
    for i in ${array_pasta[@]}
    do
        if [ -d $i ]; then
            echo "pasta $i existe"
        else
            echo "pasta $i nao existe"
        fi
    done
fi

    