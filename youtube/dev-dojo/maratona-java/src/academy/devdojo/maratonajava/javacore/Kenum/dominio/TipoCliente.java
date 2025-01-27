package academy.devdojo.maratonajava.javacore.Kenum.dominio;

public enum TipoCliente {
    PESSOA_FISICA(1, "Pessoa Física"),
    PESSOA_JURIDICA(2, "Pessoa Jurídica");
    private final int VALOR;
    private String tipoPessoa;

    TipoCliente(int VALOR, String tipoPessoa) {
        this.VALOR = VALOR;
        this.tipoPessoa = tipoPessoa;
    }

    public int getVALOR() {
        return VALOR;
    }

    public String getTipoPessoa() {
        return tipoPessoa;
    }
}


