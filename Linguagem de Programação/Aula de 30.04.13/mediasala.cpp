#include <cstdlib>
#include <iostream>

using namespace std;

int main(int argc, char *argv[])
{
    double notas[10];
    double mediaSala = 0;
    int acima=0;
    int abaixo=0;
    
    for(int i=0; i<10;i++){
      cout << "Informe a media do aluno" << (i+1) << ": ";
      cin >> notas[i];
      mediaSala = mediaSala + notas[i];               
    }
    mediaSala = mediaSala/10;
    for(int j=0;j<10;j++){
        if(notas[j] > mediaSala){
           acima++;
        } else {
           abaixo++;          
        }                        
    }
    cout << "Media da sala:" << mediaSala << "\n";
    cout << "Alunos acima:" << acima << "\n";
    cout << "Alunos abaixo:" << abaixo << "\n";

    system("PAUSE");
    return EXIT_SUCCESS;
}
