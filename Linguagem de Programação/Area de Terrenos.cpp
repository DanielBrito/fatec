#include <cstdlib>
#include <iostream>

using namespace std;

int main(int argc, char *argv[])
{
    //criar programa para armazenar, comprimento e profundidade de terrenos
    //para poder calcular a area dos mesmos  

    //10 linhas e 3 colunas
    double terrenos[10][3];
        
    for(int i=0; i<10; i++){
        cout << "\n Informe o comprimento " << i << "= ";
        cin >> terrenos[i][0];
        cout << "\n Informe a profundidade " << i << "= ";
        cin >> terrenos[i][1];                
        terrenos[i][2] = terrenos[i][0] * terrenos[i][1];
        cout << "\n area = " << terrenos[i][2];    
    }             
    double maiorArea =0;
    double maiorComprimento =0;
    double maiorProfundidade = 0;
    double mediaArea = 0;
    
    int j=0;
    while(j < 10){
       if(terrenos[j][2] > maiorArea) maiorArea = terrenos[j][2];
       if(terrenos[j][0] > maiorComprimento) maiorComprimento = terrenos[j][0];            
       if(terrenos[j][1] > maiorProfundidade) maiorProfundidade = terrenos[j][1];
       mediaArea = mediaArea + terrenos[j][2];
       j++;        
    }
    cout << "\n Maior Area =" << maiorArea;
    cout << "\n Maior Comprimento = " << maiorComprimento;
    cout << "\n Maior Profundidade = " << maiorProfundidade;
    mediaArea = mediaArea / 10;
    cout << "\n Media Terreno =" << mediaArea;
    
    
    system("PAUSE");
    return EXIT_SUCCESS;
}
