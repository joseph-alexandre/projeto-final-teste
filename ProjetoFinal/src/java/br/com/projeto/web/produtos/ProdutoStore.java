package br.com.projeto.web.produtos;

import br.com.projeto.bean.CategoriaBean;
import br.com.projeto.bean.EstoqueBean;
import br.com.projeto.bean.ProdutoBean;
import br.com.projeto.dao.CategoriaDAO;
import br.com.projeto.dao.EstoqueDAO;
import br.com.projeto.dao.ProdutoDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author Logan Michel
 */
@WebServlet(urlPatterns = "/produtos/store")
public class ProdutoStore extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ProdutoBean produto = new ProdutoBean();
        //Inserindo dados no ProdutoBean
        produto.setNome(req.getParameter("nome"));
        //produto.setPreco(Float.parseFloat(req.getParameter("preco")));

        try {

            float preco = Float.parseFloat(req.getParameter("preco"));
            produto.setPreco(preco);

            int quantidade = Integer.parseInt(req.getParameter("quantidade"));
            produto.setQuantidade(quantidade);
        }catch(NumberFormatException e){
            System.out.print("Vcilao");

        }

        produto.setIdCategoria(Integer.parseInt(req.getParameter("categoria")));
        produto.setId(new ProdutoDAO().adicionar(produto));

        /*
        EstoqueBean estoque = new EstoqueBean();
        estoque.setIdProduto(Integer.parseInt(req.getParameter("")));
        estoque.setId(new EstoqueDAO().adicionar(estoque));
         */
    }

}
