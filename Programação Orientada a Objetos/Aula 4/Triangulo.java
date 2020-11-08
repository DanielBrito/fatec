package triangulo;


import javax.swing.JOptionPane;
public class Triangulo {

   float base, altura, resultado;
 
  public void SetDados(float BASE, float ALTURA)
  {
      base=BASE;
      altura=ALTURA;
  }
 
  /*Calcular área*/
     
  public float GetArea()
  {
      resultado=(base*altura)/2;
      return resultado;
  }
   
  /*Construtor da área*/
  
  public void area(){
      base=0;
      altura=0;
      resultado=0;
  }
  
  
    public static void main(String[] args) {
   
        float Base, Altura;
        
        try {
        String B=JOptionPane.showInputDialog("Digite a base do triangulo: ");
        String A=JOptionPane.showInputDialog("Digite a altura do triangulo: ");
        
        Base=Float.parseFloat(B);
        Altura=Float.parseFloat(A);
        
        Triangulo T1= new Triangulo();
        T1.SetDados(Base, Altura);
        
        JOptionPane.showMessageDialog(null,"A area do triangulo é: " + T1.GetArea());
        }
         
        catch (NumberFormatException e)
            {
                JOptionPane.showMessageDialog(null, "Digite apenas números", "ERRO", 3);
            }
        
    
    }
}