/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package lista1_exe11;

/**
 *
 * @author lab3aluno
 */
public class Lista1_Exe11 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
        int ano_nasc = 1970, ano_atual = 2014;
        int idade = ano_atual - ano_nasc;
        
        if(idade>17)
        {
            System.out.println("Pode tirar carteira de motorista.");
        }
        else
        {
            System.out.println("Não pode tirar carteira de motorista.");
        }
    }
    
}
