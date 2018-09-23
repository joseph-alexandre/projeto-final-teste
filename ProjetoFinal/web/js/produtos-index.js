$(function () {
    $("#produtos-index").DataTable({
        "ajax": "/produtos/obterparadatatable",
        "columns": [
            {"data": "id_categoria"},
            {"data": "nome"},
            {"data": "preco"},
            {
                "data": null,
                "render": function (data) {
                    return  "<a class='btn btn-info'  href='/produtos/editar?id=" + data.id + "'><i class='fas fa-edit'></i> Editar</a>"
                    "<a class='btn btn-danger' href='/produtos/excluir?id=" + data.id + "'><i class='fas fa-trash-alt'></i> Excluir</a>"
                    //caminho do icone para editar na coluna funcionario
                }
            }
        ]
    });

});
