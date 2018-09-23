/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
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
 * @author Patrick
 */
@WebServlet("/fornecedor/update")
public class FornecedorUpdate extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        FornecedorBean fornecedor = new FornecedorBean();
        fornecedor.setId(Integer.parseInt(req.getParameter("id")));
        fornecedor.setNome(req.getParameter("nome"));
        fornecedor.setCnpj(req.getParameter("cnpj"));
        fornecedor.setEmail(req.getParameter("email"));
        fornecedor.setTelefone(req.getParameter("telefone"));
        
        boolean alterou = new FornecedorDAO().editar(fornecedor);
        
        resp.sendRedirect("/fornecedor");
    }
    
    
    
}
