package br.com.projeto.web.funcionarios;

import br.com.projeto.dao.FuncionarioDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Patrick Nacimento
 */
@WebServlet("/funcionario/excluir")
public class FuncionarioExcluir extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
         int id = Integer.parseInt(req.getParameter("id"));
        boolean apagou = new FuncionarioDAO().excluir(id);

        if (apagou) {
            resp.sendRedirect("/funcionario");
        } else {
            resp.getWriter().print("Não foi Possível Deletar!");
        }
        
    }
    
    
    
    
    
}