#!/bin/bash

echo "Digite a frequencia: "
read frequencia

if [ $frequencia -gt 190 ]

then

echo -e '\033[1;5;31m EMERGÊNCIA! \033[m'

echo -e '\033[11,2000]'
echo -e '\a'
echo -e '\033[11,100'

fi