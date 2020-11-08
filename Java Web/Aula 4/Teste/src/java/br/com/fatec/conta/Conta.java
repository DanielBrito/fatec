/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package br.com.fatec.conta;

/**
 *
 * @author lab6aluno
 */
public class Conta {
  
    double saldo_inicial=1000.00;

    public double getSaldo_inicial() {
        return saldo_inicial;
    }

    public void setSaldo_inicial(double saldo_inicial) {
        this.saldo_inicial = saldo_inicial;
    }
    
    
       
    public void saca(double quantidade)
    {
        double novo_saldo = this.saldo_inicial - quantidade;
        this.saldo_inicial = novo_saldo;
    }
    
    public void deposito(double quantidade)
    {
        this.saldo_inicial += quantidade; // = this.saldo_inicial = this.saldo_inicial + quantidade
    }
}
