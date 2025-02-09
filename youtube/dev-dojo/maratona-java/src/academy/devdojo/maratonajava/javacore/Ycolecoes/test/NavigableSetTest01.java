package academy.devdojo.maratonajava.javacore.Ycolecoes.test;

import academy.devdojo.maratonajava.javacore.Ycolecoes.dominio.Manga;
import academy.devdojo.maratonajava.javacore.Ycolecoes.dominio.Smartphone;

import java.util.*;

class ComparatorByMarca implements Comparator<Smartphone> {

    @Override
    public int compare(Smartphone o1, Smartphone o2) {
        return o1.getMarca().compareTo(o2.getMarca());
    }
}

public class NavigableSetTest01 {
    public static void main(String[] args) {
        //Diferentemente de List que usamos o Collections.sort, aqui aplicamos diretamente no construtor
        NavigableSet<Smartphone> set = new TreeSet<>(new ComparatorByMarca());
        Smartphone smartphone = new Smartphone("123", "Nokia");
        Smartphone smartphone2 = new Smartphone("456", "Xiaomi");
        Smartphone smartphone3 = new Smartphone("789", "Apple");
        Smartphone smartphone4 = new Smartphone("124", "Samsung");
        //só funciona com Comparable ou Comparator
        set.add(smartphone);
        set.add(smartphone2);
        set.add(smartphone3);
        set.add(smartphone4);
        for (Smartphone smartphone1 : set) {
            System.out.println(smartphone1);
        }


        NavigableSet<Manga> mangas = new TreeSet<>();
        mangas.add(new Manga(2L, "Hellsing Ultimate", 9.5));
        mangas.add(new Manga(5L, "Attack on titans", 2.99));
        mangas.add(new Manga(3L, "Pokemon", 3.2));
        mangas.add(new Manga(4L, "Dragon Ball Z", 11.20));
        mangas.add(new Manga(1L, "Berserk", 19.9));
        mangas.add(new Manga(1L, "Berserk", 19.9));
        for (Manga manga : mangas) {
            System.out.println(manga);
        }
    }
}
