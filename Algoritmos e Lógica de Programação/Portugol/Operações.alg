algoritmo "Opera�oes 2"
// Fun��o : Praticar
// Autor : Daniel Brito
// Data : 15/08/12
// Se��o de Declara��es 
var w,x,y,z,SOMA,MEDIA,VQUADW,VQUADX,VQUADY,VQUADZ,VCUBOW,VCUBOX,VCUBOY,VCUBOZ,MULT: real

inicio
// Se��o de Comandos

escreva("Digite um numero: ")
leia (w)

escreva("Digite um numero: ")
leia (x)

escreva("Digite um numero: ")
leia (y)

escreva ("Digite um numero: ")
leia (z)

SOMA<-w+x+y+z
escreval("A soma dos valores digitados e: ", SOMA)

MEDIA<-w+x+y+z/4
escreval("A media dos numeros digitados e: ", MEDIA)

VQUADW<-w*w

VQUADX<-x*x

VQUADY<-y*y

VQUADZ<-z*z

escreval("O valor de cada numero ao quadrado � respectivamente: ", VQUADW,", ", VQUADY, ", ", VQUADX, " e ", VQUADZ, ".")

VCUBOW<-w*w*w

VCUBOX<-x*x*x

VCUBOY<-y*y*y

VCUBOZ<-z*z*z

escreval("O valor de cada numero ao cubo � respectivamente: ", VCUBOW,", ", VCUBOX,", ", VCUBOY," e ", VCUBOZ,".")

MULT<-w*x*y*z
escreval("O produto dos numeros �: ", MULT)

fimalgoritmo
