package lista2_exe;

public class Conta {
    
    long idConta;
    String titular;
    double saldo;
    ContaLimite limite;
    
    public void setIdConta(long idConta) {
        this.idConta = idConta;
    }

    public void setSaldo(double saldo) {
        this.saldo = saldo;
    }

    public void setTitular(String titular) {
        this.titular = titular;
    }

    public long getIdConta() {
        return idConta;
    }

    public double getSaldo() {
        return saldo;
    }

    public String getTitular() {
        return titular;
    }
    
    public void saca(double x)
    {
        if(x>this.saldo)
        {
            this.saldo = 0.00;
            
            if(x>this.limite)
            {
                System.out.println("Impossível realizar o saque!");
            }
            else
            {
                this.limite = this.limite - x;
            }
        }
        else
        {
            this.saldo = this.saldo - x;
        }
    }

    public void deposita(double x)
    {
        this.saldo += x;
    }
    
    public void tranfere(Conta c2, double valor)
    {
        if(valor>this.saldo)
        {
            this.saldo = 0.00;
            
            if(valor>this.limite)
            {
                System.out.println("Impossível realizar a transferência!");
            }
            else
            {
                this.limite = this.limite - valor;
            }
        }
        else
        {
            this.saldo = this.saldo - valor;
        }
    }
            
}
