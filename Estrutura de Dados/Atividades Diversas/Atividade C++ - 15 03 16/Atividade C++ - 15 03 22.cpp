/*

> Criar um programa com as seguintes características para tratar valores inteiros:

  - Inserir
  - Ordenar (bubble, selection, insertion, merge, quick)
  - Buscar (sequencial, binária)

  OBSERVAÇÕES:

  Os métodos de ordenação estão com algum problema de lógica, pois imprimem todas as 100
  posições do vetor, apresentando os números (ordenados) somente no final.
  Isto faz com que a busca sequencial falhe se executada depois da ordenação.
  Também exibe a posição errada na busca binária, se esta for executada depois da ordenação.
  Além disso, se houver a ordenação do vetor, a impressão da estrutura é comprometida.

*/

#include "iostream"
#include "string.h"
#include "windows.h"
#include "stdlib.h"
#include "math.h"
#include "iomanip"
#include "conio.h"

#define n 10

using namespace std;

int x[n], i= -1;


void inserir_valor(int valor) //op==1
{
    i++;
    x[i] = valor;
}


void bubble_sort(int vet[], int max) //op==2
{
    system("cls");

    int aux, i, j;

    for(j=n-1 ; j>=1 ; j--)
    {
        for(i=0 ; i<j ; i++)
        {
            if(vet[i]>vet[i+1])
            {
                aux = vet[i];
                vet[i] = vet[i+1];
                vet[i+1] = aux;
            }
        }
    }

    cout << " Ordenacao Bubble Sort \n\n" << endl;

    for(i=0 ; i<n ; i++)
    {
        cout << "  " << vet[i] << " ";
    }
}


void selection_sort(int vet[], int max) //op==3
{
    system("cls");

    int i, j, min, aux;

    for(i=0 ; i<(n-1) ; i++)
    {
        min = i;

        for(j=i+1 ; j<n; j++)
        {
            if(vet[j] < vet[min])
            {
                min = j;
            }
        }

        if(i != min)
        {
            aux = vet[i];
            vet[i] = vet[min];
            vet[min] = aux;
        }
    }

    cout << " Ordenacao Selection Sort \n\n" << endl;

    for(i=0 ; i<n ; i++)
    {
        cout << "  " << vet[i] << " ";
    }
}


void insertion_sort(int vet[], int max) //op==4
{
    system("cls");

    int i, j, valor_atual;

    for(j=1 ; j<n ; j++)
    {
        valor_atual = vet[j];

        i = j-1;

        while(i>=0 && vet[i] > valor_atual)
        {
            vet[i+1] = vet[i];
            i--;
        }

        vet[i+1] = valor_atual;
    }

    cout << " Ordenacao Insertion Sort \n\n" << endl;

    for(i=0 ; i<n ; i++)
    {
        cout << "  " << vet[i] << " ";
    }
}


/*
void merge_sort(int vet[], int max) //op==5
{

}
*/


/*
void quick_sort(int vet[], int max)
{

}
*/


int busca_sequencial(int valor) //op==7
{
    for (int indice=0; indice<=i; indice++)
    {
        if ( x[indice] == valor )
        {
            return indice;
        }
    }

    return -1;
}


int busca_binaria(int vet[], int valor, int max)
{
    int inf = 0;
    int sup = n-1;
    int meio;

    while(inf<=sup)
    {
        meio = (inf+sup)/2;

        if(valor == vet[meio])
        {
            return meio;
        }
        else if(valor < vet[meio])
        {
            sup = meio-1;
        }
        else
            inf = meio+1;
    }

    return -1;
}


void imprimir() //op==9
{
    system("cls");

    cout << "*** Dados da Estrutura *** \n \n " << endl;

    for (int j=0;j<=i;j++)
    {
        cout << " Valor " << x[j] << " no indice " << j << endl;
    }

    getch();
}


int tela ()
{
    int op = -1;

    system("cls");

    cout << "\t### ATIVIDADE - Daniel Brito ### \n" << endl;

    cout << " 1 - Inserir Valor" << endl;
    cout << " 2 - Ordenacao Bubble Sort" << endl;
    cout << " 3 - Ordenacao Selection Sort" << endl;
    cout << " 4 - Ordenacao Insertion Sort" << endl;
    cout << " 5 - Ordenacao Merge Sort [NAO IMPLEMENTADO]" << endl;
    cout << " 6 - Ordenacao Quick Sort [NAO IMPLEMENTADO]" << endl;
    cout << " 7 - Busca Sequencial" << endl;
    cout << " 8 - Busca Binaria" << endl;
    cout << " 9 - Imprimir Estrutura" << endl;
    cout << " 0 - Finalizar" << endl;

    cout << "\n   - Item > ";
    cin >> op;

    return op;
}


void executa_menu()
{
    int valor, op = -1;

    while (op != 0)
    {
        op = tela();

        if (op==1) // Digitar valor
        {
            system("cls");
            cout << "Digite um valor (inteiro): ";
            cin >> valor;
            inserir_valor(valor);
        }
        else if (op==2) // Ordenação Bubble Sort
        {
            bubble_sort(x, n);

            getch();
        }
        else if (op==3) // Ordenação Selection Sort
        {
            selection_sort(x, n);

            getch();
        }
        else if (op==4) // Ordenação Insertion Sort
        {
            insertion_sort(x, n);

            getch();
        }
        else if (op==5) // Ordenação Merge Sort
        {
            // Explicação
        }
        else if (op==6) // Ordenação Quick Sort
        {
            // Explicação
        }
        else if (op==7) // Busca Sequencial
        {
            system("cls");

            cout << "Digite valor a ser procurado: ";
            cin >> valor;

            if (busca_sequencial(valor) != -1)
                cout << "\nValor existente no indice " << busca_sequencial(valor) << endl;
            else
                cout << "\nValor inexistente na estrutra!" << endl;

            getch();
        }
        else if (op==8) // Busca Binária
        {
            system("cls");

            int resultado;

            cout << "Digite o valor a ser procurado: ";
            cin >> valor;

            busca_binaria(x, valor, n);

            resultado = busca_binaria(x, valor, n);

            if(resultado != -1)
            {
                cout << "\nValor existente no indice " << resultado << endl;
            }
            else
                cout << "\nValor inexistente na estrutra!" << endl;

                getch();
        }
        else if (op==9) // Exibir Estrutura
        {
            imprimir();
        }
     }
}


int main()
{
    executa_menu();
    return 0;
}
