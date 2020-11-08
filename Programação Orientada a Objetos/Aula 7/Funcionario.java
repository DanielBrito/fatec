package funcionario;

import javax.swing.JOptionPane;

public class Funcionario {
    
    //atributos da classe funcionário
    String nome;
    Float salario;
    Float porcentagem;

    public String getNome() {
        return nome;
    }

    public Float getSalario() {
        return salario;
    }

    public Float getPorcentagem() {
        return porcentagem;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public void setSalario(Float salario) {
        this.salario = salario;
    }

    public void setPorcentagem(Float porcentagem) {
        this.porcentagem = porcentagem;
    }
    
    //método para aumentar salário
    public float AumentarSalario()
    {
        salario = salario + (salario*porcentagem);
        return salario;
    }
    
    //método consultar dados dos funcionários
    public String DadosFuncionario(String Nome, float Salario, float Porcentagem)
    {
        nome = Nome;
        
        
        
    }
    
    public static void main(String[] args) 
    {   
        String Name;
        Float Salary;
        Float Porcentaje;
        
        String Nome = JOptionPane.showInputDialog("Digite o nome: ");
        String Salario = JOptionPane.showInputDialog("Digite o salário: R$ ");
        String Porcentagem = JOptionPane.showInputDialog("Digite a porcentagem de aumento: ");
        
        Salary = Float.parseFloat(Salario);
        Porcentaje = Float.parseFloat(Porcentagem);
        
        Funcionario f1 = new Funcionario();
        f1.Dados
        
    }
    
}
