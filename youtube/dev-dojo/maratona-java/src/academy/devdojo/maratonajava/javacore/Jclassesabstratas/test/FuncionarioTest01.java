package academy.devdojo.maratonajava.javacore.Jclassesabstratas.test;

import academy.devdojo.maratonajava.javacore.Jclassesabstratas.dominio.Desenvolvedor;
import academy.devdojo.maratonajava.javacore.Jclassesabstratas.dominio.Funcionario;
import academy.devdojo.maratonajava.javacore.Jclassesabstratas.dominio.Gerente;

public class FuncionarioTest01 {
    public static void main(String[] args) {
        Gerente gerente = new Gerente("Nami", 5000);
        Desenvolvedor desenvolvedor = new Desenvolvedor("Chopper", 12000);
        System.out.println(gerente);
        System.out.println(desenvolvedor);
        gerente.imprime();
        desenvolvedor.imprime();
    }
}
