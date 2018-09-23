<%--
/**
* @author Patrick Otavio do Nacimento(patricknascimento198@gmail.com)
* @date 2018-08-24
*/
--%>

<%@page import="br.com.projeto.dao.ProdutoDAO"%>
<%@page import="br.com.projeto.bean.ProdutoBean"%>
<%@page import="java.util.List"%>
<%@page import="br.com.projeto.dao.EstoqueDAO"%>
<%@page import="br.com.projeto.bean.EstoqueBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../master/master.jsp" %>
<%List<EstoqueBean> estoques = new EstoqueDAO().obterTodos(); %>

<a class="btn btn-success float-right" href="/estoque/adicionar">Adicionar</a>
<div>
    <table class="table">
        <thead>
            <th>Tipo</th>    
            <th>Produto</th>    
            <th>ValorUn.</th>    
            <th>Quantidade</th>
            <th>Valor Total</th>
            <th>Acao</th>
        </thead>
        <tbody>
            
            <% for(EstoqueBean estoque : estoques) {%>
	    <tr>
		<td> <%=estoque.getTipo()%> </td>
		<td> <%=estoque.getProduto().getNome()%> </td>
		<td> <%=estoque.getProduto().getPreco() %> </td>
		<td> <%=estoque.getQuantidade()%> </td>
		<td> <% // valor total %> </td>
		<td> <% // açao %> </td>
	    </tr>
            <%}%>
        </tbody>
    </table>
</div>

<%@include file="../master/rodape.jsp" %>
