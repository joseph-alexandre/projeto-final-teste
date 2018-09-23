package br.com.projeto.web.estoque;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns="/estoque")
public class EstoqueIndex extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
            throws ServletException, IOException {
      resp.setContentType("text/html;charset=UTF-8");
      req.getRequestDispatcher("/jsp/estoque/estoque.jsp").include(req, resp);
        
    }
    

}
