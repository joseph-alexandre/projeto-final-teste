<%-- 
    Document   : add
    Created on : 04/09/2018, 07:40:03
    Author     : Alunos
--%>

<%@page import="br.com.projeto.dao.ProdutoDAO"%>
<%@page import="br.com.projeto.bean.ProdutoBean"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../master/master.jsp" %>

<%List<ProdutoBean> produtos = new ProdutoDAO().obterTodos(); %>

<form action="/estoque/store" method="post">
<div class="form-group">
    <label for="campo-entrada-saida">Entrada / Saída</label>
    <select id="campo-entrada-saida" name="tipo">
        <option value="entrada">Entrada</option>
        <option value="saida">Saída</option>
    </select>
</div>
<div>
    <label for="campo-nome">Selecionar produto:</label>
    <select id="campo-nome" name="produto">
        
        <option selected = 'selected' disabled='disable'></option>

        <% for(ProdutoBean produto : produtos){%>
        <option value=<%=produto.getId()%><%=produto.getNome()%>></option>
        <%}%>
 
    </select>
</div>
    <input type='submit' value='Adicionar' >
</form>


<%@include file="../master/rodape.jsp" %>
