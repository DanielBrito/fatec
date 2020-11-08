package retangulo;

import javax.swing.JOptionPane;

public class retangulo extends area {
    
    //método para cálculo da area
    public float GetArea()
    {
        ar = (base*altura);
        return ar;
    }
    
    public static void main(String[] args) 
    {
        float N1, N2;
        
        String v1 = JOptionPane.showInputDialog("Base: ");
        String v2 = JOptionPan.showInputDialog("Altura: ");
        
        N1 = Float.parseFloat(v1);
        N2 = Float.parseFloat(v2);
        
        retangulo a1 = new retangulo();
        a1.Setvalores(N1, N2);
        
        JOptionPane.showMessageDialog(null,"A área é " + a1.GetArea());
    }
    
}
