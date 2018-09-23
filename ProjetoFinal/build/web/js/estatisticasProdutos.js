function grafico(){
    var ctx = document.getElementByClassName(".produtos");
    var chartgraph = new Chart(ctx,{
        type: 'bar',
        data: {
            labels: ["Alimentos", "Vestidos", "Eletrônicos", "Acessórios", "Carros"],
            datasets: [{
                    label: "Vendas",
                    data : [5,7,10,6,3],
                    borderWidth: 6,
                    borderColor: 'black',
                    backgroundColor:'#f442f1'
                    
                    
            }]
        }
   
    });
}
