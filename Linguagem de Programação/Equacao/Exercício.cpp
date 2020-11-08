#include<iostream>
#include<cstdlib>

using namespace std;


int main (void)
{//1 - inicia bloco principal

    system("cls");
    
    char cont='s';
    
    while(cont=='s')
    { //2 - inicia o laço 'while'
    int a, b, c, x1, x2, delta, Vx, Vy;
    
    system("cls");
        
    cout<<"         - CALCULO DE EQUACAO DE 2 GRAU -";
    cout<<"\n\n";
    cout<<"Formula resolutiva: b^2 - 4 * a * c";
    cout<<"\n";
    cout<<"Formula de Bhaskara: x1 = ((-b+(Delta^1/2))/(2a))";
    cout<<"\n";
    cout<<"Formula de Bhaskara: x2 = ((-b-(Delta^1/2))/(2a))";
    cout<<"\n\n";
    cout<<"----------------------------------------------------";
    cout<<"\n\n";
    
      cout<<"Digite o valor de 'a': ";
      cin>>a;
             if (a==0)
                {//3 - Inicia 'if'
                cout<<"\n\n";
                cout<<"Esta nao e uma equacao de 2o grau!";
                cout<<"\n\n";
                system("PAUSE");
               return 0;
               }//3 - termina 'if'
             else
                 {// 4 - inicia continuação de 'a' valido
          cout<<"\n";
          cout<<"Digite o valor de 'b': ";
          cin>>b;
          cout<<"\n";
          cout<<"Digite o valor de 'c': ";
          cin>>c;
          }// 4 - finaliza continuação de 'a' valido
          
          delta=((b*b)-((4*a)*c));
              
          if (delta<0)
             {//5 - inicia verificacao da validade de delta    
             cout<<"\n\n";
             cout<<"O valor de delta e: ";
             cout<<delta;  
             cout<<"\n\n";
             cout<<"Nao existem raizes reais, pois o valor de delta e negativo!";
             cout<<"\n\n";
             system("PAUSE");
             return 0;
             }//5 - finaliza verificação da validade de delta
          else
              {//6 - inicia continuação de delta for valido   
               x1=((-b+(delta*1/2))/(2*a));
    
               x2=((-b-(delta*1/2))/(2*a));
    
               cout<<"\n\n";
    
               cout<<"O valor de delta e: ";
               cout<<delta;
    
               cout<<"\n\n";
               cout<<"--------------------------------";
               cout<<"\n\n";
    
               cout<<"O valor de x1 e: ";
               cout<<x1;
               cout<<"\n";
               cout<<"O valor de x2 e: ";
               cout<<x2;
               cout<<"\n\n";
               cout<<"--------------------------------";
               cout<<"\n\n";
    
               Vx=(-b/(2*a));
               Vy=(-delta/(4*a));
    
               cout<<"O vertice de 'x' e: ";
               cout<<Vx;
               cout<<"\n";
               cout<<"O vertice de 'y' e: ";
               cout<<Vy;
               cout<<"\n\n";
    }//2- finaliza laço 'while'
    cout<<"Deseja realizar outro calculo? (s/n): ";
    cin>>cont;
    } //6 - finaliza continuação se delta for valido
    system("PAUSE");
    return 0;
}//1 - finaliza bloco principal
