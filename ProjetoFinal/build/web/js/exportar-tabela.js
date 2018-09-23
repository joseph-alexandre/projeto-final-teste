/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$("#exportar").click(function (e) {
    e.preventDefault();
    $("#tabela ").table2excel({
        exclude: ".excludeThisClass",
        name: "Worksheet Name",
        fileext: ".xls",
        filename: "Lista de Produtos", //do not include extension,
        exclude_links: true
            
    });

});

