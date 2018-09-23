package br.com.projeto.web;

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
@WebServlet(name = "Index", urlPatterns = {""})
public class Index extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (request.getSession().getAttribute("funcionario") != null) {
            response.sendRedirect("/home");
        }
        response.setContentType("text/html;charset=UTF-8");
        request.getRequestDispatcher("/jsp/index.jsp").include(request, response);
    }

}
