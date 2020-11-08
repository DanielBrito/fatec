#!/bin/bash
# usuarios.sh
# 
# Mostra logins e nomes de usuários do sistema
# Obs. Lê dados do arquivo /etc/passwd
#
# Autor: 
# E-mail:
#
# Versão 1: versão inicial
# Versão 2: adicionado suporte à opção -h
# Versão 3: adicionado suporte à opção -V
# Versão 4: adicionado suporte à opção -s e --sort
# Versão 5: adicionado suporte à múltiplas opções
#           adicionado suporte a -r e -u
# Versão 6: adicionado suporte a opção -d, -delimiter

# variaveis de controle de execução
ordenar=0	# A saída deverá ser ordenada?
inverter=0	# A saída deverá ser invertida?
maiusculas=0	# A saída deverá ser impressa com letrar maiúsculas?
delimiter='\t'	# Caracter utilizado com o delimitador de saída

MENSAGEM_HELP="
Uso: $(basename "$0") [OPÇÕES]

Opções:
  -d, --delimiter C	Usa o caracter C como delimitador	
  -r, --reverse		Inverte a listagem
  -u, --uppercase	Mostra a listagem em MAIÚSCULAS
  -h, --help		Mostra tela de ajuda e sai
  -V, --version		Mostra a versão do programa e sai
  -s, --sort		Ordena a saída do comando
"

# Tratamento das opções de linha de comando
while [ -n "$1" ]
do

case  "$1" in
  -h | --help)
    echo "$MENSAGEM_HELP"
    exit 0
    ;;
  -V | --version)
    echo -n $(basename "$0")
    grep '^# Versão' "$0" | tail -1 | cut -d : -f 1 | tr -d \# 
    exit 0
    ;;
  -s | --sort)
    ordenar=1
    ;;
  -r | --reverse)
    inverter=1
    ;;
  -u | --uppercase)
    maiusculas=1
    ;;
  -d | --delimiter)
    shift
    delimiter="$1"
    if [ -z "$delimiter" ]
    then
      echo "Faltando argumento para -d"
      exit 1
    fi
    ;;
  *)
    echo "Opção inválida: $1"
    exit 1
    ;;
esac

# Opção $1 processada, a fila anda
shift

done


# Extrai a listagem
lista=$(cut -d : -f 1,5 /etc/passwd)

# Ordena a listagem (se necessário)
if [ "$ordenar" = 1 ]
then
  lista=$(echo "$lista" | sort)
fi

# Inverter a listagem (se necessário)
if [ "$inverter" = 1 ]
then
  lista=$(echo "$lista" | tail -r)
fi

# Converter para maiúsculo (se necessário)
if [ "$maiusculas" = 1 ]
then
  lista=$(echo "$lista" | tr a-z A-Z)
fi

# Mostra a listagem no terminal
echo "$lista" | tr : "$delimiter"
