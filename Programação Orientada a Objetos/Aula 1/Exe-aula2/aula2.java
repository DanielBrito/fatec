/**
 * @(#)aula2.java
 *
 *
 * @author 
 * @version 1.00 2014/1/21
 */
 
  import javax.swing.JOptionPane;
  //import java.text.DecimalFormat;

public class aula2 {
        
    /**
     * Creates a new instance of <code>aula2</code>.
     */
    public aula2() {
    }
    
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
        String valor1 = JOptionPane.showInputDialog("VALOR 1: ");
        String valor2 = JOptionPane.showInputDialog("VALOR 2: ");
        
        int soma = Integer.parseInt(valor1) + Integer.parseInt(valor2);
        
        //int soma = Double.parseDouble(valor1) + Double.parseDouble(valor2);
	//DecimalFormat df = new DecimalFormat("0.00");
	//String str = df.format(soma);
	//JOptionPane.showMessageDialog(null, "SOMA: " + valor1 + " + " + valor2 + " = " + str, "SOMA", JOptionPane.INFORMATION_MESSAGE);
        
        
	JOptionPane.showMessageDialog(null, "SOMA: " + valor1 + " + " + valor2 + " = " + soma, "SOMA", JOptionPane.INFORMATION_MESSAGE);
    }
}
