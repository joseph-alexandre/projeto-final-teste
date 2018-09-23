/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.projeto.web.produtos;

import br.com.projeto.bean.CategoriaBean;
import br.com.projeto.bean.ProdutoBean;
import br.com.projeto.dao.ProdutoDAO;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Gabriel
 */
@WebServlet("/produtos")
public class ProdutoIndex extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

       /*List<ProdutoBean> produtos = new ProdutoDAO().obterTodos();
        req.setAttribute("produtos", produtos);*/
        resp.setContentType("text/html;charset=UTF-8");
        req.getRequestDispatcher("/jsp/produtos/index.jsp").include(req, resp);
    
    }
    
    
}
