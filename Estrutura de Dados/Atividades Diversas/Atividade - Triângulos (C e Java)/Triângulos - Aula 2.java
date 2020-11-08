import javax.swing.JOptionPane;

public class aula2{
	public static void main(String[] args){
		int i,j;
		int[][] resultados = new int[3][3];
	    double[][] triangulos = new double[3][3];
	    String[] tipo_lados = {" escaleno", " isóceles", " equilátero"};
	    String[] tipo_angulos = {" acutângulo", " obtuso", " reto"};
	    String[] eh_triangulo = {"não é um triângulo", "é um triângulo"};
	    String[] t = new String[3];
	    
	    for (i=0;i<3;i++){
	    	for (j=0;j<3;j++){
	    	triangulos[i][j] = Double.parseDouble(JOptionPane.showInputDialog(null, "Digite o " + (j+1) + "º" + " lado", "Triângulo " + (i+1), JOptionPane.QUESTION_MESSAGE)); 
	    	}
	    }
	    
	    for(i=0; i<3; i++){
	        resultados[i][0] = testa_triangulo(triangulos[i]);
	        if (resultados[i][0]==1){
	            resultados[i][1] = testa_lados(triangulos[i]);
	            resultados[i][2] = testa_angulo(triangulos[i]);
	        }
	        else { // próximos campo não fazem sentido se não for um triângulo.
	            resultados[i][1] = -1;
	            resultados[i][2] = -1;
	        }
	    }
	    
	    for(i=0; i<3; i++){
	    if (resultados[i][0]==1){
	    	t[i] = "1º conjunto de valores: " + eh_triangulo[resultados[i][0]] + tipo_lados[resultados[i][1]] + tipo_angulos[resultados[i][2]] + "\n";
	    }
	    else
	    	t[i] = "1º conjunto de valores: " + eh_triangulo[resultados[i][0]] + "\n";
	    }
	    
	    JOptionPane.showMessageDialog(null, t[0] + t[1] + t[2] , "Resultados", JOptionPane.INFORMATION_MESSAGE);
	}
	
	public static int testa_triangulo(double[] triangulo){
		double l1,l2,l3;
	    l1 = triangulo[0];
	    l2 = triangulo[1];
	    l3 = triangulo[2];
	    
	    if (l1 < l2+l3 && l2 < l1+l3 && l3 < l2+l1) return 1;
	    else return 0;
	}

	public static int testa_lados(double[] triangulo){
		double l1,l2,l3;
	    l1 = triangulo[0];
	    l2 = triangulo[1];
	    l3 = triangulo[2];
	    
	    if (l1 != l2 && l2 != l3 && l1 != l3) return 0; // escaleno
	    else if(l1 == l2 && l2 == l3 && l1 == l3) return 2; // equilátero
	    else return 1;
	}
	
	public static int testa_angulo(double[] triangulo){
		double lado_maior, lado2, lado3, hip, cats;

	    if (triangulo[0] > triangulo[1]){
	        lado_maior = triangulo[0];

	        if (triangulo[2] > triangulo[0]){
	            lado2 = lado_maior;
	            lado_maior = triangulo[2];
	            lado3 = triangulo[1];
	        }
	        else {
	            lado2 = triangulo[1];
	            lado3 = triangulo[2];
	        }
	    }
	    else {
	        lado_maior = triangulo[1];

	        if (triangulo[2] > triangulo[1]){
	            lado2 = lado_maior;
	            lado_maior = triangulo[2];
	            lado3 = triangulo[0];
	        }
	        else {
	            lado2 = triangulo[0];
	            lado3 = triangulo[2];
	        }
	    }
	    hip = lado_maior*lado_maior;
	    cats = lado2*lado2 + lado3*lado3;
	    if (cats > hip) return 0;
	    else if (cats < hip) return 1;
	    else return 2;
	}
}