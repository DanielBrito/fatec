import java.util.Scanner;

public class aula1 {
    public static final int ITENS = 4;
    public static String[] nome = new String[ITENS];
    public static double[][] dados = new double[ITENS][3]; //ID;qtd;valor

	public static void main(String[] args) {
        Scanner stdln = new Scanner(System.in);
        char trigger = 's';
        int i, escolha;
        double busca_f;
        String busca_s;
        
        for(i=0; i<ITENS; i++) { // coleta os dados
            System.out.println("nome: ");
            nome[i] = stdln.next();
            dados[i][0] = i;
            System.out.println("quantidade: ");
            dados[i][1] = stdln.nextDouble();
            System.out.println("valor: ");
            dados[i][2] = stdln.nextDouble();
        }
        imprime();

        while (trigger == 's'){
            do{
                System.out.print("Deseja buscar por qual campo?\n1- nome\n2- quantidade\n3- valor\n");
                escolha = stdln.nextInt();
                if (escolha == 1){
                    System.out.print("Qual o nome a ser buscado? ");
                    busca_s = stdln.next();
                    busca_str(busca_s);
                }
                else if (escolha == 2){
                    System.out.print("Qual a quantidade a ser buscada? ");
                    busca_f = stdln.nextDouble();
                    busca_vq(1,busca_f);
                }
                else if (escolha == 3){
                    System.out.print("Qual o valor a ser buscado? ");
                    busca_f = stdln.nextDouble();
                    busca_vq(2,busca_f);
                }
                else System.out.print("Escolha 1, 2 ou 3\n\n");
            } while (escolha != 1 && escolha != 2 && escolha != 3);

            System.out.print("Deseja fazer outra busca? (s / n)");
            trigger = stdln.next().charAt(0);
        }

	}

    public static void imprime(){
    /* Usei essa função para realizar o debug do código
     * Imprime uma matriz de dados bidimensional com formatação. */

        int i,j;
        for(i=0;i<ITENS;i++){
            System.out.print(nome[(int)dados[i][0]] + " ");
            for(j=0;j<3;j++){
                System.out.print(dados[i][j] + " ");
            }
            System.out.println();
        }
    }
    
    public static void busca_vq(int index, double busca){
        /* Busca valores reais numa matriz e imprime os dados encontrados
        * caso mais de uma ocorrência seja encontrada, todas serão impressas */

        int i,j,cont=0;
        System.out.println("nome\t" + "quantidade\t" + "valor\t");
        ordena(index);
        for(i=0;i<ITENS;i++){
            if (dados[i][index] == busca){
                System.out.println(nome[(int)dados[i][0]] + "\t" + dados[i][1] + "\t" + dados[i][2]);
                cont++;
            }
            if (dados[i][index] > busca) { // melhora o desempenho
                break;
            }
        }
        if (cont == 0){
            System.out.print("Nenhum dado encontrado!\n");
        }
    }
    

    public static void busca_str(String busca){
        /* Busca uma string na matriz e imprime os dados encontrados
         * caso mais de uma ocorrência seja encontrada, todas serão impressas
         * usei uma expressão regular para buscar substrings.*/

        int i,cont=0;
        System.out.println("nome" + "\t" + "quantidade" + "\t" + "valor");
        for(i=0;i<ITENS;i++){
            if (nome[i].matches("(?i).*"+busca+".*")){
                System.out.println(nome[i] + "\t" + dados[i][1] + "\t" + dados[i][2]);
                cont++;
            }
        }
        if (cont ==0){
            System.out.print("Nenhum dado encontrado!\n");
        }
    }

    public static void ordena(int index){
        /* ordena valores numa matriz bidimensional com 3 colunas
        * recebe como parâmetro o index a ser usado para a ordenação*/

        int h,i,j;
        double tmp;
        for(h=0;h<ITENS;h++){ //passa varias vezes pela matriz
            for(i=0;i<ITENS-1-h;i++){ //compara o valor atual com o próximo para todos os valores.
                                      //-h é usado para melhorar desempenho
                if (dados[i][index] > dados[i+1][index]){
                    for(j=0;j<3;j++){
                        tmp = dados[i][j];
                        dados[i][j] = dados[i+1][j];
                        dados[i+1][j] = tmp;
                    }
                }
            }
        }
    }
    
}



