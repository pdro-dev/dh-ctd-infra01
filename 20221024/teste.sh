#!/bin/zsh

x=1

let  x=x*2+5

echo “x=$x”

x=$((x+3))

echo “x=$x”

let x--

echo “x=$x”

# instruções para rodar o arquivo no terminal
# chmod +x teste.sh
# ./teste.sh

# não funciona no bash se o interpretador declarado for o zsh