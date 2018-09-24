<%-- 
    Document   : index
    Created on : 24/08/2018, 09:51:28
    Author     : Patrick Nacimento
--%>

<%@page import="br.com.projeto.dao.FornecedorDAO"%>
<%@page import="br.com.projeto.bean.FornecedorBean"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../master/master.jsp"%>
<%List<FornecedorBean> fornecedores = new FornecedorDAO().obterTodos();%>

<div class="botao-novo-fornecedor">
    <a class="btn btn-success float-right" href="/fornecedor/cadastro">Novo Fornecedor <i class="fas fa-plus-square"></i></a>
</div>

    <table class="table table-hover table-bordered">
    <thead class="thead-light">
        <tr>
            <th>#</th>
            <th>Nome</th>
            <th>CNPJ</th>
            <th>Telefone</th>
            <th>E-mail</th>
            <th> <i class="fas fa-cogs"></i></th>
        </tr>
    </thead>
    <tbody>
        <%for (FornecedorBean fornecedor : fornecedores) {%>
        <tr>
            <td> <%=fornecedor.getId()%></td>
            <td> <%=fornecedor.getNome()%> </td>
            <td> <%=fornecedor.getCnpj()%> </td>
            <td> <%=fornecedor.getTelefone()%></td>
            <td> <%=fornecedor.getEmail()%></td>
            <td> 
                <a class="btn btn-info" href="/fornecedor/editar?id=<%=fornecedor.getId()%>"><i class="fas fa-edit"></i>Editar</a>
                <a class="btn btn-danger" href="/fornecedor/excluir?id=<%=fornecedor.getId()%>"><i class="fas fa-trash-alt"></i> Excluir</a>
            </td>
        </tr>
        <%}%>
    </tbody>
</table>

<%@include file="../master/rodape.jsp" %>