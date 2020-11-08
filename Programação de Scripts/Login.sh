
echo "DIGITE UMA MENSAGEM: "


echo "________________________________________"
echo "|                                      |"
echo "|                                      |"
echo "________________________________________"
echo "|                                      |"
echo "|                                      |"
echo "________________________________________"

colunas=$(tput cols)
linhas=$(tput lines)
linha=$((linhas/5))
coluna=$((colunas-65))
tput sc
tput cup $linha $coluna
tput rev tput bold
echo '<  OK  >'
tput sgr0
tput rc


c=$(tput cols)
l=$(tput lines)
ln=$((l/6))
cl=$((c-65))
tput sc
tput cup $ln $cl
echo "BRASIL"
tput rc