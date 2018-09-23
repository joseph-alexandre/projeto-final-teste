package br.com.projeto.web.produtos;

import br.com.projeto.dao.ProdutoDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author logan Michel
 */
@WebServlet("/produtos/excluir")
public class ProdutosExcluir extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        int id = Integer.parseInt(req.getParameter("id"));
        boolean apagou = new ProdutoDAO().excluir(id);

        if (apagou) {
            resp.sendRedirect("/produtos");
        } else {
            resp.getWriter().print("Não foi Possível Deletar!");
        }
        
    }

}
