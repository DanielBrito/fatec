#include <cstdlib>
#include <iostream>

using namespace std;

int main(int argc, char *argv[])
{
    int urna[5] = {0,0,0,0,0};
    int voto =0;
    int total = 0 ;
    double percentual = 0;
    
    do{
        system("CLS");
        cout << "Informe o seu voto\n=================\n";
        cout << "1-Ana\n" << "2-João\n" << "3-Maria\n" ;
        cout << "4-jose\n" << "5-Nulo\n" << "0-Encerrar \n";
        cin >> voto;
        if(voto > 0 && voto <=5){            
                urna[voto-1] = urna[voto-1] + 1;
                total++;        
        }
    } while(voto !=0);
    
    cout << "Total de Votos =" << total << "\n";
    for(int i=0; i< 5 ; i++){
       percentual = (urna[i] / double(total))*100;     
       cout << "Candidato " << (i+1) << " = " << urna[i] << " " << percentual << "% \n";                    
    }        

    system("PAUSE");
    return EXIT_SUCCESS;
}
