<%-- 
    Document   : editar
    Created on : 06/09/2018, 09:47:33
    Author     : Patrick Nacimento
--%>

<%@page import="br.com.projeto.dao.FuncionarioDAO"%>
<%@page import="br.com.projeto.bean.FuncionarioBean"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../master/master.jsp"%>
<% 
    int id = Integer.parseInt(request.getParameter("id"));
    FuncionarioBean funcionario = new FuncionarioDAO().obterPeloId(id);%>
    
    <%List<FuncionarioBean> funcionarios = new FuncionarioDAO().obterTodos();%>
    
    <form action="/funcionario/update" method="post">
        <input type="hidden" name="id" value="<%= funcionario.getId() %>">
        <div>
            <label for="campo-nome">Nome</label>
            <input type="text" class="form-control" id="campo-nome" name="nome" value="<%= funcionario.getNome() %>">
        </div>
        <div>
            <label for="campo-cpf">CPF</label>
            <input type="text" class="form-control" id="campo-cpf" name="cpf" value="<%= funcionario.getCpf() %>">
        </div>
        <div>
            <label for="campo-email">E-mail</label>
            <input type="text" class="form-control" id="campo-email" name="email" value="<%= funcionario.getEmail() %>">
        </div>
        <div>
            <label for="campo-telefone">Telefone</label>
            <input type="text" class="form-control" id="campo-telefone" name="telefone" value="<%= funcionario.getTelefone() %>">
        </div>
        <div>
            <label for="campo-funcao">Função</label>
            <input type="text" class="form-control" id="campo-funcao" name="funcao" value="<%= funcionario.getFuncao() %>">
        </div>
        <div>
            <label for="campo-cep">CEP</label>
            <input type="text" class="form-control" id="campo-cep" name="cep" value="<%= funcionario.getCep() %>">
        </div>
        <div>
            <label for="campo-estado">Estado</label>
            <input type="text" class="form-control" id="campo-estado" name="estado" value="<%= funcionario.getEstado() %>">
        </div>
        <div>
            <label for="campo-rua">Rua</label>
            <input type="text" class="form-control" id="campo-rua" name="rua" value="<%= funcionario.getRua() %>">
        </div>
        <div>
            <label for="campo-bairro">Bairro</label>
            <input type="text" class="form-control" id="campo-bairro" name="bairro" value="<%= funcionario.getBairro() %>">
        </div>
        <div>
            <label for="campo-cidade">Cidade</label>
            <input type="text" class="form-control" id="campo-cidade" name="cidade" value="<%= funcionario.getCidade() %>">
        </div>
        <div>
            <label for="campo-numero">Numero</label>
            <input type="text" class="form-control" id="campo-numero" name="numero" value="<%= funcionario.getNumero() %>">
        </div>
        
        <div>
        <input class="btn btn-success"  type="submit" value="Alterar">
        </div>
        
</form>


<%@include file="../master/rodape.jsp"%>