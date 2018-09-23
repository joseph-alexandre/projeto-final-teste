/* 
 produtos-cadastro
 */
function validarFormulario() {
    if (validarCampoCategoria() == null || validarCampoNome() == false
            || validarCampoQuantidade() == false || validarCampoPreco() == false) {
        event.preventDefault();
    }
}

function validarCampoCategoria() {
    var categoria = document.getElementById("campo-categoria").value;

}

function validarCampoNome() {
    var nome = document.getElementById("campo-nome").value;
    var quantidadeDeCaracteres = nome.length;

    apagarElementoSeExiste("span-campo-nome-menor-3");

    if (quantidadeDeCaracteres < 3) {
        gerarSpan("span-campo-nome-menor-3",
                "Nome do produto deve ser maior que 3",
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

function validarCampoQuantidade() {
    var quantidade = document.getElementById("campo-quantidade").value;
}

function validarCampoPreco() {

    var preco = document.getElementById("campo-preco").value;


}

function apagarClasse(id, classeCor) {
    document.getElementById(id).classList.remove(classeCor);
}

function adicionarClasse(id, classeCor) {
    document.getElementById(id).classList.remove(classeCor);
}

function apagarElementoSeExiste(id) {
    if (document.contains(document.getElementById(id))) {
        document.getElementById(id).remove();
    }
}

function gerarSpan(id, preco) {
    var span = document.createElement("span");
    span.id = id;
    span.textContent = texto;
    span.classList.add("text-danger");
    span.classList.add("font-weight-bold");
    document.getElementById(preco).appendChild(span);

}
