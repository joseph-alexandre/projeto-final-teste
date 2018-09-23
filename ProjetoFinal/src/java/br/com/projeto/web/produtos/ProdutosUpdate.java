package br.com.projeto.web.produtos;

import br.com.projeto.bean.ProdutoBean;
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
@WebServlet("/produtos/update")
public class ProdutosUpdate extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ProdutoBean produto = new ProdutoBean();
        produto.setId(Integer.parseInt(req.getParameter("id")));
        produto.setNome(req.getParameter("nome"));
        produto.setPreco(Float.parseFloat(req.getParameter("preco")));
        produto.setQuantidade(Integer.parseInt(req.getParameter("quantidade")));
        produto.setIdCategoria(Integer.parseInt(req.getParameter("categoria")));
        
        boolean alterou = new ProdutoDAO().editar(produto);
    
        
    resp.sendRedirect("/produtos");
    
    }
    
}
