package br.com.projeto.web.funcionarios;

import br.com.projeto.bean.FuncionarioBean;
import br.com.projeto.dao.FuncionarioDAO;
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
@WebServlet(urlPatterns = "/funcionarios/store")
public class FuncionarioStore extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        FuncionarioBean funcionario = new FuncionarioBean();
        funcionario.setLogin(req.getParameter("login"));
        funcionario.setSenha(req.getParameter("senha"));
        funcionario.setNome(req.getParameter("nome"));
        funcionario.setFuncao(req.getParameter("funcao"));
        funcionario.setEmail(req.getParameter("email"));
        funcionario.setCpf(req.getParameter("cpf"));
        funcionario.setTelefone(req.getParameter("telefone"));
        funcionario.setCep(req.getParameter("cep"));
        funcionario.setEstado(req.getParameter("estado"));
        funcionario.setRua(req.getParameter("rua"));
        funcionario.setBairro(req.getParameter("bairro"));
        funcionario.setNumero(req.getParameter("numero"));
        funcionario.setCidade(req.getParameter("cidade"));
        
        funcionario.setId(new FuncionarioDAO().adicionar(funcionario));
        
      
        resp.sendRedirect("/funcionarios");

        resp.setContentType("text/html;metacharset=UTF-8");
    }
}
    
    