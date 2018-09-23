package br.com.projeto.bean;

import java.util.List;

/**
 *
 * @author Patrick
 */
public class EstoqueBean {
    
    private int idProduto;
    private ProdutoBean produto;
    private int id, quantidade;
    private String tipo;

    public int getIdProduto() {
        return idProduto;
    }

    public void setIdProduto(int idProduto) {
        this.idProduto = idProduto;
    }

    public ProdutoBean getProduto() {
        return produto;
    }

    public void setProduto(ProdutoBean produto) {
        this.produto = produto;
    }

    public int getId() {
        return id;
    }

    public void setId(int Id) {
        this.id = Id;
    }

    public int getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(int quantidade) {
        this.quantidade = quantidade;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public void add(List<EstoqueBean> estoque) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
