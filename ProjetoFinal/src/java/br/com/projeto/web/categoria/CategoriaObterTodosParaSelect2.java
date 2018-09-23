/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.projeto.web.categoria;

import br.com.projeto.bean.CategoriaBean;
import br.com.projeto.dao.CategoriaDAO;
import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Alunos
 */
@WebServlet(name = "CategoriaObterTodosParaSelect2", urlPatterns = {"/categoria/obtertodosparaselect2"})
public class CategoriaObterTodosParaSelect2 extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String termo = request.getParameter("term") == null ? "" : request.getParameter("term");

        
        response.setContentType("application/json");

        List<HashMap<String, String>> categorias = new CategoriaDAO().obterTodosParaSelect2(termo);
        HashMap<String, Object> resultado = new HashMap<>();
        resultado.put("results", categorias);
        response.getWriter().print(new Gson().toJson(resultado));
    }

}
