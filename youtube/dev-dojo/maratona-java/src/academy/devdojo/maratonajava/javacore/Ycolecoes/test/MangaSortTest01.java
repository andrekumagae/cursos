package academy.devdojo.maratonajava.javacore.Ycolecoes.test;

import academy.devdojo.maratonajava.javacore.Ycolecoes.dominio.Manga;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class MangaSortTest01 {
    public static void main(String[] args) {
        List<Manga> mangas = new ArrayList<>(6);
        mangas.add(new Manga(2L,"Hellsing Ultimate",9.5));
        mangas.add(new Manga(5L,"Attack on titans",2.99));
        mangas.add(new Manga(3L,"Pokemon",3.2));
        mangas.add(new Manga(4L,"Dragon Ball Z",11.20));
        mangas.add(new Manga(1L,"Berserk",19.9));
        for (Manga manga : mangas) {
            System.out.println(manga);
        }
        System.out.println("=== Ordenando por id ===");
        Collections.sort(mangas);
        for (Manga manga : mangas) {
            System.out.println(manga);
        }


    }
}
