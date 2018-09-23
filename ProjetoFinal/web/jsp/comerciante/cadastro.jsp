<%-- 
/**
* @author Patrick Otavio do Nacimento(patricknascimento198@gmail.com)
* @author Joseph Alexandre M. M. Freitas(j.alexandremmfreitas@gmail.com)
* @date 2018-08-27
*/
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>

<html>
    <head>
        <link rel="stylesheet" href="../jsp/comerciante/cadastroComercianteCSS.css">
<script type="text/javascript" src="/js/jquery-3.2.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://code.jquery.com/jquery-3.2.1.min.js"
            integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
            crossorigin="anonymous"></script>
        <script src='/js/cadastroComerciante.js'></script>
        
    </head>



    <body>       
        <form action="/comerciante/store" method="post">
        <div class="cadastro">
            <h1>Cadastro</h1>
        </div>

        <div class = "register Scroll">

            <div class="form-group">
                <label for='campo-login' ><i class=''></i> Login</label>
                <input type='text' id='campo-login' name='login' placeholder='Login'>
            </div>
            <div id='div-campo-senha' class='form-group'>
                <label for='campo-senha'>Senha <span class='text-danger font-weight-bold'></span></label>
                <input type='text' id='campo-senha' name='senha' required='required' onfocusout='validarCampoSenha()' placeholder='Senha'>
            </div>
            <div id='div-campo-nome' class='form-group '>
                <label for='campo-nome'>Nome <span class='text-danger font-weight-bold'></span></label>
                <input  type='text' id='campo-nome' name='nome' required='required' onfocusout='validarCampoNome()' placeholder = 'Nome'>
            </div>
            <div id='div-campo-cpf' class='form-group'>
                <label for='campo-cpf'>CPF  <span class='text-danger font-weight-bold'></span></label>
                <input  type='text' id='campo-cpf' name='cpf' required='required' onfocusout='validarCampoCpf()' placeholder ='CPF'>
            </div>
            <div class="form-group">
                <label for='campo-email'><i class=''></i> E-mail</label>
                <input type='text' id='campo-email' name='email'required='required' onfocusout='validarCampoEmail()' placeholder='E-mail'>
            </div>
            <div class="form-group">
                <label for='campo-telefone'><i class=''></i> Telefone</label>
                <input type='text' id='campo-telefone' name='telefone'required='required' onfocusout='validarCampoTelefone()' placeholder='(47)3333-3333'>
            </div>
            <div class="form-group">
                <label for='campo-cep'><i class=''></i> CEP</label>
                <input type='text' id='cep' name='cep' placeholder='CEP' required='required'  >
            </div>
            <div class="form-group">
                <label for='logradouro'><i class=''></i> Rua</label>
                <input type='text' id='logradouro' name='rua' placeholder='Rua'  >
            </div>
            <div class="form-group">
                <label for='campo-numero'><i class=''></i> Número</label>
                <input type='tel' id='campo-numero' name='numero' required='required' onfocusout='validarCampoNumero()'placeholder='Número'>
            </div>
            <div class="form-group">
            <label for='campo-bairro'><i class=''></i> Bairro</label>
             <input type='text' id='bairro' name='bairro' placeholder='Bairro'>
         </div>

            <div class="form-group">
                <label for='campo-cidade'><i class=''></i> Cidade</label>
                <input type='text' id='cidade' name='cidade' placeholder='Cidade' onfocusout='processarCep()' >
            </div>
            <div class="form-group">
                <label for='campo-estado'>Estado</label>
                <input type='text' id='campo-estado' name='estado' placeholder='Estado' onfocusout='processarCep()' >
            </div>

            <button type="submit" class="btn btn-primary btn-block btn-large">Cadastrar</button>
        </div>

        
    </form>
</body>
</html>


