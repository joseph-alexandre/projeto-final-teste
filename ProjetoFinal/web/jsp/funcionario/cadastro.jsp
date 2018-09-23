<%-- 
/**
* @author Patrick Otavio do Nacimento(patricknascimento198@gmail.com)
* @date 2018-08-24
*/
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../master/master.jsp" %>

<form id="validacao-form-func" action="/funcionarios/store" method="POST">

    <div>
        <label for='campo-login'>Novo Login</label>
        <input type="text" id="campo-login" name='login' placeholder="Login" required="required" onfocusout="validadarCampoLogin">

        <label for="campo-senha">Novo Senha</label>
        <input type="text" id="campo-senha" name="senha" placeholder="Senha" required="required" onfocusout="validarCampoSenha">
    </div>

    <div class = "form-group">
        <label for='campo-nome'><i class=''></i> Nome Completo</label>
        <input type='text' id='campo-nome' name='nome' placeholder='Nome'>
    </div>

    <div class = "form-group">
        <label for='campo-cpf'><i class=''></i> CPF</label>
        <input type='text' id='campo-cpf' name='cpf' placeholder='CPF'>
    </div>

    <div class = "form-group">
        <label for='campo-email'><i class=''></i> E-mail</label>
        <input type='text' id='campo-email' name='email' placeholder='E-mail'>
    </div>

    <div class = "form-group">
        <label for='campo-telefone'><i class=''></i> Telefone</label>
        <input type='text' id='campo-telefone' name='telefone' placeholder='Telefone'>
    </div>

    <div class = "form-group">
        <label for='campo-funcao'><i class=''></i> Função</label>
        <input type='text' id='campo-funcao' name='funcao' placeholder='Função'>
    </div>

    <div>
        <label for='campo-cep'><i class=''></i> CEP</label>
        <input type='text' id='campo-cep' name='cep' placeholder='CEP'>
    </div>

    <div>
        <label for='campo-estado'>Estado</label>
        <input type='text' id='campo-estado' name='estado' placeholder='Estado' onfocusout='processarCep()' >
    </div>

    <div>
        <label for='campo-logradouro'><i class=''></i> Rua</label>
        <input type='text' id='campo-logradouro' name='rua' placeholder='Rua'  >
    </div>

    <div>
        <label for='campo-bairro'><i class=''></i> Bairro</label>
        <input type='text' id='campo-bairro' name='bairro' placeholder='Bairro'>
    </div>

    <div>
        <label for='campo-cidade'><i class=''></i> Cidade</label>
        <input type='text' id='campo-cidade' name='cidade' placeholder='Cidade'>
    </div> 

    <div>
        <label for='campo-numero'><i class=''></i> Numero</label>
        <input type='text' id='campo-numero' name='numero' placeholder='Numero'>
    </div>

    <input class='btn btn-sucess' type='submit' value='Cadastrar'>
   
</form>

<%@include file="../master/rodape.jsp" %>