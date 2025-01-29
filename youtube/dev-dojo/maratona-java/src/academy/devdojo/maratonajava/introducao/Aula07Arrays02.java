package academy.devdojo.maratonajava.introducao;

public class Aula07Arrays02 {
    public static void main(String[] args) {
        String[] nomes = new String[4];
        nomes[0] = "Goku";
        nomes[1] = "Kurosaki";
        nomes[2] = "Luffy";
        nomes[3] = "Hinata";
        System.out.println("Array 1: "+nomes);
        for (int i = 0; i < nomes.length; i++) {
            System.out.println("For each 2 - Posição "+i+": "+nomes[i]);
        }
        System.out.println("========");
        nomes = new String[5];
        nomes[4] = "Naruto";
        System.out.println("Array 2: "+nomes);
        for (int i = 0; i < nomes.length; i++) {
            System.out.println("For each 2 - Posição "+i+": "+nomes[i]);
        }
    }
}
