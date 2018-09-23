package br.com.projeto.web.fornecedor;

import br.com.projeto.bean.FornecedorBean;
import br.com.projeto.dao.FornecedorDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Gabriel Budke
 */
@WebServlet(urlPatterns="/fornecedor/store")
public class FornecedorStore extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
            throws ServletException, IOException {

        FornecedorBean fornecedor = new FornecedorBean();
        fornecedor.setNome(req.getParameter("nome"));
        fornecedor.setCnpj(req.getParameter("cnpj"));
        fornecedor.setEmail(req.getParameter("email"));
        fornecedor.setTelefone(req.getParameter("telefone"));
        int codigo = new FornecedorDAO().adicionar(fornecedor);
        
        if(codigo > 0){
            resp.sendRedirect("/fornecedor/cadastro");
            
        }
    
    
    
    
    }
    
    
    
}
