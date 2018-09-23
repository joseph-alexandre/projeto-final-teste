<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link rel="stylesheet" type="text/css" href="jsp/login/loginCSS.css" />
    </head>
    <body>
        <div class="login">
            <h1>Login</h1>
            <form method="post" action="/usuario/login">
                <input type="text" name="login" placeholder="Usuário" required="required" />
                <input type="password" name="senha" placeholder="Senha" required="required" />
                <button type="submit" class="btn btn-primary btn-block btn-large">Entrar</button>
                <div class="forgot" id = "register">
                    <a href="reset.html">Esqueceu a senha?</a>

                    <a href="/Cadastro" id = "register">Não possui um cadastro?</a> 
                </div> 
            </form>
        </div>
    </body>
</html>