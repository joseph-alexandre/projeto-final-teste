<%--
    Document   : cadastro
    Created on : 23/08/2018, 11:26:21
    Author     : Alunos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../master/master.jsp" %>
<form action="/fornecedor/store" method="post">
    
    <div class="form-group">
        <label for='campo-nome'><i class=''></i> Nome</label>
        <input type='text' id='campo-nome' name='nome' placeholder='Nome'>
    </div>
    <div class="form-group">
        <label for='campo-cnpj'><i class='fa fa-address-card-o'></i> CNPJ</label>
        <input type='text' id='campo-cnpj' name='cnpj' placeholder='CNPJ'>
    </div>
    <div class="form-group">
        <label for='campo-email'><i class=''></i> E-mail</label>
        <input type='email' id='campo-email' name='email' placeholder='E-mail'>
    </div>
    <div class="form-group">
        <label for='campo-telefone'><i class=''></i> Telefone</label>
        <input type='text' id='campo-telefone' name='telefone' placeholder='Telefone'>
    </div>
        <input type="submit" value="Novo Fornecedor">
</form>
<%@include file="../master/rodape.jsp" %>
