<%-- 
/**
* @author Patrick Otavio do Nacimento(patricknascimento198@gmail.com)
* @date 2018-08-24
*/
--%>
<%-- 
    Document   : inicial
    Created on : 31/08/2018, 11:11:02
    Author     : Alunos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div id="target" style="overflow: auto; width: auto; height: auto;">
    <header class="cd-main-header">
        <a href="/home" class="cd-logo"><img src="../componentes/tema/box-logo-oficial.png" alt="Logo"></a>

        <div class="cd-search is-hidden">
            <form method="get" action="http://www.google.com/search">
                <input type="text"   name="q" value="Search..."
                       onfocus="if (this.value == this.defaultValue)
            this.value = '';
        this.style.color = 'white';" onblur="if (this.value == '')
                    this.value = this.defaultValue;
                "/>

            </form>
        </div> <!-- cd-search -->

        <a href="#0" class="cd-nav-trigger">Menu<span></span></a>


        <nav class="cd-nav">
            <ul class="cd-top-nav">
                <li><a href="#0">Suporte</a></li>

                <li class="has-children account">
                    <a href="#0">
                        <img src="../componentes/tema/person-flat.png" alt="avatar">
                        Perfil
                    </a>

                    <ul>

                        <li><a href="#0">Meu Perfil</a></li>
                        <li><a href="#0">Editar Perfil</a></li>
                        <li><a href="#0">Sair</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
    </header> <!-- .cd-main-header -->

    <main class="cd-main-content">
        <nav class="cd-side-nav">
            <ul>
                <li class="cd-label">Principal</li>
                <li class="has-children home">
                    <a href="/home">Home</a>

                </li>
                <li class="has-children produtos">
                    <a href="/produtos">Produtos</a>

                    <ul>
                        
                        <li><a href="/produtos/cadastro">Cadastrar produto</a></li>
                        <li><a href="/categoria/cadastro">Cadastrar categoria</a></li>
                    </ul>
                </li>

                <li class="has-children estoque">
                    <a href="/estoque">Estoque</a>


                </li>
                <li class="has-children vendas">
                    <a href="#0">Vendas</a>


                </li>
            </ul>

            <ul>
                <li class="cd-label">Secundário</li>
                <li class="has-children funcionarios">
                    <a href="#0">Funcionários</a>

                    <ul>
                        <li><a href="/funcionarios">Todos os funcionários</a></li>
                        <li><a href="/funcionario/cadastro">Cadastrar funcionário</a></li>

                    </ul>
                </li>
                <li class="has-children fornecedores">
                    <a href="#0">Fornecedores</a>

                    <ul>
                        <li><a href="/fornecedor">Todos os fornecedores</a></li>
                        <li><a href="/fornecedor/cadastro">Cadastrar fornecedor</a></li>
                    </ul>
                </li>

                <li class="has-children estatistica">
                    <a href="/visaogeral">Estatísticas</a>

                    
                </li>
            </ul>

            <ul>
                <li class="cd-label">Utilitários</li>
                <li class="action-btn"><a href="#0">Adicionar Tarefa</a></li>
            </ul>
        </nav>

        <div class="content-wrapper-estoque">
            <form id="validacao-form-func" action="/funcionarios/store" method="POST">

    <div class="form-group">
        <label for='campo-login'>Novo Login</label>
        <input type="text" class="form-control" id="campo-login" name='login' placeholder="Login" onfocusout="validadarCampoLogin">
    </div>
    <div class="form-group">
        <label for="campo-senha">Nova Senha</label>
        <input type="password" class="form-control" id="campo-senha" name="senha" placeholder="Senha" required="required" onfocusout="validarCampoSenha">
    </div>
    <div class="form-group">
        <label for='campo-nome'><i class=''></i> Nome Completo</label>
        <input type='text' class="form-control" id='campo-nome' name='nome' placeholder='Nome'>
    </div>

    <div class = "form-group">
        <label for='campo-cpf'><i class=''></i> CPF</label>
        <input type='text' class="form-control" id='campo-cpf' name='cpf' placeholder="CPF">
    </div>

    <div class = "form-group">
        <label for='campo-email'><i class=''></i> E-mail</label>
        <input type='email' class="form-control" id='campo-email' name='email' placeholder='E-mail'>
    </div>

    <div class = "form-group">
        <label for='campo-telefone'><i class=''></i> Telefone</label>
        <input type='text' class="form-control" id='campo-telefone' name='telefone' placeholder='Telefone'>
    </div>

    <div class = "form-group">
        <label for='campo-funcao'><i class=''></i> Função</label>
        <input type='text' class="form-control" id='campo-funcao' name='funcao' placeholder='Função'>
    </div>

    <div class="form-group">
        <label for='campo-cep'><i class=''></i> CEP</label>
        <input type='text' class="form-control" id='campo-cep' name='cep' placeholder='CEP'>
    </div>

    <div class="form-group">
        <label for='campo-estado'>Estado</label>
        <input type='text' class="form-control" id='campo-estado' name='estado' placeholder='Estado' onfocusout='processarCep()' >
    </div>

    <div class="form-group">
        <label for='campo-logradouro'><i class=''></i> Rua</label>
        <input type='text' class="form-control" id='campo-logradouro' name='rua' placeholder='Rua'  >
    </div>

    <div class="form-group">
        <label for='campo-bairro'><i class=''></i> Bairro</label>
        <input type='text' class="form-control" id='campo-bairro' name='bairro' placeholder='Bairro'>
    </div>

    <div class="form-group">
        <label for='campo-cidade'><i class=''></i> Cidade</label>
        <input type='text' class="form-control" id='campo-cidade' name='cidade' placeholder='Cidade'>
    </div> 

    <div class="form-group">
        <label for='campo-numero'><i class=''></i> Numero</label>
        <input type='text' class="form-control" id='campo-numero' name='numero' placeholder='Numero'>
    </div>

    <input class='btn btn-sucess' type='submit' value='Cadastrar'>

</form>

            
            </div>
        </div> <!-- .content-wrapper -->
    </main>
</div>


<%@include file="../master/rodape.jsp" %>

<%@include file="../master/master.jsp" %>