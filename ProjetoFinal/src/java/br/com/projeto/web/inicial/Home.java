/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.projeto.web.inicial;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Gabriel
 */
@WebServlet("/home")
public class Home extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        if (req.getSession().getAttribute("funcionario") == null) {
            resp.sendRedirect("/");
        }
        resp.setContentType("text/html;metacharset=UTF-8");
        req.getRequestDispatcher("/jsp/inicio/inicial.jsp").include(req, resp);

    }

}
