/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.projeto.web.usuario;

import br.com.projeto.bean.FuncionarioBean;
import br.com.projeto.dao.FuncionarioDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Alunos
 */
@WebServlet(name = "UsuarioLogin", urlPatterns = {"/usuario/login"})
public class UsuarioLogin extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String login = request.getParameter("login");
        String senha = request.getParameter("senha");
        FuncionarioBean funcionario = new FuncionarioDAO().validarLogin(login, senha);
        if (funcionario == null) {
            response.sendRedirect("/");
        } else {
            request.getSession().setAttribute("funcionario", funcionario);
            response.sendRedirect("/home");
        }

    }

}
