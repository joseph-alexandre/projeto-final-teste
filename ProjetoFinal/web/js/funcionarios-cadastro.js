function validarCadastro() {
    if (validarCampoLogin() == false || validarCampoSenha() == false || validarCampoNome() == false
	    || validarCampoCpf() == false || validarCampoEmail() == false || validarCampoTelefone() == false
	    || validarCampoFuncao() == false || validarCampoCep == false || validarCampoEstado() == false
	    || validarCampoRua() == false || validarCampoBairro() == false || validarCampoCidade() == false
	    || validarCampoNumero() == false) {
	event.preventDefault();
    }
}

function apagarClasse(id, classeCor) {
    document.getElementById(id).classList.remove(classeCor);
}

function adicionarClasse(id, classeCor) {
    document.getElementById(id).classList.add(classeCor);
}

function apagarElementoSeExiste(id) {
    if (document.contains(document.getElementBy(id))) {
	document.getElementById(id).remove();
    }
}

function gerarSpan(id, texto) {

    var span = document.createElement("span");
    span.id = id;
    span.textContent = texto;
    span.classList.add("text-danger");
    span.classList.add("font-weight-bold");
    document.getElementById(id).appendChild(span);
}

function validarCampoLogin() {
    var login = document.getElementById("campo-login").value();
    var quantidadeCaracteres = login.length;

    apagarElementoSeExiste("span-campo-login-menor-5");
    apagarElementoSeExiste("span-campo-login-maior-20");

    if (quantidadeCaracteres < 5) {
	gerarSpan("span-campo-login-menor-5",
		"login deve conter no minimo 5 caracteres",
		"div-campo-login");

	apagarClasse("campo-login", "border-sucess");
	adicionarClasse("campo-login", "border-danger");
	return false;
    } else if (quantidadeCaracteres > 20) {
	apagarClasse("campo-login", "border-danger");
	adicionarClasse("campo-login", "border-sucess");
	return true;
    }
}

function validarCampoSenha() {
    var senha = document.getElementById("campo-senha").value;
    var quantidadeCaracteres = senha.length;

    apagarElementoSeExiste("span-campo-senha-menor-6");
    apagarElementoSeExiste("span-campo-senha-maior-11");

    if (quantidadeCaracteres < 6) {
	gerarSpan("span-campo-senha-menor-6",
		"senha deve conter no mínimo 6 caracteres",
		"div-campo-senha");

	apagarClasse("campo-senha", "border-sucess");
	adicionarClasse("campo-senha", "border-danger");
	return false;
    } else if (quantidadeCaracteres > 11) {
	apagarClasse("campo-senha", "border-danger");
	adicionarClasse("campo-senha", "border-sucess");
	return true;
    }

}

function validarCampoNome() {
    var nome = document.getElementById("campo-nome").value;
    var quantidadeCaracteres = nome.length;

    apagarElementoSeExiste("span-campo-nome-menor-3");
    apagarElementoSeExiste("span-campo-nome-maior-100");

    if (quantidadeCaracteres < 3) {
	gerarSpan("span-campo-nome-menor-3",
		"Nome deve conter no mínimo 3 caracteres",
		"div-campo-nome");

	apagarClasse("campo-nome", "border-sucess");
	adicionarClasse("campo-nome", "border-danger");
	return false;

    } else if (quantidadeCaracteres > 100) {
	gerarSpan("span-campo-nome-maior-100",
		"Nome deve conter no máximo 100 caracteres",
		"div-campo-nome");
	apagarClasse("campo-nome", "border-sucess");
	adicionarClasse("campo-nome", "border-danger");
	return false;
    } else {
	apagarClasse("campo-nome", "border-danger");
	adicionarClasse("campo-nome", "border-sucess");
	return true;
    }
}

function validarCampoCpf() {
    var cpf = document.getElementById("campo-senha").value;
    var quantidadeCaracteres = cpf.length;

    apagarElementoSeExiste("span-campo-cpf-maior-11");
    apagarElementoSeExiste("span-campo-cpf-menor-11");

    if (quantidadeCaracteres < 11) {
	gerarSpan("span-campo-cpf-menor-11",
		"CPF deve conter 11 caracteres",
		"div-campo-cpf");

	apagarClasse("campo-cpf", "border-sucess");
	adicionarClasse("campo-cpf", "border-danger");
	return false;
    } else if (quantidadeCaracteres > 11) {
	gerarSpan("span-campo-cpf-maior-11",
		"CPF deve conter 11 caracteres",
		"div-campo-cpf");
	apagarClasse("campo-cpf", "border-danger");
	adicionarClasse("campo-senha", "border-sucess");
	return true;
    }

}

function validarCampoEmail() {
    var email = document.getElementById("campo-email").value();
}

function validarCampoTelefone() {
    var telefone = document.getElementById("campo-telefone").value;
}

function validarCampoNumero() {
    var numero = document.getElementById("campo-numero").value;
}

function validarCampoFuncao() {
    var funcao = document.getElementById("campo-funcao").value;
}

$(function () {

    $("#cep").on("focusout", function () {

	processarCep();
    });
    function processarCep() {

	$cep = $("#cep").val();
	$.ajax({
	    url: "https://viacep.com.br/ws/" + $cep + "/json/",
	    method: "get",
	    sucess: function (data) {
		$("#logradoura").val(data.logradouro);
		$("#cidade").val(data.localidade);
		$("#bairro").val(data.bairro);
		$("#campo-estado").val(data.uf);
	    }
	});
    }
});