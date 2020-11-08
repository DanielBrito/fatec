#include <cstdlib>
#include <iostream>

using namespace std;

int main(){
int lados[3][3];
int L1=0,L2=0,L3=0;

    // Entre com os valores dos triangulos
    for(int i=1;i<=3;i++){
        cout<<"\n> TRIANGULO "<<i;
           for(int a=1;a<=3;a++){
              cout<<"\nLado "<<a<<" do triangulo: ";
              cin>>lados[i][a];   
        }
    }
        
        /*Verificação se os 3 primeiros valores são de um triangulo.
        Pois se o valor de um lado for maior que a soma dos outros dois lados, não será um triângulo.*/
        cout<<"\n\n";
        cout<<"> Classificacao:\n";
        if(lados[1][1]>=lados[1][2]+lados[1][3]){
           cout<<"Os valores digitados para o primeiro triangulo nao sao validos.\n";
           L1=+1;
           }
        if(lados[1][2]>=lados[1][1]+lados[1][3]){
           cout<<"Os valores digitados para o primeiro triangulo nao sao validos.\n";
           L1=+1;
           }
        if(lados[1][3]>=lados[1][2]+lados[1][1]){
           cout<<"Os valores digitados para o primeiro triangulo nao sao validos.\n";
           L1=+1;
           }

        //Tipo do Triangulo 1                 
        if(lados[1][1]==lados[1][2] && lados[1][1]==lados[1][3] && L1<1)
           cout<<"O Triangulo 1 e equilatero.\n";
        else{
           if(lados[1][1]==lados[1][2] && L1<1)
           cout<<"O triangulo 1 e isosceles.\n";
           if(lados[1][1]==lados[1][3] && L1<1)
           cout<<"O triangulo 1 e isosceles.\n";
           }
        if(lados[1][1]!=lados[1][2] && lados[1][1]!=lados[1][3] && lados[1][2]!=lados[1][3]&& L1<1)
           cout<<"O triangulo 1 e escaleno.\n";

        //Verificar se o triangulo 1 e acutangulo
        if(lados[1][1]>lados[1][2] && lados[1][1]>lados[1][3] && L1<1){
           if(lados[1][1]*lados[1][1]<lados[1][2]*lados[1][2]+lados[1][3]*lados[1][3])
           cout<<"O triangulo 1 e acutangulo.\n";
           }
        if(lados[1][2]>lados[1][1] && lados[1][2]>lados[1][3] && L1<1){
           if(lados[1][2]*lados[1][2]<lados[1][1]*lados[1][1]+lados[1][3]*lados[1][3])
           cout<<"O triangulo 1 e acutangulo.\n";
           }
        if(lados[1][3]>lados[1][1] && lados[1][3]>lados[1][2] && L1<1){
           if(lados[1][3]*lados[1][3]<lados[1][1]*lados[1][1]+lados[1][2]*lados[1][2])
           cout<<"O triangulo 1 e acutangulo.\n";
           }
                   
        //Verificar se o triangulo 1 e retangulo
        if(lados[1][1]>lados[1][2] && lados[1][1]>lados[1][3] && L1<1){
           if(lados[1][1]*lados[1][1]==lados[1][2]*lados[1][2]+lados[1][3]*lados[1][3])
           cout<<"O triangulo 1 e retangulo.\n";
           }
        if(lados[1][2]>lados[1][1] && lados[1][2]>lados[1][3] && L1<1){
           if(lados[1][2]*lados[1][2]==lados[1][1]*lados[1][1]+lados[1][3]*lados[1][3])
           cout<<"O triangulo 1 e retangulo.\n";
           }
        if(lados[1][3]>lados[1][1] && lados[1][3]>lados[1][2] && L1<1){
           if(lados[1][3]*lados[1][3]==lados[1][1]*lados[1][1]+lados[1][2]*lados[1][2])
           cout<<"O triangulo 1 e retangulo.\n";
           }
                   
        //Verificar se o triangulo 1 e obtusangulo
        if(lados[1][1]>lados[1][2] && lados[1][1]>lados[1][3] && L1<1){
           if(lados[1][1]*lados[1][1]>lados[1][2]*lados[1][2]+lados[1][3]*lados[1][3])
           cout<<"O triangulo 1 e obtusangulo.\n";
           }
        if(lados[1][2]>lados[1][1] && lados[1][2]>lados[1][3] && L1<1){
           if(lados[1][2]*lados[1][2]>lados[1][1]*lados[1][1]+lados[1][3]*lados[1][3])
           cout<<"O triangulo 1 e obtusangulo.\n";
           }
        if(lados[1][3]>lados[1][1] && lados[1][3]>lados[1][2] && L1<1){
           if(lados[1][3]*lados[1][3]>lados[1][1]*lados[1][1]+lados[1][2]*lados[1][2])
           cout<<"O triangulo 1 e obtusangulo.\n";
           }   
                                       
        //Verificação se o 4º,5ºe 6º valores são de um triangulo
        if(lados[2][1]>=lados[2][2]+lados[2][3]){
           cout<<"Os valores digitados para o segundo triangulo nao sao validos.\n";
           L2=+1;
           }
        if(lados[2][2]>=lados[2][1]+lados[2][3]){
           cout<<"Os valores digitados para o segundo triangulo nao sao validos.\n";
           L2=+1;
           }
        if(lados[2][3]>=lados[2][2]+lados[2][1]){
           cout<<"Os valores digitados para o segundo triangulo nao sao validos.\n";
           L2=+1;
           }
  
        //Tipo do Triangulo 2
        if(lados[2][1]==lados[2][2] && lados[2][1]==lados[2][3] && L2<1)
           cout<<"O Triangulo 2 e equilatero.\n";
              else{
                 if(lados[2][1]==lados[2][2]&& L2<1)
                    cout<<"O triangulo 2 e isosceles.\n";
                 if(lados[2][1]==lados[2][3]&& L2<1)
                    cout<<"O triangulo 2 e isosceles.\n";
                 }
        if(lados[2][1]!=lados[2][2] && lados[2][1]!=lados[2][3] && lados[2][2]!=lados[1][3]&& L2<1)
           cout<<"O triangulo 2 e escaleno.\n";   
  
        //Verificar se o triangulo 2 e acutangulo
        if(lados[2][1]>lados[2][2] && lados[2][1]>lados[2][3] && L2<1){
           if(lados[2][1]*lados[2][1]<lados[2][2]*lados[2][2]+lados[2][3]*lados[2][3])
              cout<<"O triangulo 2 e acutangulo.\n";
           }
        if(lados[2][2]>lados[2][1] && lados[2][2]>lados[2][3] && L2<1){
           if(lados[2][2]*lados[2][2]<lados[2][1]*lados[2][1]+lados[2][3]*lados[2][3])
              cout<<"O triangulo 2 e acutangulo.\n";
           }
        if(lados[2][3]>lados[2][1] && lados[2][3]>lados[2][2] && L2<1){
           if(lados[2][3]*lados[2][3]<lados[2][1]*lados[2][1]+lados[2][2]*lados[2][2])
              cout<<"O triangulo 2 e acutangulo.\n";
           }
                   
        //Verificar se o triangulo 2 e retangulo
        if(lados[2][1]>lados[2][2] && lados[2][1]>lados[2][3] && L2<1){
           if(lados[2][1]*lados[2][1]==lados[2][2]*lados[2][2]+lados[2][3]*lados[2][3])
              cout<<"O triangulo 2 e retangulo.\n";
           }
        if(lados[2][2]>lados[2][1] && lados[2][2]>lados[2][3] && L2<1){
           if(lados[2][2]*lados[2][2]==lados[2][1]*lados[2][1]+lados[2][3]*lados[2][3])
              cout<<"O triangulo 2 e retangulo.\n";
           }
        if(lados[2][3]>lados[2][1] && lados[2][3]>lados[2][2] && L2<1){
           if(lados[2][3]*lados[2][3]==lados[2][1]*lados[2][1]+lados[2][2]*lados[2][2])
              cout<<"O triangulo 2 e retangulo.\n";
           }
        
        //Verificar se o triangulo 2 e obtusangulo
        if(lados[2][1]>lados[2][2] && lados[2][1]>lados[2][3] && L2<1){
           if(lados[2][1]*lados[2][1]>lados[2][2]*lados[2][2]+lados[2][3]*lados[2][3])
              cout<<"O triangulo 2 e obtusangulo.\n";
           }
        if(lados[2][2]>lados[2][1] && lados[2][2]>lados[2][3] && L2<1){
           if(lados[2][2]*lados[2][2]>lados[2][1]*lados[2][1]+lados[2][3]*lados[2][3])
              cout<<"O triangulo 2 e obtusangulo.\n";
           }
        if(lados[2][3]>lados[2][1] && lados[2][3]>lados[2][2] && L2<1){
           if(lados[2][3]*lados[2][3]>lados[2][1]*lados[2][1]+lados[2][2]*lados[2][2])
              cout<<"O triangulo 2 e obtusangulo.\n";
           }   
        
        //verificação se o 7º,8º e 9º valores são de um triangulo
        if(lados[3][1]>=lados[3][2]+lados[3][3]){
           cout<<"Os valores digitados para o terceiro triangulo nao sao validos.\n";
           L3=+1;
        }
        if(lados[3][2]>=lados[3][1]+lados[3][3]){
           cout<<"Os valores digitados para o terceiro triangulo nao sao validos.\n";
           L3=+1;
        }                                                 
        if(lados[3][3]>=lados[3][2]+lados[3][1]){
           cout<<"Os valores digitados para o terceiro triangulo nao sao validos.\n";
           L3=+1;
        }
                            
        //Tipo do Triangulo 3
        if(lados[3][1]==lados[3][2] && lados[3][1]==lados[3][3]&& L3<1)
           cout<<"O Triangulo 3 e equilatero.\n";
              else{
                 if(lados[3][1]==lados[3][2]&& L3<1)
                    cout<<"O triangulo 3 e isosceles.\n";
                 if(lados[3][1]==lados[3][3]&& L3<1)
                    cout<<"O triangulo 3 e isosceles.\n";
              }
        if(lados[3][1]!=lados[3][2] && lados[3][1]!=lados[3][3] && lados[3][2]!=lados[3][3] && L3<1)
           cout<<"O triangulo 3 e escaleno.\n";

        //Verificar se o triangulo 3 e acutangulo
        if(lados[3][1]>lados[3][2] && lados[3][1]>lados[3][3] && L3<1){
           if(lados[3][1]*lados[3][1]<lados[3][2]*lados[3][2]+lados[3][3]*lados[3][3])
              cout<<"O triangulo 3 e acutangulo.\n";
           }
        if(lados[3][2]>lados[3][1] && lados[3][2]>lados[3][3] && L3<1){
           if(lados[3][2]*lados[3][2]<lados[3][1]*lados[3][1]+lados[3][3]*lados[3][3])
              cout<<"O triangulo 3 e acutangulo.\n";
           }
        if(lados[3][3]>lados[3][1] && lados[3][3]>lados[3][2] && L3<1){
           if(lados[3][3]*lados[3][3]<lados[3][1]*lados[3][1]+lados[3][2]*lados[3][2])
              cout<<"O triangulo 3 e acutangulo.\n";
           }
                   
        //Verificar se o triangulo 3 e retangulo
        if(lados[3][1]>lados[3][2] && lados[3][1]>lados[3][3] && L3<1){
           if(lados[3][1]*lados[3][1]==lados[3][2]*lados[3][2]+lados[3][3]*lados[3][3])
              cout<<"O triangulo 3 e retangulo.\n";
           }
        if(lados[3][2]>lados[3][1] && lados[3][2]>lados[3][3] && L3<1){
           if(lados[3][2]*lados[3][2]==lados[3][1]*lados[3][1]+lados[3][3]*lados[3][3])
              cout<<"O triangulo 3 e retangulo.\n";
           }
        if(lados[3][3]>lados[3][1] && lados[3][3]>lados[3][2] && L3<1){
           if(lados[3][3]*lados[3][3]==lados[3][1]*lados[3][1]+lados[3][2]*lados[3][2])
              cout<<"O triangulo 3 e retangulo.\n";
           }
                  
        //Verificar se o triangulo 3 e obtusangulo
        if(lados[3][1]>lados[3][2] && lados[3][1]>lados[3][3] && L3<1){
           if(lados[3][1]*lados[3][1]>lados[3][2]*lados[3][2]+lados[3][3]*lados[3][3])
              cout<<"O triangulo 3 e obtusangulo.\n";
                                   }
        if(lados[3][2]>lados[3][1] && lados[3][2]>lados[3][3] && L3<1){
           if(lados[3][2]*lados[3][2]>lados[3][1]*lados[3][1]+lados[3][3]*lados[3][3])
              cout<<"O triangulo 3 e obtusangulo.\n";
                                   }
        if(lados[3][3]>lados[3][1] && lados[3][3]>lados[3][2] && L3<1){
           if(lados[3][3]*lados[3][3]>lados[3][1]*lados[3][1]+lados[3][2]*lados[3][2])
              cout<<"O triangulo 3 e obtusangulo.\n";
           }                                  
    system("PAUSE");
    return EXIT_SUCCESS;
}
