package br.com.projeto.web.categoria;

import br.com.projeto.dao.CategoriaDAO;
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
 * @author Patrick
 */
@WebServlet(name = "CategoriaObterTodosParaGrafico", urlPatterns = {"/categorias/obtertodosparagrafico"})
public class CategoriaObterTodosParaGrafico extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HashMap<String, Object> resultado = new HashMap<>();
        List<HashMap<String, Object>> registros = new CategoriaDAO().obterTodosParaGrafico();
        resultado.put("data", registros);
        resp.setContentType("text/html;charset=UTF-8");
        resp.getWriter().print(new Gson().toJson(resultado));
    
    
    }
    
    
    
}
