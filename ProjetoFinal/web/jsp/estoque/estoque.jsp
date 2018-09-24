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

    <div class="content-wrapper-estoque">
       <table class="table table-hover dataTable" id="estoque-index">
    <thead class="thead-light">
            <thead class="thead-light">
            <tr>
            <th scope="col">Tipo</th>       
             <th scope="col">Produto</th>    
             <th scope="col">ValorUn.</th>    
             <th scope="col">Quantidade</th>
             <th scope="col">Valor Total</th>
             <th scope="col">Acao</th>
             <th scope="col"><i class="fas fa-cogs"></i></th>
            </thead>

</table>

        </div> <!-- .content-wrapper -->
    </main>
</div>

<%@include file="../master/master.jsp" %>
<%@include file="../master/rodape.jsp" %> 
<%@include file="../master/rodape.jsp" %>
