package academy.devdojo.maratonajava.testes;

public class Testes {
    public static void main(String[] args) {
        double dias=100;
        double dia=0;
        int idade=19;
        String maior = idade > 18 ? "Maior" : "Menor";
        System.out.println(maior);
        String result;
//        for (int i = 1; i <= 7; i++) {
//            dia = (dias/7)*i;
//            System.out.print("Dia "+i+": ");
//            System.out.printf("%.2f", dia);
//            System.out.println("%");
//        }

        for (int i = 1; i <= 7; i++) {
            dia = (dias/7)*i;
            //System.out.print("Day "+i+": ");
            System.out.println("Day "+i);
            System.out.println();
            //result = String.format(java.util.Locale.US,"%.2f", dia);
            //System.out.println(result+"%");

            Teste teste = new Teste("Joao", 12, 300, 'M');
            System.out.println(teste);
        }
    }
}
