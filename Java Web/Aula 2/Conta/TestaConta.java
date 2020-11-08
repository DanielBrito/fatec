package lista2_exe;

public class TestaConta {

    public static void main(String[] args) {
        
        Conta minhaConta;
        minhaConta = new Conta();
        
        minhaConta.setTitular("Daniel Brito");
        minhaConta.setSaldo(80950.00);
        minhaConta.saca(200);
        minhaConta.deposita(500);
        
        System.out.println("Saldo atual: R$ " + minhaConta.saldo);
        
    }
    
}
