package br.com.teste.modelo;

/**
 * 
 * @author D.Francisco
 *
 */
public class Cidade {

    private String cidade;
    private String estado;
    private String descricao;
    
    public Cidade() {
    }
    
    public Cidade(String cidade, String estado, String descricao) {
        super();
        this.cidade = cidade;
        this.estado = estado;
        this.descricao = descricao;
    }

    public String getCidade() {
        return cidade;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }
    
}
