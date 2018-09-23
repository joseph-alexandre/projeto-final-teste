/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.projeto.web.produtos;

import br.com.projeto.dao.ProdutoDAO;
import com.google.gson.Gson;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Gabriel Budke (gabrielbudke@gmail.com)
 */

@WebServlet(name="ProdutoObterTodosParaDatatable", urlPatterns = {"/produtos/obterparadatatable"})
public class ProdutoObterTodosParaDataTable extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HashMap<String, Object> resultado = new HashMap<>();
        List<HashMap<String,Object>> registros = new ProdutoDAO().obterTodosParaDataTable();
        resultado.put("data", registros);
        resp.setContentType("text/hmtl;charset=UTF-8");
        resp.getWriter().print(new Gson().toJson(resultado));



    }
    
    
}
