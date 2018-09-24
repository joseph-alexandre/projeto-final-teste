<%-- 
    Document   : index
    Created on : 28/08/2018, 10:48:54
    Author     : Patrick Nacimento
--%>

<%@page import="java.util.List"%>
<%@page import="br.com.projeto.bean.ProdutoBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../master/master.jsp"%>


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
    </header>  
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
		<a class="btn btn-success float-right" href="/estoque/adicionar">Adicionar</a>
<div>
    

<%@include file="../master/rodape.jsp"%>