package br.com.projeto.web.categoria;

import br.com.projeto.bean.CategoriaBean;
import br.com.projeto.dao.CategoriaDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author logan Michel
 */
@WebServlet (urlPatterns="/categoria/store")
public class CategoriaStore extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
	    throws ServletException, IOException {
	
	CategoriaBean categoria = new CategoriaBean();
	categoria.setNome(req.getParameter("categoria"));
	categoria.setId(new CategoriaDAO().adicionar(categoria));
	
	resp.sendRedirect("/produtos/cadastro");
	
    }
    
}
