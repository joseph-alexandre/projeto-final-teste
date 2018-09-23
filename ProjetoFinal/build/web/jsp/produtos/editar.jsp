<%-- 
    Document   : editar
    Created on : 03/09/2018, 09:20:22
    Author     : Logan Michel
--%>


<%@page import="br.com.projeto.dao.CategoriaDAO"%>
<%@page import="java.util.List"%>
<%@page import="br.com.projeto.bean.CategoriaBean"%>
<%@page import="br.com.projeto.dao.ProdutoDAO"%>
<%@page import="br.com.projeto.bean.ProdutoBean"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../master/master.jsp"%>
<%
    int id = Integer.parseInt(request.getParameter("id"));
    ProdutoBean produto = new ProdutoDAO().obterPeloId(id);%>

<%List<CategoriaBean> categorias = new CategoriaDAO().obterTodos();%>

<form action="/produtos/update" method="post">
    <input type="hidden" name="id" value="<%= produto.getId()%>">
    <div>
        <label for="campo-categoria">Categoria</label>
        <select type="text" class="form-control" id="campo-categoria" name="categoria" required="required" >

            <% for (CategoriaBean categoria : categorias) {%>

            <% if (categoria.getId() == produto.getIdCategoria()) {%>
            <option value=<%= categoria.getId()%> selected='selected'><%=categoria.getNome()%></option>
            <% } else {%>
            <option value=<%= categoria.getId() %>><%=categoria.getNome()%></option>
            <% } %>
            <% } %>

        </select>
    </div>
    <div>
        <label for="campo-nome">Nome</label>
        <input type="text" class="form-control" id="campo-nome" name="nome" value="<%= produto.getNome()%>">
    </div>
    <%--<div>
        <label for="campo-quantidade">Quantidade</label>
        <input type="number" id="campo-quantidade" name="quantidade" value="<%= produto.getQuantidade() %>">
    </div>--%>
    <div>
        <label for="campo-preco">Preço</label>
        <input type="text" class="form-control" id="campo-preco" name="preco" value="<%= produto.getPreco()%>">
    </div>

    <div>
        <input class="btn btn-success"  type="submit" value="Alterar">
    </div>
</form>

<%@include file="../master/rodape.jsp"%>