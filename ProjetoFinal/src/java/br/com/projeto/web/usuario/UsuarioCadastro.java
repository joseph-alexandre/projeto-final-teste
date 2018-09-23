/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.projeto.web.usuario;

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
@WebServlet(name = "UsuarioCadastro", urlPatterns = {"/Cadastro"})
public class UsuarioCadastro extends HttpServlet {

    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;metacharset=UTF-8");
        req.getRequestDispatcher("/jsp/cadastro/UsuarioCadastro.jsp").include(req, resp);
        
    }
    }

 
