<%-- 
    Document   : estatistica
    Created on : 18/09/2018, 08:10:40
    Author     : Patrick
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../master/master.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>E-Stock</title>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
        
</head>
<body>
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

        <div class="content-wrapper">
           <div style="float: left;">

    <!-- Start Canvas -> Desenhar elementos gráficos -->
    <canvas class="myChart" style="width: 200; height: 400px;"> </canvas>
    
    </div>
    
    <script>
        var ctx = document.getElementsByClassName("myChart");

        //type, Data e options
        var chartgraph = new Chart(ctx,{
            type:'bar',
            data: {
                labels: ["Alimentos", "Vestuário", "Eletrônicos", "Acessórios", "Carros" ],
                datasets: [{
                    label: "Vendidos",
                    data : [4,7,15,11,3],
                    borderWidth: 6,
                    borderColor: 'black',
                    backgroundColor:'#edf900'
                }]
            },

            option:{
                responsive:true,
                layout:{
                    padding:{
                        left:50,
                        righ:0,
                        top:0,
                        bottom:0
                    }
                }
            }

        });



    </script>
            </div>
        </div> <!-- .content-wrapper -->
    </main>
</div>

</body>
</html>

<%@include file="../master/rodape.jsp" %>
