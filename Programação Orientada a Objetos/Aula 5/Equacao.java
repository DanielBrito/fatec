package equacao;
import javax.swing.JOptionPane;

public class Equacao {
    
    int VarA, VarB, VarC, delta, R1, R2;
    
    public void SetDados(int a, int b, int c)
    {
        VarA = a;
        VarB = b;
        VarC = c;
    }
    
    public int R1()
    {
        R1 = (((-1*VarB)+(delta*(1/2)))/(2*VarA));
        return R1;
    }
    
    public int R2()
    {
        R2 = (((-1*VarB)-(delta*(1/2)))/(2*VarA));
        return R2;
    }
    
    

    public static void main(String[] args) {
        
        int a, b, c, delta, x1=0, x2=0;
    
        String vA = JOptionPane.showInputDialog("Digite o valor de a: ");
        String vB = JOptionPane.showInputDialog("Digite o valor de b: ");
        String vC = JOptionPane.showInputDialog("Digite o valor de c: ");
        
        a = Integer.parseInt(vA);
        b = Integer.parseInt(vB);
        c = Integer.parseInt(vC);
        
        Equacao Eq1= new Equacao();
        Eq1.SetDados(a, b, c);
        
        delta = ((b*b)-(4*a*c));
        
        if(delta>=0)
        {
            x1 = Eq1.R1();
            
            x2 = Eq1.R2();
        }
        else
        {
            JOptionPane.showMessageDialog(null,"Não existem raízes reais!");
        }
        
        JOptionPane.showMessageDialog(null,"Delta = "+ delta + "\n" + "X1 = "+ x1 +"\n"+"X2 = "+ x2);
    }
    
}