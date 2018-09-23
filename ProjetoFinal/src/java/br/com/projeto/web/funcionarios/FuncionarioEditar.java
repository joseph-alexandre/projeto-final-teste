package br.com.projeto.web.funcionarios;

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
@WebServlet(urlPatterns="/funcionario/editar")
public class FuncionarioEditar extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;metacharset=UTF-8");
        req.getRequestDispatcher("/jsp/funcionario/editar.jsp").include(req, resp);
        
    }
    
    
    
}
