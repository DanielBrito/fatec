#include <cstdlib>
#include <iostream>

using namespace std;

int main(int argc, char *argv[])
{
    int num=0, maior_num=0, menor_num=0, op=1;
    float media=0;
    
    cout<<"Digite um numero: ";
    cin>>num;
    do{
       if (num>maior_num)
          {
             menor_num=maior_num;
             maior_num=num;
          }
       cout<<"Deseja digitar outro numero? 1-SIM ou 0-NAO";
       cin>>op;
       
       }while(op=1)
       
       media=maior_num+menor_num/2;
       
       cout<<"Maior: "<< maior_num<<"\n"<<"Menor: "<<menor_num<<"\n"<<"Media: "<<media<<"\n"
    
    system("PAUSE");
    return EXIT_SUCCESS;
}
