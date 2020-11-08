package area;
import javax.swing.JOptionPane;

public class Area {
    
    //atributos da classe area
    float base, altura, ar;
    
    //método para leitura da base e altura
    public void Setvalores(float B, float H)
    {
        base = B;
        altura = H;
    }
    
    //método para cálculo da área
    public float GetArea()
    {
        ar = (base*altura)/2;
        return ar;
    }
    
    //construtor da area
    public void area()
    {
        base = 0;
        altura = 0;
        ar = 0;
    }

    public static void main(String[] args) 
    {
        float N1, N2;
        
        String v1 = JOptionPane.showInputDialog("Base: ");
        String v2 = JOptionPane.showInputDialog("Altura: ");
        
        N1 = Float.parseFloat(v1);
        N2 = Float.parseFloat(v2);
        
        Area a1 = new Area();
        a1.Setvalores(N1, N2);
        
        JOptionPane.showMessageDialog(null, "A área é " + a1.GetArea() + " cm².");        
    }
    
}