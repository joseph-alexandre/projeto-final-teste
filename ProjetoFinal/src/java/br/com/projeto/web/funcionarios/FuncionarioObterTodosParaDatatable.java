/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.projeto.web.funcionarios;

import br.com.projeto.dao.FuncionarioDAO;
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
@WebServlet(name = "FuncionarioObterTodosParaDatatable", urlPatterns = {"/funcionarios/obtertodosparadatatable"})
public class FuncionarioObterTodosParaDatatable extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HashMap<String, Object> resultado = new HashMap<>();
        List<HashMap<String, Object>> registros = new FuncionarioDAO().obterTodosParaDataTable();
        resultado.put("data", registros);
        resp.setContentType("text/html;charset=UTF-8");
        resp.getWriter().print(new Gson().toJson(resultado));
        
    }
    
}
