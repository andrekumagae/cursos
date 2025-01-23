package academy.devdojo.maratonajava.javacore.Bintroducaometodos.teste;

import academy.devdojo.maratonajava.javacore.Bintroducaometodos.dominio.Estudante;
import academy.devdojo.maratonajava.javacore.Bintroducaometodos.dominio.ImpressoraEstudante;

public class EstudanteTest01 {
    public static void main(String[] args) {
        Estudante estudante1 = new Estudante();
        estudante1.nome = "Midoriya";
        estudante1.idade = 15;
        estudante1.sexo = 'M';
        Estudante estudante2 = new Estudante();
        estudante2.nome = "Sakura";
        estudante2.idade = 16;
        estudante2.sexo = 'F';
        ImpressoraEstudante impressoraEstudante = new ImpressoraEstudante();
        impressoraEstudante.imprime(estudante1);
        impressoraEstudante.imprime(estudante2);
    }
}
