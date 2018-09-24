<%-- 
    Document   : login
    Created on : 27/08/2018, 09:19:07
    Author     : Alunos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>

        <link rel="stylesheet" type="text/css" href="jsp/login/loginCss.css" />

        
    </head>
    <body>
       <div class="login">
	<h1>Login</h1>
    <form method="post">
    	<input type="text" name="u" placeholder="Usuário" required="required" />
        <input type="password" name="p" placeholder="Senha" required="required" />
        <div class="forgot" id = "register">
        <a href="reset.html">Esqueceu a senha?</a>
        
        <a href="reset.html" id = "register">Não possui um cadastro?</a>
        </div> 
        <button type="submit" class="btn btn-primary btn-block btn-large">Entrar</button>
        
        
    
    </form>
</div>
    </body>
</html>
