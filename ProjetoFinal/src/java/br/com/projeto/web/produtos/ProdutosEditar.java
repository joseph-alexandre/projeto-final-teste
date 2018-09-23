package br.com.projeto.web.produtos;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author logan Michel
 */
@WebServlet("/produtos/editar")
public class ProdutosEditar extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;metacharset=UTF-8");
        req.getRequestDispatcher("/jsp/produtos/editar.jsp").include(req, resp);
        
    }
    
    
    
    
}
