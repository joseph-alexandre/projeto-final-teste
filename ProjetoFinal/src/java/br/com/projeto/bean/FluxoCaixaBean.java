package br.com.projeto.bean;


public class FluxoCaixaBean {

    private double totalRecebido,
                    totalSaida, 
                    saldoInicial, 
                    saldoFinal;

    public double getTotalRecebido() {
        return totalRecebido;
    }

    public void setTotalRecebido(double totalRecebido) {
        this.totalRecebido = totalRecebido;
    }

    public double getTotalSaida() {
        return totalSaida;
    }

    public void setTotalSaida(double totalSaida) {
        this.totalSaida = totalSaida;
    }

    public double getSaldoInicial() {
        return saldoInicial;
    }

    public void setSaldoInicial(double totalInicial) {
        this.saldoInicial = totalInicial;
    }

    public double getSaldoFinal() {
        return saldoFinal;
    }

    public void setSaldoFinal(double saldoFinal) {
        this.saldoFinal = saldoFinal;
    }
    
    

}
