<%-- 
    Document   : index
    Created on : 28/08/2018, 10:48:54
    Author     : Patrick Nacimento
--%>

<%@page import="java.util.List"%>
<%@page import="br.com.projeto.bean.ProdutoBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../master/master.jsp"%>

<%%>
<div class="botao-novo-produto">
    <a class="btn btn-success float-right" href="/produtos/cadastro">Novo Produto <i class="fas fa-plus-square"></i></a>
</div>

<div id="tabela">
    <table class="table table-hover table-bordered" id="produtos-index">
        <thead class="thead-light">
            <tr>
                <%--<th>#</th>--%>
                <th>Categoria</th>
                <th>Nome</th>
                <th>Preço</th>
                <th>Quantidade</th>
                    <%--<th>Quantidade</th>--%>
                <th> <i class="fas fa-cogs"></i></th>
            </tr>
        </thead>
        <tbody>
        </tbody>
    </table>
</div>
        
<div class="form form-group">
    <input class="btn btn-outline-success float-right" type="button" id="exportar" value="Exportar Tabela">
</div>


<%@include file="../master/rodape.jsp"%>