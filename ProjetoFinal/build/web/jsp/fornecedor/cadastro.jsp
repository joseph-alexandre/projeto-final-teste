<%--
    Document   : cadastro
    Created on : 23/08/2018, 11:26:21
    Author     : Alunos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../master/master.jsp" %>
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
                    <a href="/funcionarios">Funcionários</a>

                    <ul>
                        
                        <li><a href="/funcionario/cadastro">Cadastrar funcionário</a></li>

                    </ul>
                </li>
                <li class="has-children fornecedores">
                    <a href="/fornecedor">Fornecedores</a>

                    <ul>
                        
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
            </div>
        </div> <!-- .content-wrapper -->
    </main>
</div>

<%@include file="../master/rodape.jsp" %>
