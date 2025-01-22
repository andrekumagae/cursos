package academy.devdojo.maratonajava.introducao;

public class Aula07Arrays02 {
    public static void main(String[] args) {
        String[] nomes = new String[4];
        nomes[0] = "Goku";
        nomes[1] = "Ichigo";
        nomes[2] = "Luffy";
        nomes[3] = "Hinata";
        System.out.println(nomes);

        for (int i = 0; i < nomes.length; i++) {
            System.out.println(nomes[i]);
        }
        nomes = new String[5];
        nomes[4] = "Naruto";

        for (int i = 0; i < nomes.length; i++) {
            System.out.println(nomes[i]);
        }
        System.out.println(nomes);
    }
}
