<%-- 
    Document   : editar
    Created on : 06/09/2018, 09:47:33
    Author     : Patrick Nacimento
--%>

<%@page import="java.util.List"%>
<%@page import="br.com.projeto.dao.FornecedorDAO"%>
<%@page import="br.com.projeto.bean.FornecedorBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../master/master.jsp"%>
<% 
    int id = Integer.parseInt(request.getParameter("id"));
    FornecedorBean fornecedor = new FornecedorDAO().obterPeloId(id);%>
    
    <%List<FornecedorBean> fornecedores = new FornecedorDAO().obterTodos();%>
    
    <form action="/fornecedor/update" method="post">
        <input type="hidden" name="id" value="<%= fornecedor.getId() %>">
        <div>
            <label for="campo-nome">Nome</label>
            <input type="text" class="form-control" id="campo-nome" name="nome" value="<%= fornecedor.getNome() %>">
        </div>
        <div>
            <label for="campo-cnpj">CNPJ</label>
            <input type="text" class="form-control" id="campo-cnpj" name="cnpj" value="<%= fornecedor.getCnpj() %>">
        </div>
        <div>
            <label for="campo-email">E-mail</label>
            <input type="text" class="form-control" id="campo-email" name="email" value="<%= fornecedor.getEmail() %>">
        </div>
        <div>
            <label for="campo-telefone">Telefone</label>
            <input type="text" class="form-control" id="campo-telefone" name="telefone" value="<%= fornecedor.getTelefone() %>">
        </div>
        
        <div>
        <input class="btn btn-success"  type="submit" value="Alterar">
        </div>
        
</form>


<%@include file="../master/rodape.jsp"%>