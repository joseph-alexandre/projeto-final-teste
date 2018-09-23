package br.com.projeto.bean;

/**
 *
 * @author Patrick
 */
public class ProdutoBean {
    
    private int id;
    private int idCategoria;
    private CategoriaBean categoria;
    private String nome;
    private float preco;
    private int quantidade;

    public int getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(int quantidade) {
        this.quantidade = quantidade;
    }

    public int getIdCategoria() {
        return idCategoria;
    }

    public void setIdCategoria(int idCategoria) {
        this.idCategoria = idCategoria;
    }

    public CategoriaBean getCategoria() {
        return categoria;
    }

    public void setCategoria(CategoriaBean categoria) {
        this.categoria = categoria;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public float getPreco() {
        return preco;
    }

    public void setPreco(float preco) {
        this.preco = preco;
    }
 
    
}
