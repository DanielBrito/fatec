#include <cstdlib>
#include <iostream>

using namespace std;

int main(int argc, char *argv[])
{
    double notas[10][4];
    double mediaAluno = 0;
    double mediaSala = 0;    
    int acima=0;
    int abaixo=0;
    
    for(int l=0; l<10;l++){
      mediaAluno = 0;      
      for(int c=0; c<3; c++){      
         cout << "Informe a prova P" << (c+1) << " do aluno";
         cout << (l+1) << ": ";
         cin >> notas[l][c];
         mediaAluno = mediaAluno + notas[l][c];
      }   
      notas[l][3] = (mediaAluno /3);      
      mediaSala = mediaSala + notas[l][3];               
    }
    mediaSala = mediaSala/10;
    for(int j=0;j<10;j++){
        if(notas[j][3] > mediaSala){
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
