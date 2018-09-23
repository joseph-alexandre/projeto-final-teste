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
                    <a href="#0">Produtos</a>

                    <ul>
                        <li><a href="/produtos">Todos os produtos</a></li>
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
                <li class="cd-label">Action</li>
                <li class="action-btn"><a href="#0">+ Button</a></li>
            </ul>
        </nav>

        <div class="content-wrapper">
            <!-- conteúdo da página -->
            </div>
        </div> <!-- .content-wrapper -->
    </main>
</div>


<%@include file="../master/rodape.jsp" %>

<%@include file="../master/master.jsp" %>